#ifndef VMM_WRAPPER_H
#define VMM_WRAPPER_H

#include <stddef.h>
#include <stdint.h>

enum map_flags {

    MAP_PRESENT = 1,
    MAP_WRITE = 2,
    MAP_USER = 4,
    MAP_COPY_ON_WRITE = 8,
    MAP_EXECUTE = 16,
    MAP_SWAPPED = 32,
};

uintptr_t space_alloc(size_t size, uintptr_t flags);
void space_free(uintptr_t addr, size_t size);

#endif