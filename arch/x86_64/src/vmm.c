#include "vmm/vmm.h"
#include "pmm/pmm.h"
#include "log/log.h"
#include "interrupts/stackframe.h"

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

uint64_t craft_addr(uint64_t offset_l4, uint64_t offset_l3, uint64_t offset_l2, uint64_t offset_l1, uint64_t offset_l0){
    return offset_l0 | (offset_l1 << 12 ) | (offset_l2 << 21) | (offset_l3 << 30 ) | (offset_l4 << 39);
}

void kmmap(uint64_t addr, size_t size, uint64_t flags){
    // TODO: Kernel panic when unmap non mapped frame.

    uint64_t offset_l4 = ((addr & mask_l4)) >> (39 + 0);
    uint64_t offset_l3 = ((addr & mask_l3)) >> (30 + 0);
    uint64_t offset_l2 = ((addr & mask_l2)) >> (21 + 0);
    uint64_t offset_l1 = ((addr & mask_l1)) >> (12 + 0);
    uint64_t offset = ((addr & mask_l0));
    uint64_t* entry;
   // LOG_INFO("XOR_mask {x}", mask_l4 ^ mask_l3 ^ mask_l2 ^ mask_l1 ^ mask_l0);
    // LOG_INFO("OFFSET PLM3 : {x} {d}", offset_l3, offset_l3);

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
                    uint64_t space_left = ARCH_PAGE_SIZE - (uint64_t)offset;
                    if (*entry == 0){

                        *entry = get_frame() | flags | 1;
                        LOG_INFO("Mapping physical page {x} at address {x} ( {d} | {d} | {d} | {d} | {d} ), remaining size on frame: {x}", *entry, craft_addr(offset_l4, offset_l3, offset_l2, offset_l1, 0),offset_l4,offset_l3,offset_l2,offset_l1,offset, space_left);
                    }
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

bool is_frame_empty(uint64_t* frame){
    uintptr_t plouf = (uintptr_t)frame;
    plouf &= CLEAN_BITS_MASK;
    frame = (uint64_t*)plouf;
    size_t i = 0;
    while(frame[i] == 0 && i < ARCH_N_ENTRY)
        i++;
    return i == ARCH_N_ENTRY;
}

void kmunmap(uint64_t addr, size_t size, mem_direction direction){
    uint64_t offset_l4 = SHIFTR(addr, 9, 39);
    uint64_t offset_l3 = SHIFTR(addr, 9, 30);
    uint64_t offset_l2 = SHIFTR(addr, 9, 21);
    uint64_t offset_l1 = SHIFTR(addr, 9, 12);
    uint64_t offset_l0 = SHIFTR(addr, 9, 0);
    uint64_t* entry;
    
    LOG_INFO("Asking to unmap {d} bytes at base (virtual) {x} to {s} addresses", size, addr, (direction == MEM_TO_LOWER ? "lower" : "upper"));

    size_t number_of_page_freed = 0;
    if(size <= ARCH_PAGE_SIZE-1 || size <= offset_l0){
        LOG_INFO("No frame will be freed");
        return;
    }
    size -= offset_l0;

    for (; offset_l4 < ARCH_N_ENTRY; offset_l4++){
        for (; offset_l3 < ARCH_N_ENTRY; offset_l3++){
            for (; offset_l2 < ARCH_N_ENTRY; offset_l2++){
                for (; offset_l1 < ARCH_N_ENTRY; offset_l1++){

                    if (offset_l0 == 0)
                    {
                        entry = (void *)craft_addr(0, offset_l4, offset_l3, offset_l2, offset_l1 * 8);
                        free_frame(*entry);
                        

                        *entry = 0;
                      //  LOG_INFO("set entry {x} to {d}", entry, *entry);
                        size -= ARCH_PAGE_SIZE;
                        number_of_page_freed++;
                    }
                    LOG_INFO("{d} byte to free", size);
                    if (size <= ARCH_PAGE_SIZE - 1)
                    {
                        LOG_INFO("{d} pages have been freed", number_of_page_freed);
                        return;
                    }
                    offset_l0 = 0;
                }
                entry = (void *)(craft_addr(0, 0, offset_l4, offset_l3, offset_l2 * 8));
                if (is_frame_empty((uint64_t *)(*entry)))
                {
                    LOG_ERR("Freeing were performed on plm2");
                    *entry = 0;
                    free_frame(entry);
                }
                offset_l1 = 0;
            }
            entry = (void *)(craft_addr(0, 0, 0, offset_l4, offset_l3 * 8));
            if (is_frame_empty((uint64_t *)(*entry)))
            {
                LOG_ERR("Freeing were performed on plm3");
                *entry = 0;
                free_frame(entry);
            }

            offset_l2 = 0;
        }
        offset_l3 = 0;
        entry = (void *)(craft_addr(0, 0, 0, 0, offset_l4 * 8));
        if (is_frame_empty((uint64_t *)(*entry)))
        {
            LOG_ERR("Freeing were performed on plm4");
            *entry = 0;
            free_frame(entry);
        }
    }
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

void setup_context_frame(){

    LOG_INFO("Setting up context frame in current virtual address space...");
    
    uintptr_t context_save_addr = 0x7FFFFFFFF000ull;

    LOG_INFO("Without masking : {x} | with masking : {x}", context_save_addr, context_save_addr & CLEAN_BITS_MASK);

    kmmap(context_save_addr, 512, 2);

    LOG_INFO("Current task currently supporting context frame.")

    asm volatile("push rax; mov rax, cr4; or rax, (1<<9); mov cr4, rax");

    LOG_OK("Context frame successfully setup at address {x}", context_save_addr);
}


void kmmap_physical(uint64_t addr, uint64_t physical_addr, size_t size, uint64_t flags){
    uint64_t offset_l4 = SHIFTR(addr, 9, 39);
    uint64_t offset_l3 = SHIFTR(addr, 9, 30);
    uint64_t offset_l2 = SHIFTR(addr, 9, 21);
    uint64_t offset_l1 = SHIFTR(addr, 9, 12);
    uint64_t offset_l0 = SHIFTR(addr, 12, 0);
    uint64_t* entry;

    for (; offset_l4 < ARCH_N_ENTRY; offset_l4++){
        entry = (void*)(craft_addr(0, 0, 0, 0, offset_l4 * 8));
        if (*entry == 0)
            *entry = get_frame() | flags | 1;
        
        for (; offset_l3 < ARCH_N_ENTRY; offset_l3++){
            entry = (void*)(craft_addr(0, 0, 0, offset_l4, offset_l3 * 8));
            if (*entry == 0)
                *entry = get_frame() | flags | 1;

            for (; offset_l2 < ARCH_N_ENTRY; offset_l2++){
                entry = (void*)craft_addr(0, 0, offset_l4, offset_l3, offset_l2 * 8);
                if (*entry == 0)
                    *entry = get_frame() | flags | 1;
                
                for (; offset_l1 < ARCH_N_ENTRY; offset_l1++){
                    entry = (void*)craft_addr(0, offset_l4, offset_l3, offset_l2, offset_l1 * 8);
                    uint64_t space_left = ARCH_PAGE_SIZE - (uint64_t)offset_l0;
                    if (*entry != 0){
                        LOG_ERR("Physical page {x} at logical address {x} will be replace", *entry, entry);
                    }
                    *entry = physical_addr | flags | 1;
                    LOG_INFO("Mapping physical page {x} at address {x} ( {d} | {d} | {d} | {d} | {d} ), remaining size on frame: {x}", *entry, craft_addr(offset_l4, offset_l3, offset_l2, offset_l1, 0),offset_l4,offset_l3,offset_l2,offset_l1,offset_l0, space_left);
                    if (space_left >= size)
                        return;
        
                    physical_addr += space_left;
                    size -= space_left;
                    offset_l0 = 0;
                }
                offset_l1 = 0;
            }
            offset_l2 = 0;
        }
        offset_l3 = 0;
    }


}