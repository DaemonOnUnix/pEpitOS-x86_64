#ifndef TASKING_H
#define TASKING_H

#include "arch/arch.h"

enum task_init_flags
{
    TASK_NO_FLAGS = 0,
    TASK_ACCESS_MEMORY = 1 << 0,
    TASK_ACCESS_IO = 1 << 1,
    TASK_ACCESS_INTERRUPT = 1 << 2,
    TASK_DRIVER = 1 << 3,
};

typedef struct {
    mapping_t page_directory;
    enum task_init_flags init_flags;
} task;

void switch_task_stackframe(volatile stackframe* regs, volatile stackframe* to_inject);
void switch_task_mapped();
void switch_task_from_interrupt(volatile stackframe* regs);
void enable_preemption();
void disable_preemption();
task create_task();
void register_this_context();
void modify_target_task(core_id_t core_id, task* target_task);

void enable_tasking();

/**
 * @brief Create a task from func object
 * 
 * @param func_ptr PC to load
 * @param stack_size Size of stack
 * @param stack_virtual_addr Virtual address of stack
 * @param is_userspace Determines if stack should be userspace
 * @param cs Code segment if available in arch
 * @param ss Stack segment if available in arch
 * @param rflags RFLAGS if available in arch
 * @return task The created task
 */
task create_task_from_func(uintptr_t func_ptr,
    uintptr_t stack_size, uintptr_t stack_virtual_addr, bool is_userspace,
    uint16_t cs, uint16_t ss, uint64_t rflags);

#endif