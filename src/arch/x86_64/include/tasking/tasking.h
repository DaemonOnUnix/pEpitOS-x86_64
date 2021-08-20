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
task create_task();
void register_this_context();
void modify_target_task(uint8_t core_id, task* target_task);

void enable_tasking();

task create_task_from_func(uintptr_t func_ptr,
    uintptr_t stack_size, uintptr_t stack_virtual_addr, bool is_userspace,
    uint16_t cs, uint16_t ss, uint64_t rflags);

#endif