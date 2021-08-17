#ifndef UEFI_APIC_H
#define UEFI_APIC_H

#include "freestanding.h"

#define APIC_REGISTER_TIMER_DIV 0x3e0
#define APIC_REGISTER_TIMER_INITCNT 0x380
#define APIC_REGISTER_LVT_TIMER 0x320
#define APIC_REGISTER_TIMER_CURRCNT 0x390
#define APIC_LVT_INT_MASKED (1 << 16)

uint32_t cpuReadLAPIC(uint32_t reg);
void cpu_send_EOI();
void init_APIC_timer();
void init_APIC_interrupt();
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

#endif