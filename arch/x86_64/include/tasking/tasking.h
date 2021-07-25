#ifndef TASKING_H
#define TASKING_H

#include "freestanding.h"
#include "interrupts/stackframe.h"

typedef struct {
    uintptr_t page_directory;
} task;

void switch_task_stackframe(stackframe* regs, stackframe* to_inject);
void switch_task_mapped();
void switch_task_from_interrupt(stackframe* regs);
void enable_preemption();
void disable_preemption();

#endif