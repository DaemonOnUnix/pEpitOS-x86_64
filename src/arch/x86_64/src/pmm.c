#include "pmm/pmm.h"
#include "log/log.h"
#include "vmm/vmm.h"

#ifndef PMM_DEBUG
#undef LOG_INFO
#define LOG_INFO(...)
#endif

typedef struct {
    uint64_t aligned_base;
    uint64_t length;
    uint64_t first_frame_number;
} localisation_data;

static struct stivale2_mmap_entry * memmap = 0;
static uint64_t entry_number = 0;
static uint64_t pg_size = 0;
static bool is_bitmap_set = 0;
static uint64_t nframes = 0;
static uint64_t number_of_frames_without_bitmap = 0;
static uint64_t number_of_frames_without_bitmap_in_c = 0;
static struct stivale2_mmap_entry available[20] = {0};
static localisation_data loc_datas[20] = {0};
static uint64_t* bitmap_addr = 0;

uint64_t align(uint64_t addr){
    uint64_t temp = addr & (((uint64_t)-1ll) * pg_size);
    if(temp == addr)
        return temp;
    return temp + pg_size;
}

void set_frame(uint64_t frame){
    bitmap_addr[frame/64] |= (1ull << (frame%64));
}


void flip_frame(uint64_t frame){
    // LOG_INFO("Flipping frame number {d}", frame);
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
            // LOG_INFO("page size : {x}", pg_size);
            // LOG_INFO("align of {x} : {x}", available[i].base, align(available[i].base));
            uint64_t current_frame = align(available[i].base) + ((number_of_frames_without_bitmap_in_c) * pg_size);
            if(current_frame < align(available[i].base) + available[i].length - pg_size){
                number_of_frames_without_bitmap_in_c++;
                number_of_frames_without_bitmap++;
                LOG_INFO("PMM : allocating frame without bitmap, number {d} at {x}.", number_of_frames_without_bitmap, current_frame);
                //LOG_ERR("TODO : clean the allocated frames.");
                for(uint64_t* i = physical_to_stivale(current_frame); (uintptr_t)i < (uintptr_t)physical_to_stivale(current_frame + pg_size); i++)
                    *i = 0;
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
            // LOG_INFO("i = {x}, j = {x}", i, j)
            const uint64_t CUR_FRAME_N = cur_frame_n;
            while(available[z].length){
                uint64_t current_frame = align(available[z].base) + ((cur_frame_n) * pg_size);
                // LOG_INFO("Current frame to check : {x} = align({x}) + {x} * {x}", current_frame, available[z].base, cur_frame_n, pg_size);
                if(current_frame <= align(available[z].base) + available[z].length - pg_size){
                    flip_frame(CUR_FRAME_N);
                    for(uint64_t* i = physical_to_stivale(current_frame); (uintptr_t)i < (uintptr_t)physical_to_stivale(current_frame + pg_size); i++)
                        *i = 0;
                    return current_frame;
                }
                // LOG_INFO("{x} -= {x} / {x} ({x})", cur_frame_n, available[z].length, pg_size, available[z].length / pg_size);
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

    ONCE();
    
    is_bitmap_set = 1;
    bitmap_addr = (uint64_t*)virtual_addr;

    LOG_INFO("Got virtual memory address of bitmap at {x}", bitmap_addr);

    for(size_t i = 0; i < (nframes/64)+1; i++)
        bitmap_addr[i] = 0;
    
    LOG_INFO("{d} frames set to unused (0)...", ((nframes/64)+1)*64);

    LOG_INFO("Number of frames previously allocated (without bitmap): {d}", number_of_frames_without_bitmap);

    for(uint64_t i = 0; i < number_of_frames_without_bitmap; i++)
        flip_frame(i);

    LOG_INFO("{d} frames set to used due to bitmap...", number_of_frames_without_bitmap);

    uint64_t i = 0;
    uint64_t current_nframes = 0;
    for(; available[i].length; i++){

        uint64_t base = align(available[i].base);

        loc_datas[i] = (localisation_data){
            .aligned_base = base,
            .first_frame_number = current_nframes,
            .length = available[i].length - (base - available[i].base)
        };

        current_nframes += loc_datas[i].length / 0x1000;

        LOG_INFO("Chunk informations : Created entry {d} { base:= {x}, start frame index:= {x}, length := {x}",
             i, loc_datas[i].aligned_base, loc_datas[i].first_frame_number, loc_datas[i].length);
    }
    
    LOG_OK("Physical Memory Manager initialized successfully.");
}

void set_memory_map(struct stivale2_struct_tag_memmap * memmap_tag){
    LOG_INFO("PMM : got the memory map at {x}, of size {d}", memmap_tag->memmap, memmap_tag->entries);
    memmap = memmap_tag->memmap;
    entry_number = memmap_tag->entries;
    for(size_t i = 0; i < entry_number; i++){
        struct stivale2_mmap_entry x = memmap[i];
        if(x.type & 1 && !(x.type ^ 1))
        {
            LOG_INFO("Entry {d} := Base : {x}, Length : {d}, Type : {x}, Unused : {d}", i, x.base, x.length, x.type, x.unused);
        }
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

void free_frame(uintptr_t address) {
    
    uintptr_t addr = address & CLEAN_BITS_MASK;

    LOG_INFO("PMM : Asking to free address {x}, freeing frame at {x}", address, addr);

    size_t i = 0;
    while(loc_datas[i].length){

        LOG_INFO("Chunk informations : Examining entry {d} { base:= {x}, start frame index:= {x}, length := {x}",
             i, loc_datas[i].aligned_base, loc_datas[i].first_frame_number, loc_datas[i].length);

        if(addr >= loc_datas[i].aligned_base + loc_datas[i].length || addr < loc_datas[i].aligned_base){
            i++;
            continue;
        }
        
        uint64_t frame_number = loc_datas[i].first_frame_number + (addr - loc_datas[i].aligned_base) / pg_size;
        LOG_INFO("PMM : Freed frame number {d} matching address {x} in block number {d}.", frame_number, addr, i);
        // LOG_INFO("{d} + ({x} - {x}) / {d} = {d};", loc_datas[i].first_frame_number, addr, loc_datas[i].aligned_base, pg_size, frame_number);

        flip_frame(frame_number);


        i++;
    }

}