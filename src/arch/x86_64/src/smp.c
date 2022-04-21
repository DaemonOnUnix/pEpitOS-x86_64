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
#include "syscall-enabling/syscall.h"

// static uint8_t value = 0;
static bool smp_status = 0;
static uint8_t booted_cpus_count = 1;

uint8_t get_booted_cpus_count()
{
    return booted_cpus_count;
}

// uint32_t get_core_id()
// {
//     static uint32_t id = 0;

//     ONCE(id);

//     LOG_PANIC("PLOUFFFFF");

//     id = *lapic_id;

//     return id;
// }

uint32_t id = 0;
void set_core_id(uint32_t lapic_id)
{
    id = lapic_id;
}

uint32_t get_core_id()
{
    if (smp_status)
    {
        return cpuReadLapic(0x20) >> 24;
    }
    return 0;
}

CREATE_LOCK(1)
CREATE_LOCK(Bootstrap)

typedef void (*launching_address)();
launching_address *launching_addresses;

void _start_core(struct stivale2_smp_info *smp_info)
{
    LOG_OK("plouf2");

    GRAB_LOCK(LOCK_NAME(Bootstrap));
    RELEASE_LOCK(LOCK_NAME(Bootstrap));

    BEGIN_BOTTLENECK(1);

    smp_status = 0;

    LOG_INFO("Booting an AP.");

    setup_gdt();
    setup_idt();
    attach_kernel_exceptions();

    asm volatile("mov cr3, %0" ::"a"(create_page_directory()));
    setup_context_frame();
    extern void enable_sse(void);
    LOG_OK("Page directory created and loaded successfully.");
    enable_sse();

    // parse_RSDT();
    // map_pics();
    // enable_APIC();
    // init_APIC_interrupt();
    // init_APIC_timer();

    apic_init(0xFEE00000);
    smp_status = 1;
    uint32_t core_id = get_core_id();
    LOG_INFO("core = {d}", get_core_id());
    smp_status = 1;
    LOG_INFO("test");
    apic_software_enable();
    // timer_calibration_t calib = calibrate_apic_timer(10);
    // apic_start_timer(calib);

    syscall_initialize();
    smp_status = 1;
    smp_info = physical_to_stivale(smp_info);

    booted_cpus_count++;

    LOG_OK("Halting CPU {d}. Initialization successful.", COREID);

    END_BOTTLENECK(1);

    asm volatile("sti");

    while (1)
    {
        launching_addresses[COREID] = NULL;
        while (!launching_addresses[COREID] || launching_addresses[COREID] == (void *)1)
            ;
        launching_addresses[COREID]();
    }

    HALT();
}

void launch_APs(struct stivale2_struct_tag_smp *smp_infos, void (*_launching_addresses[])())
{
    LOG_INFO("launching ap1 {d}", smp_infos->cpu_count);
    if (smp_infos->cpu_count == 0)
        smp_status = 1;
    launching_addresses = _launching_addresses;
    GRAB_LOCK(LOCK_NAME(Bootstrap));
    LOG_INFO("launching ap");
    for (size_t i = 0; i < smp_infos->cpu_count; i++)
    {
        if (smp_infos->bsp_lapic_id == smp_infos->smp_info[i].lapic_id)
        {
            set_core_id(smp_infos->smp_info[i].lapic_id);
            continue;
        }
        LOG_ERR("Launching AP. Id {d}", smp_infos->smp_info[i].lapic_id);
        smp_infos->smp_info[i].target_stack = (uint64_t)physical_to_stivale(get_frame()) + 4096 - 64;
        LOG_INFO("Target stack {x}", smp_infos->smp_info[i].target_stack);
        smp_infos->smp_info[i].goto_address = (uint64_t)_start_core;
    }
    RELEASE_LOCK(LOCK_NAME(Bootstrap));
}

bool is_smp_active()
{
    return smp_status;
}