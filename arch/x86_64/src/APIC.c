#include "UEFI/RSDT.h"
#include "freestanding.h"
#include "log/log.h"
#include "utils/bitsmanip.h"
#include "vmm/vmm.h"

extern apic_info_t apic_info;

void cpuWriteIoAPIC(uint32_t reg, uint32_t value ){
    uint32_t volatile *ioapic = (uint32_t volatile *)IOAPIC_VIRTUAL_ADDRESS;
    ioapic[0] = (reg & 0xff);
    ioapic[4] = value;
}

uint32_t cpuReadIoAPIC(uint32_t reg){
  uint32_t volatile *ioapic = (uint32_t volatile *)IOAPIC_VIRTUAL_ADDRESS;
  ioapic[0] = (reg & 0xff);
  return ioapic[4];
}

uint32_t cpuReadLAPIC(uint32_t reg){
    uint32_t volatile *lapic = (uint32_t volatile *)LAPIC_VIRTUAL_ADDRESS;
    return lapic[reg];
}
void cpuWriteLAPIC(uint32_t reg, uint32_t value){
    uint32_t volatile *lapic = (uint32_t volatile *)LAPIC_VIRTUAL_ADDRESS;
    lapic[reg] = value;
}


void redirect_interrupts(){
    ioapic_entry_t ioapic = apic_info.ioapic;
    for(size_t i = 0; i < apic_info.interrupt_count; i++){
        interrupt_source_override interrupt = apic_info.interrupt[i];
        if(ioapic.base < interrupt.global_system_interrupt && interrupt.irq <= ioapic.max_redirection){
            LOG_INFO("can redirect interrupt: {x}",interrupt.irq);
            uint32_t value = (interrupt.irq + 32) | (0 << 8) | (0 << 11) | (1 << 13) | (0 << 15);
            cpuWriteIoAPIC(IOAPIC_REDIRECTION_OFFSET + ((interrupt.irq - ioapic.base)*2), value);
            cpuWriteIoAPIC(IOAPIC_REDIRECTION_OFFSET + ((interrupt.irq - ioapic.base)*2)+1, apic_info.lapics[0].ACPI_id);
        } else {
            LOG_ERR("can't redirect interrupt: {x}",interrupt.irq);
        }
    }
}

void enable_APIC(){

    kmmap_physical(IOAPIC_VIRTUAL_ADDRESS, apic_info.ioapic.address,IOAPIC_LENGTH*2, 2);
    kmmap_physical(LAPIC_VIRTUAL_ADDRESS, apic_info.lapic_address,LAPIC_LENGTH, 2);
    uint32_t info = cpuReadIoAPIC(1);
    apic_info.ioapic.max_redirection = SHIFTR(info,8,16);

    LOG_INFO("APIC Version: {x}, Maximum redirection is: {x}", SHIFTR(info, 8, 0), SHIFTR(info, 8, 16));
    LOG_INFO("Setting the spurious interrupt vector register");
    cpuWriteLAPIC(SPURIOUS_VECTOR_REGISTER, cpuReadLAPIC(SPURIOUS_VECTOR_REGISTER) | SPURIOUS_ALL | LAPIC_ENABLE_BIT);
    redirect_interrupts();

}