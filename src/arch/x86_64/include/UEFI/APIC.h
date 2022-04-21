#ifndef UEFI_APIC_H
#define UEFI_APIC_H

#include "freestanding.h"

#define APIC_REGISTER_TIMER_DIV 0x3e0
#define APIC_REGISTER_TIMER_INITCNT 0x380
#define APIC_REGISTER_LVT_TIMER 0x320
#define APIC_REGISTER_TIMER_CURRCNT 0x390
#define APIC_REGISTER_LOCAL_ID 0x20
#define APIC_LVT_INT_MASKED (1 << 16)
#define APIC_REGISTER_SPURIOUS_VECTOR 0xf0

#define APIC_SPURIOUS_ENABLE_BIT 0x100

#define KERNEL_LAPIC_ADDRESS 0x9000000000ull

uint32_t cpuReadLapic(uint32_t lapic_register);
void cpuWriteLapic(uint32_t lapic_register, uint32_t value);

void cpu_send_EOI();
void apic_init(void *physical_lapic_addr);
// void init_APIC_timer();
// void init_APIC_interrupt();
void map_pics();

typedef struct {
    uint8_t vector_number : 8;
    uint8_t destination_mode : 3;
    uint8_t is_destination_log : 1;
    uint8_t delivery_status : 1;
    uint8_t reserved_1 : 1;
    uint8_t INIt_level : 2;
    uint8_t destination_type : 2;
    uint16_t reserved_2 : 12;
} PACKED interrupt_message;

typedef union {
    interrupt_message bitfield;
    uint32_t value;
} int_message;

void send_interrupt_to_core(uint8_t core_number, uint8_t interrupt_number);

struct timer_calibration
{
    uint32_t tick_to_wait;
    uint8_t divider;
};

typedef struct timer_calibration timer_calibration_t;


#define APIC_GET_DIVIDER(divider_number) ((((divider_number) << 1) | (divider_number)) & 0b1011)


#define APIC_TIMER_PERIODIC_MODE (0b01 << 17)
#define APIC_TIMER_TSC_MODE (0b10 << 17)

void disable_pic();
timer_calibration_t calibrate_apic_timer(int hz);
void apic_start_timer(timer_calibration_t calibration);
void apic_software_enable();
void apic_software_disable();


#endif