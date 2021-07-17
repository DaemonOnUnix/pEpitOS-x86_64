#include "thirdparties/stivale2.h"
#include "freestanding.h"
#include "log/log.h"
#include "string/string.h"
#include "thirdparties/stivalemgr.h"
#include "tables/gdt.h"
#include "tables/idt.h"

void div_by_zero(stackframe* regs){
    LOG_PANIC("Interrupt number : {d} (Div by 0)", regs->int_no);
    while(1) asm volatile("hlt");
}
void gpf(stackframe* regs){
    LOG_PANIC("Interrupt number : {d} (GPF)", regs->int_no);
    while(1) asm volatile("hlt");
}
void breakpoint(stackframe* regs){
    LOG_INFO("Breakpoint at {x}", regs->rip);
}

void _start(struct stivale2_struct *stivale2_struct) {

    struct framebuffer_pixel
    {
        uint8_t blue;
        uint8_t green;
        uint8_t red;
        uint8_t __unused;
    }__attribute__((packed));

    struct stivale2_struct_tag_framebuffer *framebuffer_tag;
    framebuffer_tag = stivale2_get_tag(stivale2_struct, STIVALE2_STRUCT_TAG_FRAMEBUFFER_ID);


    // string to_print = string("[INFO] booted successfully.\n");

    LOG_OK("Booted successfully.")
    LOG_INFO("Size of Framebuffer : {d} x {d}", framebuffer_tag->framebuffer_width, framebuffer_tag->framebuffer_height);
    LOG_INFO("Framebuffer at {x}", framebuffer_tag->framebuffer_addr);
    /*LOG_INFO("Painting it in white.");
    
    struct framebuffer_pixel* framebuffer = framebuffer_tag->framebuffer_addr;
    for(size_t x = 0; x < framebuffer_tag->framebuffer_width; x++)
    {
        for(size_t y = 0; y < framebuffer_tag->framebuffer_height; y++)
        {
            size_t raw_position = x + y*framebuffer_tag->framebuffer_width; 
            framebuffer[raw_position].red = 255;
            framebuffer[raw_position].blue = 255;
            framebuffer[raw_position].green = 255;
        }
    }*/

    setup_gdt();
    setup_idt();

    asm volatile("mov r15, 64");
    asm volatile("mov r8, 32");
    attach_isr(0, &div_by_zero);
    attach_isr(13, &gpf);
    attach_isr(3, &breakpoint);

    asm volatile("int 0x3");

    //volatile int a = 5 / 0;

    LOG_PANIC("Halting...");


    for (;;) {
        asm ("hlt");
    }
}