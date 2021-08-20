#ifndef UEFI_ACPI_H
#define UEFI_ACPI_H

#include "freestanding.h"

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

#endif