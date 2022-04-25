#include "UEFI/APIC.h"
#include "UEFI/hpet.h"
#include "log/log.h"
#include "vmm/vmm.h"
#include "intel/asm.h"

#define PIC1 0x20
#define PIC1_COMMAND PIC1
#define PIC1_OFFSET 0x20
#define PIC1_DATA (PIC1 + 1)

#define PIC2 0xA0
#define PIC2_COMMAND PIC2
#define PIC2_OFFSET 0x28
#define PIC2_DATA (PIC2 + 1)

void disable_pic()
{
    asm_out8(PIC2_DATA, 0xff);
    asm_out8(PIC1_DATA, 0xff);
}

static void *mapped_apic[MAX_CORES] = {0};

/**
 * @brief Read the lapic at the address virtual_lapic_addr at the register offset.
 *
 * @param virtual_lapic_addr virtual address of the lapic
 * @return uint32_t content of the registers.
 */
uint32_t cpuReadLapic_at(void *virtual_lapic_addr, uint32_t lapic_register)
{
    volatile uint32_t *data = (uint32_t *)((uintptr_t)virtual_lapic_addr + lapic_register);
    return *data;
}

/**
 * @brief Write in the lapic at the virtual address virtual lapic addr in the register lapic_register the value value
 *
 * @param virtual_lapic_addr virtual address of the lapic.
 * @param lapic_register register offset.
 * @param value value to write.
 */
void cpuWriteLapic_at(void *virtual_lapic_addr, uint32_t lapic_register, uint32_t value)
{
    volatile uint32_t *data = (uint32_t *)((uintptr_t)virtual_lapic_addr + lapic_register);
    *data = value;
}

uint32_t cpuReadLapic(uint32_t lapic_register)
{
    return cpuReadLapic_at(KERNEL_LAPIC_ADDRESS, lapic_register);
}

void cpuWriteLapic(uint32_t lapic_register, uint32_t value)
{
    cpuWriteLapic_at(KERNEL_LAPIC_ADDRESS, lapic_register, value);
}

void apic_init(void *physical_lapic_addr)
{
    kmmap_physical(KERNEL_LAPIC_ADDRESS, physical_lapic_addr, 4096, 0);
    uint32_t core = cpuReadLapic_at(KERNEL_LAPIC_ADDRESS, APIC_REGISTER_LOCAL_ID) >> 24;
    // LOG_ASSERT(mapped_apic[core] == NULL, "apic at core {d} is already mapped", core);
    // mapped_apic[core] = tmp_apic_addr;
    LOG_OK("core {d}: local apic mapped at {x}", core, KERNEL_LAPIC_ADDRESS);
    // disable_pic();
}

/**
 * @brief set the APIC Software Enable/Disable bit (n°9)
 * See intel sdm 3 10.9 Spurious interrupt.
 *
 */
void apic_software_enable()
{
    cpuWriteLapic(APIC_REGISTER_SPURIOUS_VECTOR, cpuReadLapic(APIC_REGISTER_SPURIOUS_VECTOR) | APIC_SPURIOUS_ENABLE_BIT | 7);
}

/**
 * @brief clear the APIC Software Enable/Disable bit (n°9)
 * See intel sdm 3 10.9 Spurious interrupt.
 *
 */
void apic_software_disable()
{
    cpuWriteLapic(APIC_REGISTER_SPURIOUS_VECTOR, cpuReadLapic(APIC_REGISTER_SPURIOUS_VECTOR) & ~(APIC_SPURIOUS_ENABLE_BIT));
}

#define ALLOWED_ERROR 0x16
/**
 * @brief Computing the best apic dividor for the tick count.
 *
 */
uint8_t find_best_divider(uint32_t tick_count)
{
    if (tick_count == 0)
        return APIC_GET_DIVIDER(7); // divider 1
    for (int i = 6, start_divider = 128; i > 0; i--, start_divider /= 2)
    {
        if ((tick_count / start_divider) != 0 && (tick_count & (start_divider - 1)) <= ALLOWED_ERROR)
            return APIC_GET_DIVIDER(i);
    }
    return APIC_GET_DIVIDER(7);
}
#undef ALLOWED_ERROR


/**
 * @brief return the value of the divider: 000 -> 2, 001 -> 4, cf sdm 3 apic timer 10.5.4
 * 
 * @param divider 
 * @return uint8_t 
 */
uint8_t divider_to_value(uint8_t divider)
{
    uint8_t result =  (2 << ((divider &  0b011) | ((divider >> 1) & 0b100))) % 255;
    LOG_INFO("divider {d} is {d}", divider, result);
    return result;
}



#define OPTIMIZE_TICK_COUNT 0
/**
 * @brief Compute apic calibration for an interrupt frequence.
 * 
 * @param hz The desired interrupt frequence.
 * @return timer_calibration_t Calibration value.
 */
timer_calibration_t calibrate_apic_timer(int hz)
{
    uint32_t lvt_value = cpuReadLapic(APIC_REGISTER_LVT_TIMER);
    cpuWriteLapic(APIC_REGISTER_LVT_TIMER, (1 << 16)); // One shot mode, mask interrupt, vector 0, idle
    cpuWriteLapic(APIC_REGISTER_TIMER_DIV, APIC_GET_DIVIDER(3));    // divider set to 16.
    size_t hpet_tick_to_wait = hpet_ms_to_tick(10);
    hpet_reset();
    cpuWriteLapic(APIC_REGISTER_TIMER_INITCNT, (uint32_t)-1); // Max count.
    hpet_wait_tick(hpet_tick_to_wait);
    uint32_t cpu_wait_tick = 0xFFFFFFFF - cpuReadLapic(APIC_REGISTER_TIMER_CURRCNT);
    LOG_INFO("10 ms represent {d} ticks", cpu_wait_tick);
    uint64_t tick_for_hz = (cpu_wait_tick * 100) / hz; // (tick_in_10_ms * 100hz)/expected hz
    #if OPTIMIZE_TICK_COUNT
    tick_for_hz *= divider_to_value(APIC_GET_DIVIDER(3)); // base divider is 16.
    uint32_t divider = find_best_divider(tick_for_hz);
    LOG_INFO("divider {d}", divider);
    timer_calibration_t calibration = {.divider = divider, .tick_to_wait = tick_for_hz / divider_to_value(divider)};
    #else
    timer_calibration_t calibration = {.divider = APIC_GET_DIVIDER(3), .tick_to_wait = tick_for_hz};
    #endif
    LOG_INFO("calibration data: {.divider = {x}, .tick_to_wait = {d}}", calibration.divider, calibration.tick_to_wait);
    return calibration;
}
#undef OPTIMIZE_TICK_COUNT

void apic_start_timer(timer_calibration_t calibration)
{
    cpuWriteLapic(APIC_REGISTER_TIMER_DIV, calibration.divider);
    cpuWriteLapic(APIC_REGISTER_TIMER_INITCNT, calibration.tick_to_wait);  // Max count.
    cpuWriteLapic(APIC_REGISTER_LVT_TIMER, APIC_TIMER_PERIODIC_MODE | 32); // set in periodic mode, and deliver interrupt 32.
    LOG_INFO("starting apic timer");
}

// #include "UEFI/RSDT.h"
// #include "UEFI/APIC.h"
// #include "UEFI/hpet.h"
// #include "freestanding.h"
// #include "log/log.h"
// #include "utils/macros.h"
// #include "vmm/vmm.h"
// #include "intel/asm.h"
// static uintptr_t LAPIC_VIRTUAL_ADDRESS = 0;
// static uintptr_t IOAPIC_VIRTUAL_ADDRESS = 0;

// #ifndef APIC_DEBUG
// #undef LOG_OK
// #define LOG_OK(...)
// #undef LOG_INFO
// #define LOG_INFO(...)
// #endif

// extern apic_info_t apic_info;

void map_pics()
{
    // if(!LAPIC_VIRTUAL_ADDRESS || !IOAPIC_VIRTUAL_ADDRESS){
    //     LOG_PANIC("Can't map PICs with unitialized data.");
    //     HALT();
    // }
    // // Should desactivate caching for this memory region
    // kmmap_physical(IOAPIC_VIRTUAL_ADDRESS, apic_info.ioapic.address, IOAPIC_LENGTH*2, 2);
    // kmmap_physical(LAPIC_VIRTUAL_ADDRESS, apic_info.lapic_address, LAPIC_LENGTH*2, 2);
}

// void cpuWriteIoAPIC(uint32_t reg, uint32_t value){
//     uint32_t volatile *ioapic = (uint32_t volatile *)IOAPIC_VIRTUAL_ADDRESS;
//     ioapic[0] = (reg & 0xff);
//     ioapic[4] = value;
// }

// uint32_t cpuReadIoAPIC(uint32_t reg){
//     uint32_t volatile *ioapic = (uint32_t volatile *)IOAPIC_VIRTUAL_ADDRESS;
//     ioapic[0] = (reg & 0xff);
//     return ioapic[4];
// }

// uint32_t cpuReadLAPIC(uint32_t reg){
//     char volatile *lapic = (char volatile *)LAPIC_VIRTUAL_ADDRESS;
//     return *(uint32_t *)(lapic + reg);
// }

// void cpuWriteLAPIC(uint32_t reg, uint32_t value){
//     char volatile *lapic = (char volatile *)LAPIC_VIRTUAL_ADDRESS;
//     *(uint32_t*)(lapic + reg)  = value;
// }

void cpu_send_EOI()
{
    cpuWriteLapic(0xB0, 0);
}

// // void redirect_interrupts(){
// //     ioapic_entry_t ioapic = apic_info.ioapic;
// //     for(size_t i = 0; i < apic_info.interrupt_count; i++){
// //         interrupt_source_override interrupt = apic_info.interrupt[i];
// //         if(ioapic.base < interrupt.global_system_interrupt && (size_t)interrupt.irq <= ioapic.max_redirection){
// //             LOG_INFO("can redirect interrupt: {d}",interrupt.irq);
// //             uint32_t value = (interrupt.irq + 32) | (0 << 8) | (0 << 11) | (1 << 13) | (0 << 15);
// //             cpuWriteIoAPIC(IOAPIC_REDIRECTION_OFFSET + ((interrupt.irq - ioapic.base)*2), value);
// //             cpuWriteIoAPIC(IOAPIC_REDIRECTION_OFFSET + ((interrupt.irq - ioapic.base)*2)+1, apic_info.lapics[0].ACPI_id);
// //         } else {
// //             LOG_ERR("can't redirect interrupt: {x}",interrupt.irq);
// //         }
// //     }
// // }

// // void map_APIC(){
// //     ONCE();
// //     IOAPIC_VIRTUAL_ADDRESS = (uintptr_t)map_physical(apic_info.ioapic.address, IOAPIC_LENGTH*2);
// //     LAPIC_VIRTUAL_ADDRESS =  (uintptr_t)map_physical(apic_info.lapic_address, LAPIC_LENGTH*2);
// //     LOG_INFO("IOAPIC mapped at address: {x} | LAPIC mapped at address: {x}", IOAPIC_VIRTUAL_ADDRESS, LAPIC_VIRTUAL_ADDRESS);

// //     uint32_t info = cpuReadIoAPIC(1);
// //     apic_info.ioapic.max_redirection = SHIFTR(info,8,16);

// //     LOG_INFO("I/O APIC Version: {x}, Maximum redirection is: {x}", SHIFTR(info, 8, 0), SHIFTR(info, 8, 16));
// //     LOG_INFO("APIC version: {x}",cpuReadLAPIC(0x30));
// //     LOG_INFO("Setting the spurious interrupt vector register");
// // }

// // void enable_APIC(){
// //     map_APIC();
// //     cpuWriteLAPIC(SPURIOUS_VECTOR_REGISTER, cpuReadLAPIC(SPURIOUS_VECTOR_REGISTER) | SPURIOUS_ALL);
// //     redirect_interrupts();
// // }

// // void init_APIC_timer(){
// //     ONCE();
// //     hpet_reset();
// //     size_t tick_to_wait = hpet_ms_to_tick(10);

// //     cpuWriteLAPIC(APIC_REGISTER_TIMER_DIV, 0x3);
// //     cpuWriteLAPIC(APIC_REGISTER_TIMER_INITCNT, (uint32_t)-1);

// //     hpet_wait_tick(tick_to_wait);

// <<<<<<< ours
//     cpuWriteLAPIC(APIC_REGISTER_LVT_TIMER, APIC_LVT_INT_MASKED);
//     uint32_t ticksIn10ms = 0xFFFFFFFF - cpuReadLAPIC(APIC_REGISTER_TIMER_CURRCNT);
//     LOG_INFO("There is {x} | {d} ticks in 10 ms", ticksIn10ms,ticksIn10ms);
//     // cpuWriteLAPIC(APIC_REGISTER_LVT_TIMER, 32 | 0x20000);
//     cpuWriteLAPIC(APIC_REGISTER_TIMER_DIV, 0x3);
// // // }

// // void init_APIC_interrupt(){
// //     LOG_INFO("Configuring non maskable interrupt")
// //     for(size_t i = 0; i < apic_info.nmi_count;i++){
// //         if(apic_info.nmis[i].ACPI_processor_id == 0xFF){
// //             size_t lint_registers = 0x350 + (0x10 * apic_info.nmis[i].LINT);
// //             size_t flags = apic_info.nmis[i].flags;
// //             cpuWriteLAPIC(lint_registers,((flags & 2) << 13) | ((flags & 8) << 15));
// //         }
// //     }

// //     disable_pic();
// //     LOG_INFO("Enabling APIC");
// //     cpuWriteLAPIC(SPURIOUS_VECTOR_REGISTER, cpuReadLAPIC(SPURIOUS_VECTOR_REGISTER) | SPURIOUS_ENABLE_BIT);
// // }

// // void send_interrupt_to_core(uint8_t core_number, uint8_t interrupt_number){
// //     cpuWriteLAPIC(0x310, core_number << 24);
// //     int_message to_send;
// //     to_send.bitfield.vector_number = interrupt_number;
// //     //to_send.bitfield.INIt_level = 1;
// //     // to_send.bitfield.destination_type = 2;
// //     cpuWriteLAPIC(0x300, to_send.value);
// //     volatile interrupt_message* result = (void*)(LAPIC_VIRTUAL_ADDRESS + 0x300);
// //     while(result->delivery_status);
// // }
