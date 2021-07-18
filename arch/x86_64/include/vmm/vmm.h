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

size_t virtual_to_physical(size_t addr);

#define stivale_to_physical(x) (void*)(((uint64_t)x) - 0xffffffff80000000ull)
#define physical_to_stivale(x) (void*)(((uint64_t)x) + 0xffffffff80000000ull)

#endif