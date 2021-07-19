#include "vmm/vmm.h"
#include "pmm/pmm.h"
#include "log/log.h"

static uint64_t* limine_page_directory_addr = 0;

void init_vmm(){
    LOG_INFO("Initialising Virtual Memory Manager...");
    asm volatile("mov %0, cr3" : "=a"(limine_page_directory_addr) :);
    uint64_t* new_pdp = (uint64_t*)get_frame();
    uint64_t* new_pd = physical_to_stivale(new_pdp);
    for(uint32_t i = 0; i < 512; i++)
        new_pd[i] = limine_page_directory_addr[i];
    LOG_OK("Got stivale2 page directory at {x}", limine_page_directory_addr);
    
}

uint64_t map_low_memory(uintptr_t page_directory_phys_addr){
    
}

uint64_t craft_addr(uint64_t offset_l4, uint64_t offset_l3, uint64_t offset_l2, uint64_t offset_l1, uint64_t offset_l0){
    return offset_l0 | (offset_l1 << 12) | (offset_l2 << 21) | (offset_l3 << 30) | (offset_l4 << 39);
}

void kmmap(uint64_t addr, size_t size, uint64_t flags){
    uint64_t offset_l4 = ((addr & mask_l4)) >> 39;
    uint64_t offset_l3 = ((addr & mask_l3)) >> 30;
    uint64_t offset_l2 = ((addr & mask_l2)) >> 21;
    uint64_t offset_l1 = ((addr & mask_l1)) >> 12;
    uint64_t offset = ((addr & mask_l0));
    uint64_t* entry;


    for (; offset_l4 < ARCH_N_ENTRY; offset_l4++)
    {
        entry = (void*)(craft_addr(0, 0, 0, 0, offset_l4 * 8));
        // LOG_INFO("offset : {x}, entry : {x}, *entry : {x}", offset_l4, entry, *entry);

        if (*entry == 0)
            *entry = get_frame() | flags | 1;
        
        for (; offset_l3 < ARCH_N_ENTRY; offset_l3++)
        {
            entry = (void*)(craft_addr(0, 0, 0, offset_l4, offset_l3 * 8));
            if (*entry == 0)
                *entry = get_frame() | flags | 1;

            for (; offset_l2 < ARCH_N_ENTRY; offset_l2++)
            {
                entry = (void*)craft_addr(0, 0, offset_l4, offset_l3, offset_l2 * 8);
                if (*entry == 0)
                    *entry = get_frame() | flags | 1;
                

                for (; offset_l1 < ARCH_N_ENTRY; offset_l1++)
                {
                    entry = (void*)craft_addr(0, offset_l4, offset_l3, offset_l2, offset_l1 * 8);
                    if (*entry == 0)
                        *entry = get_frame() | flags | 1;
                    
                    
                    uint64_t space_left = ARCH_PAGE_SIZE - (uint64_t)offset;
                    LOG_INFO("Mapping physical page {x} at address {x}, remaining size on frame: {x}", *entry, entry, space_left);
                    if (space_left >= size)
                        return;
                    size -= space_left;
                    offset = 0;
                }
                offset_l1 = 0;
            }
            offset_l2 = 0;
        }
        offset_l3 = 0;
    }

    // 0x11 22 33 44 55;
    // 0x00 00 00 00 ab;
    // 0x00 00 00 ab cd;
    // 0x00 00 ab cd ef;
    // 0x00 ab cd ef gh;
}

uintptr_t create_page_directory() {
    uint64_t* new_pdp = (uint64_t*)get_frame();
    uint64_t* new_pd = physical_to_stivale(new_pdp);

    LOG_INFO("Created new page directory on frame {x} (manipulation address at {x})", new_pdp, new_pd);

    for(uint32_t i = 0; i < 512; i++)
        new_pd[i] = limine_page_directory_addr[i];
    
    new_pd[0] = (uint64_t)new_pdp | 3;
    
    return new_pdp;
}