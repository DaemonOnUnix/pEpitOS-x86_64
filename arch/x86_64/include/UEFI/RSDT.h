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
    size_t numcore;
    uint64_t lapic_address;
    ioapic_entry_t ioapic;
    interrupt_source_override interrupt[10];
    size_t interrupt_count;
} apic_info_t;


#define LAPIC_VIRTUAL_ADDRESS 0xffdaedc000
#define LAPIC_LENGTH 0x1000

#define IOAPIC_VIRTUAL_ADDRESS 0xffdeadc000
#define IOAPIC_LENGTH 0x1000

#define SPURIOUS_VECTOR_REGISTER 0xf0
#define SPURIOUS_ALL 0Xff
#define LAPIC_ENABLE_BIT 0x100


void parse_RSDP(uint64_t rsdp_address);
void parse_RSDT();
void enable_APIC();
#endif