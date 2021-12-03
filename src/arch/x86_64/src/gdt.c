#include "tables/gdt.h"
#include "freestanding.h"
#include "log/log.h"

#ifndef GDT_DEBUG
#undef LOG_INFO
#define LOG_INFO(...)
#endif

#define nGDT_ENTRIES 6

#define GDT_SEGMENT (0b00010000)
#define GDT_PRESENT (0b10000000)
#define GDT_USER (0b01100000)
#define GDT_EXECUTABLE (0b00001000)
#define GDT_READWRITE (0b00000010)
#define GDT_LONG_MODE_GRANULARITY 0b0010
#define GDT_FLAGS 0b1100

#define GDT_RING_3 (3)


typedef struct {
    uint16_t limit0_15;
    uint16_t base0_15;
    uint8_t base16_23;
    uint8_t flags;
    uint8_t limit16_19 : 4;
    uint8_t granularity : 4;
    uint8_t base24_31;
} PACKED gdt_entry;

typedef struct {
	gdt_entry entries[nGDT_ENTRIES];
} PACKED gdt_t;

typedef struct {
    uint16_t size;
    uint64_t offset;
} PACKED gdt_descriptor;

gdt_entry create_gdt_entry(uint32_t base, uint32_t limit, uint8_t granularity, uint8_t flags){
    return (gdt_entry){
        .limit0_15 = (uint16_t)((limit)&0xFFFF),
        .base0_15 = (uint16_t)((base)&0xFFFF),
        .base16_23 = (uint8_t)(((base) >> 16) & 0xFF),
        .flags = (flags),
        .limit16_19 = ((limit) >> 16) & 0x0F,
        .granularity = (granularity),
        .base24_31 = (uint8_t)(((base) >> 24) & 0xFF),
    };
}

#define quick_entry(flags, granularity) (create_gdt_entry(0, 0, granularity, flags))

static gdt_t gdt;
static gdt_descriptor gdt_d;
/*
struct PACKED tss
{
    uint32_t reserved;

    uint64_t rsp[3];
    uint8_t granularity : 4;
    uint8_t base24_31;
};

static struct tss _tss = {
    .reserved = 0,
    .rsp = {},
    .reserved0 = 0,
    .ist = {},
    .reserved1 = 0,
    .reserved2 = 0,
    .reserved3 = 0,
    .iopb_offset = 0,
};*/

void setup_gdt(){
	LOG_INFO("Initializing GDT...");
	gdt.entries[0] = create_gdt_entry(0, 0, 0, 0);
	LOG_INFO("Null descriptor created, at offset {x}.", 0);

    gdt.entries[GDT_KERNEL_CODE] = quick_entry(GDT_PRESENT | GDT_SEGMENT | GDT_READWRITE | GDT_EXECUTABLE, GDT_LONG_MODE_GRANULARITY);
    LOG_INFO("Kernel code descriptor created, at offset {x}.", GDT_KERNEL_CODE*sizeof(gdt_entry));

	gdt.entries[GDT_KERNEL_DATA] = quick_entry(GDT_PRESENT | GDT_SEGMENT | GDT_READWRITE, 0);
	LOG_INFO("Kernel data descriptor created, at offset {x}.", GDT_KERNEL_DATA*sizeof(gdt_entry));

    gdt.entries[3] = create_gdt_entry(0, 0, 0, 0);
    LOG_INFO("Null descriptor created, at offset {x}.", 3*sizeof(gdt_entry));

    gdt.entries[GDT_USER_DATA] = quick_entry(GDT_PRESENT | GDT_SEGMENT | GDT_READWRITE | GDT_USER, 0);
    LOG_INFO("User data descriptor created, at offset {x}.", GDT_USER_DATA*sizeof(gdt_entry));

    gdt.entries[GDT_USER_CODE] = quick_entry(GDT_PRESENT | GDT_SEGMENT | GDT_READWRITE | GDT_EXECUTABLE | GDT_USER, GDT_LONG_MODE_GRANULARITY);
    LOG_INFO("User code descriptor created, at offset {x}.", GDT_USER_CODE*sizeof(gdt_entry));

	gdt_d.offset = (uint64_t)(&gdt);
	gdt_d.size = sizeof(gdt_t) -1;
	LOG_INFO("GDT Descriptor created, at {x}. GDT at {x} with size {d}.", (uint64_t)(&gdt_d), gdt_d.offset, gdt_d.size);

	extern void load_gdt(gdt_descriptor* desc);
	load_gdt(&gdt_d);

	LOG_OK("GDT loaded successfully.");

}