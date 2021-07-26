#ifndef kHPET
#define kHPET

#include "freestanding.h"
#include "UEFI.h"



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


void hpet_init(HPET* hpet);
void hpet_reset();
void hpet_wait(size_t ms);

#endif