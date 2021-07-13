#if 0
#include "manager/manager.h"
#include "tables/gdt.h"

#define roprint(x) log(x, sizeof(x))


static stivale2_tag *stivale2_get_tag(struct stivale2_struct *stivale2_struct, uint64_t id) {
    struct stivale2_tag *current_tag = (stivale2_tag *)stivale2_struct->tags;
    for (;;) {
        if (current_tag == NULL)
            return NULL;

        if (current_tag->identifier == id)
            return current_tag;

        current_tag = (stivale2_tag *)current_tag->next;
    }
}

Manager::Manager(struct stivale2_struct *stivale2_struct) {
    struct stivale2_struct_tag_terminal *term_str_tag;
    term_str_tag = (stivale2_struct_tag_terminal *)stivale2_get_tag(stivale2_struct, STIVALE2_STRUCT_TAG_TERMINAL_ID);
    
    if (term_str_tag == NULL)
        while(1);

    void (*term_write)(const char *string, size_t length);
    log = reinterpret_cast<decltype(log)>(term_str_tag->term_write);

    roprint("[INFO] JUMPED TO KERNEL.\n");
    roprint("[INFO] STIVALE INFO PARSED.\n");
}

void Manager::textmode_print(const char* str) {
    size_t length = 0;
    while(str[length])
        length++;
    log(str, length);
}

void Manager::textmode_print(const char* str, size_t length) {
    log(str, length);
}

#endif