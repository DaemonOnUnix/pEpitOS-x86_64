#include "thirdparties/stivale2.h"
#include "freestanding.h"

static uint8_t stack[8192];
void _start(struct stivale2_struct *stivale2_struct);

//extern void* _start;

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

/*
static struct stivale2_header_tag_terminal terminal_hdr_tag = {
    .tag = {
        .identifier = STIVALE2_HEADER_TAG_TERMINAL_ID,
        .next = 0
    },
    .flags = 0
};*/

static struct stivale2_header_tag_framebuffer framebuffer_hdr_tag = {
    // Same as above.
    /*.tag = {
        .identifier = STIVALE2_HEADER_TAG_FRAMEBUFFER_ID,
        .next = (uint64_t)&terminal_hdr_tag
    },
    .framebuffer_width = 0,
    .framebuffer_height = 0,
    .framebuffer_bpp = 0*/
    .tag = 
    {
        .identifier = STIVALE2_HEADER_TAG_FRAMEBUFFER_ID,
        .next = 0 // fin de la liste
    },
    .framebuffer_width  = 1440,
    .framebuffer_height = 900,
    .framebuffer_bpp    = 32
};

static struct stivale2_struct_tag_memmap memmap_tag = {
    .tag = {
        .identifier = STIVALE2_STRUCT_TAG_MEMMAP_ID,
        .next = (uint64_t)&framebuffer_hdr_tag
    },
    .entries = 0,
    .memmap = {{0}}
};

static struct stivale2_struct_tag_rsdp rsdp_tag = {
    .tag = {
        .identifier = STIVALE2_STRUCT_TAG_RSDP_ID,
        .next = (uint64_t)&memmap_tag
    },
    .rsdp = 0
};

static struct stivale2_struct_tag_smp smp_result = {
    .tag = {
        .identifier = STIVALE2_STRUCT_TAG_SMP_ID,
        .next = (uint64_t)&rsdp_tag
    },
    .flags = 0
};

static struct stivale2_header_tag_smp smp_tag = {
    .tag = {
        .identifier = STIVALE2_HEADER_TAG_SMP_ID,
        .next = (uint64_t)&smp_result
    },
    .flags = 0
};

static struct stivale2_struct_tag_modules mod_tag = {
    .tag = {
        .identifier = STIVALE2_STRUCT_TAG_MODULES_ID,
        .next = (uint64_t)&smp_tag
    },
    .module_count = 0
};


__attribute__((section(".stivale2hdr"), used)) 
static struct stivale2_header stivale_hdr = {
    .entry_point = (uint64_t)(_start),
    .stack = (uintptr_t)stack + sizeof(stack),
    .flags = 0,
    .tags = (uintptr_t)&mod_tag
};
