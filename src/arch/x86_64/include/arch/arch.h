#ifndef ARCH_H
#define ARCH_H

#define X86_64 1

#include "freestanding.h"
#include "log/log.h"
#include "thirdparties/stivale2.h"

#define STRINGIFY(...) #__VA_ARGS__

typedef uint64_t mapping_t;
typedef int8_t interrupt_t;

void enable_ints();
void disable_ints();
#define trigger_int(x) asm volatile("int " STRINGIFY(x))

void enable_mapping(mapping_t);

bool is_smp_active();

void bootstrap_arch(struct stivale2_struct *stivale2_struct);

void halt();

#endif