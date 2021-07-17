#ifndef PMM_H
#define PMM_H

#include "freestanding.h"
#include "thirdparties/stivale2.h"

uintptr_t get_frame();
void init_pmm(uintptr_t virtual_addr, uint8_t page_size);
void set_memory_map(struct stivale2_struct_tag_memmap * memmap_tag);
uint64_t get_size_in_bits();

#endif