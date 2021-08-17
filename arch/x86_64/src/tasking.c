#include "tasking/tasking.h"
#include "log/log.h"
#include "interrupts/defined_interrupts.h"
#include "intel/asm.h"
#include "vmm/vmm.h"
#include "tables/idt.h"
#include "SMP/SMP.h"

task* target_tasks[32] = {0};

void enable_tasking(){
    attach_isr(SWITCH_TASK_INTERRUPT, switch_task_from_interrupt);
}

void switch_task_stackframe(stackframe* regs, stackframe* to_inject){
    LOG_INFO("Injecting registers...");
    LOG_INFO("RIP before : {x}, after : {x}", regs->rip, to_inject->rip);
    // log_stackframe(regs);
    *regs = *to_inject;
    // log_stackframe(regs);

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

void switch_regs_from_interrupt(stackframe* regs){
    context_save* save_frame = get_context();
    // save_frame->stack_save = *regs;
    LOG_INFO("Switching task... context frame at {x}", save_frame);
    switch_task_stackframe(regs, &(save_frame->stack_save));
}

void switch_task_from_interrupt(stackframe* regs){
    task* to_enable = target_tasks[COREID];
    ASSERT(to_enable, "Switching task from interrupt...",
        "Invalid NULL task targeted...");
    context_save* save_frame = get_context();
    save_frame->stack_save = *regs;
    ACTIVE_MAPPING(to_enable->page_directory);
    switch_regs_from_interrupt(regs);
}

void enable_preemption(){
    LOG_INFO("Enabling preemption");
    asm volatile("sti");
}

void disable_preemption(){
    LOG_INFO("Disabling preemption");
    asm volatile("cli");
}

task create_task(){
    disable_preemption();
    uint64_t current_page_directory;
    asm volatile("mov %0, cr3": "=a"(current_page_directory):);
    task to_return = (task){
        .page_directory = create_page_directory()
    };
    asm volatile("mov cr3, %0" :: "a"(to_return.page_directory));
    map_pics();
    LOG_INFO("PICs mapped in new task.");
    setup_context_frame();
    asm volatile("mov cr3, %0" :: "a"(current_page_directory));
    enable_preemption();
    LOG_OK("Task created successfully");
    return to_return;
}

void register_this_context(){
    LOG_INFO("Registering context...")
    switch_task_mapped(target_tasks[COREID]);
    LOG_OK("Context registered.");
}

void modify_target_task(uint8_t core_id, task* target_task){
    target_tasks[COREID] = target_task;
}

task create_task_from_func(uintptr_t func_ptr,
    uintptr_t stack_size, uintptr_t stack_virtual_addr, bool is_userspace, 
    uint16_t cs, uint16_t ss, uint64_t rflags){
    disable_preemption();
    uint64_t current_page_directory;
    asm volatile("mov %0, cr3": "=a"(current_page_directory):);
    task to_return = (task){
        .page_directory = create_page_directory()
    };
    asm volatile("mov cr3, %0" :: "a"(to_return.page_directory));
    map_pics();
    LOG_INFO("PICs mapped in new task.");
    setup_context_frame();
    kmmap(stack_virtual_addr & CLEAN_BITS_MASK, stack_size & CLEAN_BITS_MASK + ARCH_PAGE_SIZE, 3 & (is_userspace ? 4 : 0));
    LOG_INFO("Creating task with func_ptr = {x}", func_ptr);
    get_context()->stack_save.rip = func_ptr;
    // get_context()->stack_save.useresp = 0xdeadb000 + 64 * 4;//(stack_virtual_addr + stack_size) & CLEAN_BITS_MASK ;
    get_context()->stack_save.useresp = stack_virtual_addr + stack_size;//(stack_virtual_addr + stack_size) & CLEAN_BITS_MASK ;
    get_context()->stack_save.rflags = rflags;
    get_context()->stack_save.cs = cs;
    get_context()->stack_save.ss = ss;
    //get_context()->stack_save.rsp = stack_virtual_addr + stack_size & CLEAN_BITS_MASK + ARCH_PAGE_SIZE - 8;
    asm volatile("mov cr3, %0" :: "a"(current_page_directory));
    enable_preemption();
    LOG_OK("Task created successfully");
    return to_return;
}

