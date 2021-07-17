#include "pmm/pmm.h"
#include "log/log.h"

static struct stivale2_mmap_entry * memmap = 0;
static uint64_t entry_number = 0;
static uint64_t pg_size = 0;
static bool is_bitmap_set = 0;
static uint64_t nframes = 0;
static uint64_t number_of_frames_without_bitmap = 0;
static uint64_t number_of_frames_without_bitmap_in_c = 0;
static struct stivale2_mmap_entry available[20] = {0};

uint64_t align(uint64_t addr){
    uint64_t temp = addr & (((uint64_t)-1) << pg_size);
    if(temp == addr)
        return temp;
    return temp + pg_size;
}

uintptr_t get_frame(){
    static size_t prev_i = 0;
    if(!is_bitmap_set) {
        for(size_t i = prev_i; available[i].length; i++) {
            if(i > prev_i)
                number_of_frames_without_bitmap_in_c = 0;
            uint64_t current_frame = align(available[i].base) + ((number_of_frames_without_bitmap_in_c) * pg_size);
            if(current_frame < align(available[i].base) + available[i].length - pg_size){
                number_of_frames_without_bitmap_in_c++;
                number_of_frames_without_bitmap++;
                LOG_INFO("PMM : allocating frame without bitmap, number {d} at {x}.", number_of_frames_without_bitmap, current_frame);
                LOG_ERR("TODO : clean the allocated frames.");
                prev_i = i;
                return current_frame;
            }
        }
        LOG_PANIC("Not enough memory for allocation.");
        while(1) asm volatile("hlt");
    } else{
        LOG_PANIC("Not implemented.");
        return 0;
    }
}

void init_pmm(uintptr_t virtual_addr){
    is_bitmap_set = 1;
}

void set_memory_map(struct stivale2_struct_tag_memmap * memmap_tag){
    LOG_INFO("PMM : got the memory map at {x}, of size {d}", memmap_tag->memmap, memmap_tag->entries);
    memmap = memmap_tag->memmap;
    entry_number = memmap_tag->entries;
    for(size_t i = 0; i < entry_number; i++){
        struct stivale2_mmap_entry x = memmap[i];
        if(x.type & 1 && !(x.type ^ 1))
            LOG_INFO("Entry {d} := Base : {x}, Length : {d}, Type : {x}, Unused : {d}", i, x.base, x.length, x.type, x.unused);
    }
    LOG_OK("Memory map dump done.");
}


uint64_t get_size_in_bits(uint64_t page_size){
    pg_size = page_size;
    uint64_t total_frames = 0;
    uint16_t available_entries = 0;
    for(size_t i = 0; i < entry_number; i++){
        struct stivale2_mmap_entry x = memmap[i];
        if(x.type & 1 && !(x.type ^ 1)){
            total_frames += x.length / page_size;
            available[available_entries++] = x;
        }
    }
    LOG_INFO("PMM : {d} usable frames of {x} bits.", total_frames, page_size);
    nframes = total_frames;
    return total_frames;
}
