#ifndef UEFI_APIC_H
#define UEFI_APIC_H

#define APIC_REGISTER_TIMER_DIV 0x3e0
#define APIC_REGISTER_TIMER_INITCNT 0x380
#define APIC_REGISTER_LVT_TIMER 0x320
#define APIC_REGISTER_TIMER_CURRCNT 0x390
#define APIC_LVT_INT_MASKED (1 << 16)

void cpu_send_EOI();
void init_APIC_timer();
void init_APIC_interrupt();
#endif