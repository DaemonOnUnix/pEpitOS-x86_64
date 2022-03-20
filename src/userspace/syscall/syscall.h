#ifndef SYSCALL_H
#define SYSCALL_H

#include <stdint.h>
#include <stddef.h>
#include "../../pEpitOS-kernel/include/syscall/syscall_list.h"

#define ASM(...) asm volatile(__VA_ARGS__)
void *mmap(uintptr_t addr, size_t size, int flags);
void log(char *str);

#endif