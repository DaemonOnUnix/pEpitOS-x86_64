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
static uint64_t* bitmap_addr = 0;

uint64_t align(uint64_t addr){
    uint64_t temp = addr & (((uint64_t)-1) << pg_size);
    if(temp == addr)
        return temp;
    return temp + pg_size;
}

void set_frame(uint64_t frame){
    bitmap_addr[frame/64] |= (1ull << (frame%64));
}


void flip_frame(uint64_t frame){
    bitmap_addr[frame/64] ^= (1ull << (frame%64));
}

uint64_t read_frame(uint64_t frame){
    return (bitmap_addr[frame/64] >> (frame%64))&1;
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
    } else{
        size_t i = 0;
        while(i < nframes/64 && bitmap_addr[i] == 0xffffffffffffffff) //== (uint64_t)-1)
            i++;

        if(i != nframes/64){
            size_t j = 0;
            while(bitmap_addr[i] & (1ull << (j)))
                j++;
            size_t z = 0;
            uint64_t cur_frame_n = i * 64 + j;
            const uint64_t CUR_FRAME_N = cur_frame_n;
            while(available[z].length){
                uint64_t current_frame = align(available[z].base) + ((cur_frame_n) * pg_size);
                if(current_frame < align(available[z].base) + available[z].length - pg_size){
                    flip_frame(CUR_FRAME_N);
                    return current_frame;
                }
                cur_frame_n -= available[z].length / pg_size;
                z++;
            }
        }
        
    }
    LOG_PANIC("Not enough memory for allocation.");
    asm volatile ("cli");
    while(1) asm volatile("hlt");
}


void init_pmm(uintptr_t virtual_addr){
    is_bitmap_set = 1;
    bitmap_addr = virtual_addr;

    LOG_INFO("Got virtual memory address of bitmap at {x}", bitmap_addr);

    for(size_t i = 0; i < (nframes/64)+1; i++)
        bitmap_addr[i] = 0;
    
    LOG_INFO("{d} frames set to unused (0)...", ((nframes/64)+1)*64);

    LOG_INFO("Number of frames previously allocated (without bitmap): {d}", number_of_frames_without_bitmap);

    for(uint64_t i = 0; i < number_of_frames_without_bitmap; i++)
        flip_frame(i);

    LOG_INFO("{d} frames set to used due to bitmap...", number_of_frames_without_bitmap);
        
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
