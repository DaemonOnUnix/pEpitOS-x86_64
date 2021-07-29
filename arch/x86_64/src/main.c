#include "thirdparties/stivale2.h"
#include "freestanding.h"
#include "log/log.h"
#include "string/string.h"
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

void _start(struct stivale2_struct *stivale2_struct) {

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


    struct stivale2_struct_tag_rsdp * rsdp_tag = stivale2_get_tag(stivale2_struct, STIVALE2_STRUCT_TAG_RSDP_ID);
    parse_RSDP(rsdp_tag->rsdp);
    setup_gdt();
    setup_idt();

    attach_kernel_exceptions();

    cpu_abilities* cpuinfos = get_cpu_info();

    set_memory_map(memmap_tag);

    uint64_t size = get_size_in_bits(ARCH_PAGE_SIZE);

    uintptr_t first_frame = get_frame();
    
    for(size_t i = 0; i < size/ARCH_PAGE_SIZE; i++)
       get_frame();
    
    init_pmm((uintptr_t)physical_to_stivale(first_frame));
    init_vmm();

    asm volatile("mov cr3, %0"::"a"(create_page_directory()));
    LOG_OK("Page directory created and loaded successfully.");
    // kmmap(craft_addr(21, 21, 21, 21, 21), 0xF, 2);
    // char* a = (char*)craft_addr(21, 21, 21, 21, 21);
    
    // kmmap(0xffdeadbeef, 0xF, 2);
    // char* a = (char*)0xffdeadbeef;
    // kmunmap(0xffdeadb000, 0x1000, MEM_TO_UPPER);

    // kmmap(0xffdeadbeef, 0xF, 2);
    // a = (char*)0xffdeadbeef;
    // kmunmap(0xffdeadb000, 0x1000, MEM_TO_UPPER);

    setup_context_frame();
    
    extern void enable_sse(void);
    enable_sse();

    parse_RSDT();
    enable_APIC();
    init_APIC_timer();

    // ASSERT(smp_infos->cpu_count == 2, "CPU count is {d}, at addr {x}", "CPU count is {d}, at addr {x}", smp_infos->cpu_count, (uintptr_t)smp_infos);

    launch_APs(smp_infos);

    // while(1) asm volatile("hlt");

    // a[0] = 5;

    // for(;;){
    //     uintptr_t got_frame = get_frame();
    //     LOG_INFO("New frame at {x}", got_frame);

    // }
    
    
    // get_frame();
    // get_frame();
    // get_frame();

    // LOG_ERR("Testing debug mode");
    // asm volatile("int 127");
    // volatile int b = 3 + 4;
    // volatile int c = 3 * 4;
    // asm volatile("int 127");
    // LOG_ERR("Testing breakpoint.");

    // asm volatile("int 3");
    // LOG_OK("Returned from breakpoint.");

    // asm volatile("jmp %0"::"a"(stivale2_struct));

    LOG_PANIC("Halting... ({d})", get_core_id_cpuid());
    HALT();
}