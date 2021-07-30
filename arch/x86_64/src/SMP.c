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
static bool smp_status = 0;

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
    return id;
}

CREATE_LOCK(1)
CREATE_LOCK(2)

void _start_core(struct stivale2_smp_info* smp_info){

    BEGIN_BOTTLENECK(1);

    BEGIN_BOTTLENECK(2);
    set_core_id(smp_info->lapic_id);
    LOG_OK("Booting processor number {d}", COREID);
    LOG_INFO("SMP is active : {d}", is_smp_active());
    END_BOTTLENECK(2);


    // LOG_OK("Booting processor number {d}", current_core);

    setup_gdt();
    setup_idt();
    attach_kernel_exceptions();

    asm volatile("mov cr3, %0"::"a"(create_page_directory()));
    setup_context_frame();
    extern void enable_sse(void);
    enable_sse();
    LOG_OK("Page directory created and loaded successfully.");

    enable_APIC();
    init_APIC_timer();

    smp_info = physical_to_stivale(smp_info);
    
    LOG_PANIC("Halting CPU {d}", COREID);

    END_BOTTLENECK(1);
    // END_BOTTLENECK(1);

    HALT();

}

void launch_APs(struct stivale2_struct_tag_smp* smp_infos){
    if(smp_infos->cpu_count)
        smp_status = 1;
    for(size_t i = 0; i < smp_infos->cpu_count;i++){
        if(smp_infos->bsp_lapic_id == smp_infos->smp_info[i].lapic_id){
            set_core_id(smp_infos->smp_info[i].lapic_id);
            continue;
        }
        LOG_ERR("Launching AP. Id {d}", smp_infos->smp_info[i].lapic_id);
        smp_infos->smp_info[i].target_stack = physical_to_stivale(get_frame()) + 4096-64;
        smp_infos->smp_info[i].goto_address = (uint64_t)_start_core;
    }
}

bool is_smp_active(){
    return smp_status;
}