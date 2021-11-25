#ifndef ALLOC_H
#define ALLOC_H

#include "arch/arch.h"

void* malloc(size_t size);
void* calloc(size_t num, size_t size);
void free(void* ptr);

#endif