#include "arch/arch.h"

#include "thirdparties/stivale2.h"
#include "freestanding.h"
#include "log/log.h"
#include "thirdparties/stivalemgr.h"
#include "tables/gdt.h"
#include "tables/idt.h"
#include "interrupts/kernel_exceptions.h"
#include "pmm/pmm.h"
#include "vmm/vmm.h"
#include "intel/cpuinfo.h"
#include "intel/asm.h"
#include "UEFI/RSDT.h"
#include "SMP/SMP.h"
#include "UEFI/APIC.h"
#include "tasking/tasking.h"
#include "interrupts/defined_interrupts.h"
#include "interface_struct/interface_struct.h"
#include "syscall-enabling/syscall.h"
#include "init/initfs.h"

void enable_ints(){
    asm volatile("sti");
}

void disable_ints(){
    asm volatile("cli");
}

void halt(){
    HALT();
}

void enable_mapping(mapping_t mapping){
    asm volatile("mov cr3, %0" :: "a"(mapping));
}

mapping_t get_current_mapping(){
    uint64_t to_return;
    asm volatile("mov %0, cr3" : "=a"(to_return) :);
    return (mapping_t)to_return;
}

static interface_struct interface = {0};

interface_struct *bootstrap_arch(void* structure){

    struct stivale2_struct* stivale2_struct = (struct stivale2_struct*)structure;

    struct stivale2_struct_tag_framebuffer *framebuffer_tag;
    framebuffer_tag = stivale2_get_tag(stivale2_struct, STIVALE2_STRUCT_TAG_FRAMEBUFFER_ID);

    LOG_OK("Booted successfully.")
    LOG_INFO("Stivale2 struct at {x}", stivale2_struct);
    LOG_INFO("Size of Framebuffer : {d} x {d}", framebuffer_tag->framebuffer_width, framebuffer_tag->framebuffer_height);
    LOG_INFO("Framebuffer at {x}", framebuffer_tag->framebuffer_addr);
    
    struct stivale2_struct_tag_memmap * memmap_tag = stivale2_get_tag(stivale2_struct, STIVALE2_STRUCT_TAG_MEMMAP_ID);
    LOG_INFO("Memory map at {x}, has {d} entries.", memmap_tag, memmap_tag->entries);

    struct stivale2_struct_tag_smp* smp_infos;
    smp_infos = stivale2_get_tag(stivale2_struct, STIVALE2_STRUCT_TAG_SMP_ID);
    smp_infos = physical_to_stivale(smp_infos);

    ASSERT(smp_infos->cpu_count > 0, "CPU count is {d}, at addr {x}", "CPU count is {d}, at addr {x}", smp_infos->cpu_count, (uintptr_t)smp_infos);

    struct stivale2_struct_tag_modules* modules_tag = stivale2_get_tag(stivale2_struct, STIVALE2_STRUCT_TAG_MODULES_ID);
    LOG_OK("Modules at {x}, has {d} entries.", modules_tag, modules_tag->module_count);
    for(size_t i = 0; i < modules_tag->module_count; i++){
        struct stivale2_module* module = modules_tag->modules + i;
        LOG_INFO("Module {d} : {s}", i, module->string);
        // for(volatile size_t i = 0; i < 0x20; i++)
        //     LOG_OK("{x}", *(uint8_t*)(module->begin + i));
        // PANIC("");
        register_new_file(physical_to_stivale(module->string), (uintptr_t)physical_to_stivale(module->begin), (uintptr_t)physical_to_stivale(module->end));
    }

    struct stivale2_struct_tag_rsdp * rsdp_tag = stivale2_get_tag(stivale2_struct, STIVALE2_STRUCT_TAG_RSDP_ID);
    parse_RSDP(rsdp_tag->rsdp);
    setup_gdt();
    setup_idt();

    attach_kernel_exceptions();

    cpu_abilities* cpuinfos = get_cpu_info();
    UNUSED_VAR(cpuinfos);

    set_memory_map(memmap_tag);

    uint64_t size = get_size_in_bits(ARCH_PAGE_SIZE);

    uintptr_t first_frame = get_frame();
    
    for(size_t i = 0; i < size/ARCH_PAGE_SIZE; i++)
       get_frame();
    
    init_pmm((uintptr_t)physical_to_stivale(first_frame));
    init_vmm();
    LOG_ERR("plouf");

    asm volatile("mov cr3, %0"::"a"(create_page_directory()));
    LOG_OK("Page directory created and loaded successfully.");

    setup_context_frame();
    
    extern void enable_sse(void);
    enable_sse();
    

    parse_RSDT();
    enable_APIC();
    init_APIC_interrupt(); // I don't know why it is working, but it is working.
    init_APIC_timer(); 

    asm volatile("sti");

    syscall_initialize();

    launch_APs(smp_infos, interface.launching_addresses);

    while (get_booted_cpus_count() != smp_infos->cpu_count);
    LOG_OK("All CPUs booted successfully ! ({d} cores)", get_booted_cpus_count());

    interface.core_number = smp_infos->cpu_count;
    for(size_t i = 0; i < 32; i++)
        interface.launching_addresses[i] = (void*)1;

    return &interface;

}