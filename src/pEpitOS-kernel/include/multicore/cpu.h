#ifndef MULTICORE_CPU_H
#define MULTICORE_CPU_H

#include <arch/arch.h>
#include <stdint.h>

typedef uint16_t pid_t;

struct task {
    pid_t pid;
    pid_t tid;
    int32_t priority;
    char state;
    context_save regs;
};

struct cpu {
    char is_present;
    char is_bsp;
    char id;

    struct task *current_task;
    struct task *next_task;
};

#endif