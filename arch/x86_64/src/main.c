#include "thirdparties/stivale2.h"
#include "freestanding.h"
#include "log/log.h"
#include "string/string.h"
#include "thirdparties/stivalemgr.h"

void _start(struct stivale2_struct *stivale2_struct) {
    /*struct stivale2_struct_tag_terminal *term_str_tag;
    term_str_tag = stivale2_get_tag(stivale2_struct, STIVALE2_STRUCT_TAG_TERMINAL_ID);

    // Check if the tag was actually found.
    if (term_str_tag == NULL) {
        // It wasn't found, just hang...
        for (;;) {
            asm ("hlt");
        }
    }*/

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
    LOG_INFO("Size of Framebuffer : {d} x {d}", framebuffer_tag->framebuffer_width, framebuffer_tag->framebuffer_width);
    LOG_INFO("Framebuffer at {x}", framebuffer_tag->framebuffer_addr);
    LOG_INFO("Painting it in blue.");
    
    struct framebuffer_pixel* framebuffer = framebuffer_tag->framebuffer_addr;
    for(size_t x = 0; x < framebuffer_tag->framebuffer_width; x++)
    {
        for(size_t y = 0; y < framebuffer_tag->framebuffer_height; y++)
        {
            size_t raw_position = x + y*framebuffer_tag->framebuffer_width; // convertit les valeurs x et y en position 'brute' dans la table 
            framebuffer[raw_position].blue = 255; // met la couleur à bleu
        }
    }
    // strprint(to_print);
    // roprint("[PANIC] Halting.\n");
    // printf("Hello {d}|{s}!\n", 1, "test");

    LOG_ERR("Todo : GDT.");
    LOG_PANIC("Halting...");


    for (;;) {
        asm ("hlt");
    }
}