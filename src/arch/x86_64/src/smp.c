#include "freestanding.h"
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
#include <stdatomic.h>
#include "multicore/lock.h"
#include "UEFI/APIC.h"


// static uint8_t value = 0;
static bool smp_status = 0;
static uint8_t booted_cpus_count = 1;

uint8_t get_booted_cpus_count(){
    return booted_cpus_count;
}

uint32_t get_core_id_(uint32_t* lapic_id){
    static uint32_t id = 0;
    
    ONCE (id);

    LOG_PANIC("PLOUFFFFF");
    
    id = *lapic_id;

    return id;
}

uint32_t id = 0;
void set_core_id(uint32_t lapic_id){
    id = lapic_id;
}

uint32_t get_core_id(){
    return cpuReadLAPIC(0x20) >> 24;
}

CREATE_LOCK(1)
CREATE_LOCK(Bootstrap)

void _start_core(struct stivale2_smp_info* smp_info){
    
    GRAB_LOCK(LOCK_NAME(Bootstrap));
    RELEASE_LOCK(LOCK_NAME(Bootstrap));

    BEGIN_BOTTLENECK(1);

    smp_status = 0;
    
    LOG_INFO("Booting an AP.");

    setup_gdt();
    setup_idt();
    attach_kernel_exceptions();

    asm volatile("mov cr3, %0"::"a"(create_page_directory()));
    setup_context_frame();
    extern void enable_sse(void);
    enable_sse();
    LOG_OK("Page directory created and loaded successfully.");

    // parse_RSDT();
    map_pics();
    enable_APIC();
    init_APIC_interrupt();
    init_APIC_timer();

    smp_status = 1;
    smp_info = physical_to_stivale(smp_info);
    
    booted_cpus_count++;
    
    LOG_PANIC("Halting CPU {d}", COREID);

    END_BOTTLENECK(1);

    asm volatile("sti");

    HALT();

}

void launch_APs(struct stivale2_struct_tag_smp* smp_infos){
    if(smp_infos->cpu_count)
        smp_status = 1;
    GRAB_LOCK(LOCK_NAME(Bootstrap));
    for(size_t i = 0; i < smp_infos->cpu_count;i++){
        if(smp_infos->bsp_lapic_id == smp_infos->smp_info[i].lapic_id){
            set_core_id(smp_infos->smp_info[i].lapic_id);
            continue;
        }
        LOG_ERR("Launching AP. Id {d}", smp_infos->smp_info[i].lapic_id);
        smp_infos->smp_info[i].target_stack = (uint64_t)physical_to_stivale(get_frame()) + 4096-64;
        smp_infos->smp_info[i].goto_address = (uint64_t)_start_core;
    }
    RELEASE_LOCK(LOCK_NAME(Bootstrap));
}

bool is_smp_active(){
    return smp_status;
}