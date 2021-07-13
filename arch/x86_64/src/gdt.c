#include "tables/gdt.h"
#include "freestanding.h"

#if 0

GDT::GdtEntry gdt_entries[GDT::size];

void GDT::GDT::init(){
	gdt_ptr.limit = (sizeof(GdtEntry)*size)-1;
	gdt_ptr.base = (uint64_t)gdt_entries;
	// asm volatile("xchg bx, bx");
	gdt_entries[0] = {0, 0, 0, 0}; // null descriptor
	gdt_entries[1] = {0, 0xFFFFFFFF, GDT_PRESENT | GDT_SEGMENT | GDT_READWRITE | GDT_EXECUTABLE, GDT_LONG_MODE_GRANULARITY};
	gdt_entries[2] = {0, 0xFFFFFFFF, GDT_PRESENT | GDT_SEGMENT | GDT_READWRITE, 0};
	gdt_entries[3] = {0, 0xFFFFFFFF, GDT_PRESENT | GDT_SEGMENT | GDT_READWRITE | GDT_EXECUTABLE | GDT_USER, GDT_LONG_MODE_GRANULARITY};
	gdt_entries[4] = {0, 0xFFFFFFFF, GDT_PRESENT | GDT_SEGMENT | GDT_READWRITE | GDT_USER, 0};
}

#endif