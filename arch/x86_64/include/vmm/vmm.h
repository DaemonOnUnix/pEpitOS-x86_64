#ifndef kVMM
#define kVMM

#include "freestanding.h"

#define vmm_pml4 0xFFFFFF7FBFDFE000ull
#define vmm_pml3 0xFFFFFF7FBFC00000ull
#define vmm_pml2 0xFFFFFF7F80000000ull
#define vmm_pml1 0xFFFFFF0000000000ull
#define mask_l0          0xFFFull
#define mask_l1       0x1FF000ull
#define mask_l2     0x3FE00000ull
#define mask_l3   0x3FC0000000ull
#define mask_l4 0x3FC000000000ull
#define ARCH_PAGE_SIZE 0x1000
#define ARCH_N_ENTRY   512
#define CLEAN_BITS_MASK (~ (0xFFFull))

size_t virtual_to_physical(size_t addr);

#define stivale_to_physical(x) (void*)(((uint64_t)x) - 0xffffffff80000000ull)
#define physical_to_stivale(x) (void*)(((uint64_t)x) + 0xffffffff80000000ull)

uint64_t create_page_directory();
void init_vmm();
void kmmap(uintptr_t addr, size_t size, uint64_t flags);
uint64_t craft_addr(uint64_t offset_l4, uint64_t offset_l3, uint64_t offset_l2, uint64_t offset_l1, uint64_t offset_l0);

typedef enum {
    MEM_TO_UPPER,
    MEM_TO_LOWER
} mem_direction;
void kmunmap(uint64_t addr, size_t size, mem_direction direction);
#endif