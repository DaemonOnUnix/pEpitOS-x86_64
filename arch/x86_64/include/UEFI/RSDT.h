#ifndef UEFI_RSDT
#define UEFI_RSDT

#include "freestanding.h"

typedef struct {
    char Signature[8];
    uint8_t Checksum;
    char OEMID[6];
    uint8_t Revision;
    uint32_t RsdtAddress;
} PACKED RSDPDescriptor;

typedef struct {
    RSDPDescriptor firstPart;
    uint32_t Length;
    uint64_t XsdtAddress;
    uint8_t ExtendedChecksum;
    uint8_t reserved[3];
} PACKED RSDPDescriptor20;

typedef struct {
    char Signature[4];
    uint32_t Length;
    uint8_t Revision;
    uint8_t Checksum;
    char OEMID[6];
    char OEMTableID[8];
    uint32_t OEMRevision;
    uint32_t CreatorID;
    uint32_t CreatorRevision;
} PACKED ACPISDTHeader;

typedef struct {
    ACPISDTHeader h;
    uint32_t PointersToOtherSDT[];
} PACKED RSDT;

typedef struct{
    ACPISDTHeader h;
    uint32_t lapic_addr;
    uint32_t flags;
} PACKED MADT;


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

typedef enum{
    MADT_LAPIC = 0,
    MADT_IOAPIC,
    MADT_INT_SRC_OVR,
    MADT_NMSK_INT_SRC,
    MADT_LAPIC_NNMI,
    MADT_LAPIC_ADDR_OVR,
    MADT_IOSAPIC,
    MADT_LOC_SAPIC,
    MADT_PLT_INT_SRC,
    MADT_L2APIC
} MADT_ENTRY;

typedef struct {
    RSDPDescriptor20* rsdp;
    RSDT* rsdt;
    MADT* madt;
} uefi_tables;


typedef struct{
    char id;
    uint32_t address;
    uint32_t base;
    size_t max_redirection;
} ioapic_entry_t;


typedef struct{
    char bus;
    char irq;
    uint32_t global_system_interrupt;
    uint16_t flags;
} PACKED interrupt_source_override;

typedef struct {
    char ACPI_Processor_id;
    char ACPI_id;
    uint32_t flags;
} PACKED madt_lapic_entry_t;

typedef struct {
    size_t numcore;
    madt_lapic_entry_t lapics[10];
    uint64_t lapic_address;
    ioapic_entry_t ioapic;
    interrupt_source_override interrupt[10];
    size_t interrupt_count;
} apic_info_t;

typedef struct {
    uint8_t interrupt_vector;
    char delivery_mode :2;
    char destination :1;
    char going_to_be_send : 1;
    char polarity : 1;
    char level_trigger : 1;
    char trigger_mode : 1;
    char mask : 1;
}PACKED redirection_entry_pt1;



#define LAPIC_VIRTUAL_ADDRESS 0xffdaedc000
#define LAPIC_LENGTH 0x1000

#define IOAPIC_VIRTUAL_ADDRESS 0xffdeadc000
#define IOAPIC_LENGTH 0x1000
#define IOAPIC_REDIRECTION_OFFSET 0x10


#define SPURIOUS_VECTOR_REGISTER 0xf0
#define SPURIOUS_ALL 0Xff
#define LAPIC_ENABLE_BIT 0x100


void parse_RSDP(uint64_t rsdp_address);
void parse_RSDT();
void enable_APIC();
#endif