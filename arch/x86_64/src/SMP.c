#include "freestanding.h"
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
#include <stdatomic.h>
#include "SMP/locks.h"


static uint8_t value = 0;

uint8_t get_core_id_cpuid(){
    // ONCE(value);
    value = 0; 
    asm volatile("cpuid":"=b"(value):"a"(1));
    uint8_t bspid = (uint8_t)(value>>24);
    return bspid;
}

static atomic_int pikalul = 0;

CREATE_LOCK(1)

void _start_core(struct stivale2_smp_info* smp_info){

    BEGIN_BOTTLENECK(1);

    // LOG_OK("Booting processor number {d}", current_core);
    LOG_OK("Booting processor number {d}", smp_info->lapic_id);

    setup_gdt();
    setup_idt();
    attach_kernel_exceptions();

    LOG_OK("Pikalul value : {d}", pikalul++);

    // LOG_PANIC("Halting CPU {d}", get_core_id_cpuid());
    // HALT();

    asm volatile("mov cr3, %0"::"a"(create_page_directory()));
    setup_context_frame();
    extern void enable_sse(void);
    enable_sse();
    LOG_OK("Page directory created and loaded successfully.");

    enable_APIC();
    init_APIC_timer();

    smp_info = physical_to_stivale(smp_info);
    
    LOG_PANIC("Halting CPU {d}",smp_info->lapic_id);

    END_BOTTLENECK(1);

    HALT();

}

void launch_APs(struct stivale2_struct_tag_smp* smp_infos){
    for(size_t i = 0; i < smp_infos->cpu_count;i++){
        if(smp_infos->bsp_lapic_id == smp_infos->smp_info[i].lapic_id)
            continue;
        LOG_ERR("Launching AP. Id {d}", smp_infos->smp_info[i].lapic_id);
        smp_infos->smp_info[i].target_stack = physical_to_stivale(get_frame()) + 4096-64;
        smp_infos->smp_info[i].goto_address = (uint64_t)_start_core;
    }
}