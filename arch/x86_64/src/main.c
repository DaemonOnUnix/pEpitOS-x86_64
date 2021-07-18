#include "thirdparties/stivale2.h"
#include "freestanding.h"
#include "log/log.h"
#include "string/string.h"
#include "thirdparties/stivalemgr.h"
#include "tables/gdt.h"
#include "tables/idt.h"
#include "interrupts/kernel_exceptions.h"
#include "pmm/pmm.h"
#include "vmm/vmm.h"

void _start(struct stivale2_struct *stivale2_struct) {

    struct stivale2_struct_tag_framebuffer *framebuffer_tag;
    framebuffer_tag = stivale2_get_tag(stivale2_struct, STIVALE2_STRUCT_TAG_FRAMEBUFFER_ID);

    LOG_OK("Booted successfully.")
    LOG_INFO("Stivale2 struct at {x}", stivale2_struct);
    LOG_INFO("Size of Framebuffer : {d} x {d}", framebuffer_tag->framebuffer_width, framebuffer_tag->framebuffer_height);
    LOG_INFO("Framebuffer at {x}", framebuffer_tag->framebuffer_addr);
    
    struct stivale2_struct_tag_memmap * memmap_tag = stivale2_get_tag(stivale2_struct, STIVALE2_STRUCT_TAG_MEMMAP_ID);
    LOG_INFO("Memory map at {x}, has {d} entries.", memmap_tag, memmap_tag->entries);

    // while(memmap_tag->entries-->0){
    //     struct stivale2_mmap_entry x = memmap_tag->memmap[memmap_tag->entries];
    //     LOG_INFO("Base : {x}, Length : {d}, Type : {d}, Unused : {d}", x.base, x.length, x.type, x.unused);
    // }

    setup_gdt();
    setup_idt();
    attach_kernel_exceptions();
    set_memory_map(memmap_tag);

#define LITTLE_PAGES 0x1000
#define BIG_PAGES 0x200000


    uint64_t size = get_size_in_bits(LITTLE_PAGES);

    uintptr_t first_frame = get_frame();
    
    for(size_t i = 0; i < size/LITTLE_PAGES; i++)
       get_frame();
    

    init_pmm((uintptr_t)physical_to_stivale(first_frame));
    // for(;;){
    //     uintptr_t got_frame = get_frame();
    //     LOG_INFO("New frame at {x}", got_frame);

    // }
    
    
    // get_frame();
    // get_frame();
    // get_frame();

    // LOG_ERR("Testing debug mode");
    // asm volatile("int 127");
    // volatile int b = 3 + 4;
    // volatile int c = 3 * 4;
    // asm volatile("int 127");
    // LOG_ERR("Testing breakpoint.");

    // asm volatile("int 3");
    // LOG_OK("Returned from breakpoint.");

    // asm volatile("jmp %0"::"a"(stivale2_struct));

    LOG_ERR("Todo : Virtual Memory Manager.");

    LOG_PANIC("Halting...");
    while(1) asm volatile("hlt");
}