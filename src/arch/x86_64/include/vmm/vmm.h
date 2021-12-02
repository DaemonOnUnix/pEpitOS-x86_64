#ifndef kVMM
#define kVMM

#include "freestanding.h"
#include "utils/macros.h"

#define mask_l0 MASK(12)
#define mask_l1 MASK_SHIFT(9, (12))
#define mask_l2 MASK_SHIFT(9, (21))
#define mask_l3 MASK_SHIFT(9, (30))
#define mask_l4 MASK_SHIFT(9, (39))
#define ARCH_PAGE_SIZE 0x1000
#define ARCH_N_ENTRY   512
#define CLEAN_BITS_MASK (~ (0xFFFull))
#define RECURSIVE_MAPPING_ENTRY 50

size_t virtual_to_physical(size_t addr);

#define stivale_to_physical(x) (void*)(((uint64_t)x) - 0xffffffff80000000ull)
#define physical_to_stivale(x) (void*)(((uint64_t)(x)) + 0xffffffff80000000ull)

uint64_t create_page_directory();
void init_vmm();
void kmmap(uintptr_t addr, size_t size, uint64_t flags);
uint64_t craft_addr(uint64_t offset_l4, uint64_t offset_l3, uint64_t offset_l2, uint64_t offset_l1, uint64_t offset_l0);

typedef enum {
    MEM_TO_UPPER,
    MEM_TO_LOWER
} mem_direction;

typedef struct {

    uint16_t plm0 : 12;
    uint16_t plm1 : 9;
    uint16_t plm2 : 9;
    uint16_t plm3 : 9;
    uint16_t plm4 : 9;
    uint16_t unused;
}PACKED address_offset_64;

typedef union {
    uint64_t address;
    address_offset_64 offset;
} address_64_bits;

void kmunmap(uint64_t addr, size_t size, mem_direction direction);
void setup_context_frame();
void kmmap_physical(uint64_t addr, uint64_t physical_addr, size_t size, uint64_t flags);
void* map_physical(uint64_t physical_addr, size_t size);
uint64_t search_available(uintptr_t base_addr, size_t size);
uintptr_t convert_to_arch_flags(uintptr_t flags);

#endif