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
#include "SMP/SMP.h"

#define STRINGIFY(...) #__VA_ARGS__

typedef uint64_t mapping_t;
typedef int8_t interrupt_t;
typedef uint8_t core_id_t;

typedef context_save context_save;
#define stackframe stackframe
#define stack_frame stack_save
#define other_frame simd_save

void enable_ints();
void disable_ints();
#define trigger_int(x) asm volatile("int " STRINGIFY(x))

void enable_mapping(mapping_t);

void bootstrap_arch(void*);

void halt();

#ifndef COREID
#define COREID
#endif

#define is_multicore() is_smp_active()
#define write_string(x) com_write(COM1, x, (size_t)(-1))

#endif