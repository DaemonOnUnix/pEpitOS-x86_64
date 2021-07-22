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

void parse_RSDP(uint64_t rsdp_address);
void parse_RSDT();
#endif