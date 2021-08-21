#ifndef ARCH_H
#define ARCH_H

#define X86_64 1

#define MULTIBOOT1 0
#define MULTIBOOT2 0
#define TOMATOBOOT 0
#define STIVALE1 0
#define STIVALE2 1

#include "freestanding.h"
#include "log/log.h"
#include "thirdparties/stivale2.h"
#include "interrupts/stackframe.h"

#define STRINGIFY(...) #__VA_ARGS__

typedef uint64_t mapping_t;
typedef int8_t interrupt_t;

typedef context_save context_save;
#define stack_frame stack_save
#define other_frame simd_save

void enable_ints();
void disable_ints();
#define trigger_int(x) asm volatile("int " STRINGIFY(x))

void enable_mapping(mapping_t);

void bootstrap_arch(void*);

void halt();

#endif