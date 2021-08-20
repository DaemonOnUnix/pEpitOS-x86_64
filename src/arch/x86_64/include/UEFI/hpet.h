#ifndef UEFI_HPET_H
#define UEFI_HPET_H

#include "freestanding.h"
#include "ACPI.h"

typedef struct{
    uint8_t address_space_id;
    uint8_t register_bit_width;
    uint8_t register_bit_offset;
    uint8_t reserved;
    uint64_t address; 
}PACKED HPET_address;
 
typedef struct{
    ACPISDTHeader h;
    uint8_t revision_id;
    uint8_t comparator_count : 5;
    uint8_t counter_size : 1;
    uint8_t reserved : 1;
    uint8_t legacy_replacement_irq : 1;
    uint16_t pci_vendor_id;
    HPET_address address_base;
    char hpet_number;
    uint16_t main_counter_minimum;
    uint8_t page_protection;
} PACKED HPET;


#define HPET_General_Configuration 0x10
#define HPET_Main_Counter_Value 0xf0

void hpet_init(HPET* hpet);
void hpet_reset();
void hpet_wait(size_t ms);
size_t hpet_ms_to_tick(size_t ms);
void hpet_wait_tick(size_t tick);
#endif