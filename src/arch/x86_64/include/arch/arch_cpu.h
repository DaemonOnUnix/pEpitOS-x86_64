#ifndef ARCH_CPU_H
#define ARCH_CPU_H

#include <cstdint>
#include <stddef.h>
#include <stdint.h>

enum cpu_flags {
    IS_INTERRUPT_CONTROLLER_MAPPED = 1 << 0,
    IS_INTERRUPT_CONTROLLER_ENABLED = 1 << 1,
};

struct mapping_info {
    uintptr_t mapping;
    uint32_t flags;
};

struct cpu {
    struct mapping_info *current_task;
    uintptr_t lapic_timer_base;
    uintptr_t lapic_base;
    uint32_t ticks_in_10ms;
};

struct cpu* get_cpus();
void setup_cpus();

#endif