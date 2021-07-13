#ifndef kINTEL_TSS
#define kINTEL_TSS

#include "freestanding.h"

struct TssEntry {
	uint32_t reserved;
	uint64_t rsp[3];
	uint64_t reserved0;
	uint64_t ist[7];
	uint32_t reserved1;
	uint32_t reserved2;
	uint16_t reserved3;
	uint16_t iopb_offset;
} __attribute__((packed));
#endif