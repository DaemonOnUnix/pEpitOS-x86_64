#include "thirdparties/stivale2.h"
#include "freestanding.h"
#include "log/log.h"
#include "string/string.h"

static uint8_t stack[8192];

void *stivale2_get_tag(struct stivale2_struct *stivale2_struct, uint64_t id) {
    struct stivale2_tag *current_tag = (void *)stivale2_struct->tags;
    for (;;) {
        // If the tag pointer is NULL (end of linked list), we did not find
        // the tag. Return NULL to signal this.
        if (current_tag == NULL) {
            return NULL;
        }

        // Check whether the identifier matches. If it does, return a pointer
        // to the matching tag.
        if (current_tag->identifier == id) {
            return current_tag;
        }

        // Get a pointer to the next tag in the linked list and repeat.
        current_tag = (void *)current_tag->next;
    }
}




void _start(struct stivale2_struct *stivale2_struct) {
    struct stivale2_struct_tag_terminal *term_str_tag;
    term_str_tag = stivale2_get_tag(stivale2_struct, STIVALE2_STRUCT_TAG_TERMINAL_ID);

    // Check if the tag was actually found.
    if (term_str_tag == NULL) {
        // It wasn't found, just hang...
        for (;;) {
            asm ("hlt");
        }
    }

    // Let's get the address of the terminal write function.
    void *term_write_ptr = (void *)term_str_tag->term_write;

    // Now, let's assign this pointer to a function pointer which
    // matches the prototype described in the stivale2 specification for
    // the stivale2_term_write function.
    // void (*term_write)(const char *string, size_t length) = term_write_ptr;

    // We should now be able to call the above function pointer to print out
    // a simple "Hello World" to screen.
    // term_write("Hello World", 11);
    // com_initialize(COM1);
#define log(x) com_write(COM1, x, sizeof(x));
    //com_write(COM1, "\n", 12);
    string to_print = string("booted successfully.");
    com_write(COM1, to_print.data, to_print.len);

    // We're done, just hang...
    for (;;) {
        asm ("hlt");
    }
}

static struct stivale2_header_tag_terminal terminal_hdr_tag = {
    .tag = {
        .identifier = STIVALE2_HEADER_TAG_TERMINAL_ID,
        .next = 0
    },
    .flags = 0
};

static struct stivale2_header_tag_framebuffer framebuffer_hdr_tag = {
    // Same as above.
    .tag = {
        .identifier = STIVALE2_HEADER_TAG_FRAMEBUFFER_ID,
        .next = (uint64_t)&terminal_hdr_tag
    },
    .framebuffer_width = 0,
    .framebuffer_height = 0,
    .framebuffer_bpp = 0
};

__attribute__((section(".stivale2hdr"), used)) 
static struct stivale2_header stivale_hdr = {
    .entry_point = (uint64_t)(_start),
    .stack = (uintptr_t)stack + sizeof(stack),
    .flags = 0,
    .tags = (uintptr_t)&framebuffer_hdr_tag
};