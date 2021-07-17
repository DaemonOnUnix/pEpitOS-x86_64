#include "thirdparties/stivale2.h"
#include "freestanding.h"
#include "log/log.h"
#include "string/string.h"
#include "thirdparties/stivalemgr.h"
#include "tables/gdt.h"
#include "tables/idt.h"
#include "interrupts/kernel_exceptions.h"

void _start(struct stivale2_struct *stivale2_struct) {

    struct stivale2_struct_tag_framebuffer *framebuffer_tag;
    framebuffer_tag = stivale2_get_tag(stivale2_struct, STIVALE2_STRUCT_TAG_FRAMEBUFFER_ID);

    LOG_OK("Booted successfully.")
    LOG_INFO("Stivale2 struct at {x}", stivale2_struct);
    LOG_INFO("Size of Framebuffer : {d} x {d}", framebuffer_tag->framebuffer_width, framebuffer_tag->framebuffer_height);
    LOG_INFO("Framebuffer at {x}", framebuffer_tag->framebuffer_addr);

    setup_gdt();
    setup_idt();
    attach_kernel_exceptions();

    // LOG_ERR("Testing debug mode");
    // asm volatile("int 127");
    // volatile int b = 3 + 4;
    // volatile int c = 3 * 4;
    // asm volatile("int 127");
    // LOG_ERR("Testing breakpoint.");

    // asm volatile("int 3");
    // LOG_OK("Returned from breakpoint.");

    // asm volatile("jmp %0"::"a"(stivale2_struct));

    LOG_ERR("Todo : Physical Memory Manager.");

    LOG_PANIC("Halting...");
    while(1) asm volatile("hlt");
}