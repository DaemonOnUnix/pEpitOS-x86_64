#include "tasking/tasking.h"
#include "log/log.h"
#include "interrupts/defined_interrupts.h"

void switch_task_stackframe(stackframe* regs, stackframe* to_inject){
    LOG_INFO("Injecting registers...");
    *regs = *to_inject;
}

context_save* get_context(){
    return (context_save*)CONTEXT_FRAME_ADDR;
}

void switch_task_mapped(task* to_enable){
    LOG_INFO("Enabling task at {x}", (uintptr_t)to_enable);
    context_save* save_frame = get_context();
    // should save current context
    ACTIVE_MAPPING(to_enable->page_directory);
    TRIGGER_INTERRUPT(SWITCH_TASK_INTERRUPT);
}

void switch_task_from_interrupt(stackframe* regs){
    context_save* save_frame = get_context();
    LOG_INFO("Switching task... context frame at {x}", save_frame);
    switch_task_stackframe(regs, &(save_frame->stack_save));
}

void enable_preemption(){
    LOG_ERR("TODO");
}

void disable_preemption(){
    LOG_ERR("TODO");
}

