#if 0
#include "tasking/tasking.h"
#include "log/log.h"
#include "interrupts/defined_interrupts.h"
#include "intel/asm.h"
#include "vmm/vmm.h"
#include "tables/idt.h"
#include "SMP/SMP.h"
#endif

#include "tasking/tasking.h"
#include "arch/arch.h"
#include "log/log.h"
#include "vmm/vmm.h"
#include "multicore/interrupt_lock.h"
#define ACTIVE_MAPPING(...) enable_mapping(__VA_ARGS__)

task* target_tasks[32] = {0};

void enable_tasking(){
    register_custom_int(arch_SWITCH_TASK_INT, switch_task_from_interrupt);
}

void switch_task_stackframe(volatile stackframe* regs, volatile stackframe* to_inject){
    LOG_INFO("Injecting registers...");
    LOG_INFO("IP before : {x}, after : {x}", regs->rip, to_inject->rip);
    log_stackframe(regs);
    *regs = *to_inject;
    log_stackframe(regs);
}

context_save* get_context(){
    return (context_save*)CONTEXT_FRAME_ADDR;
}

void switch_task_mapped(task* to_enable){
    LOG_INFO("Enabling task at {x}", (uintptr_t)to_enable);
    context_save* save_frame = get_context();

    UNUSED_VAR(save_frame);

    // TODO : should save current context
    enable_mapping(to_enable->page_directory);
    // TRIGGER_INTERRUPT(SWITCH_TASK_INTERRUPT);
    trigger_int(arch_SWITCH_TASK_INT);
}

void switch_regs_from_interrupt(volatile stackframe* regs){
    context_save* save_frame = get_context();
    // save_frame->stack_save = *regs;
    LOG_INFO("Switching task... context frame at {x}", save_frame);
    switch_task_stackframe(regs, &(save_frame->stack_save));
}

void switch_task_from_interrupt(volatile stackframe* regs){
    task* to_enable = target_tasks[COREID];
    ASSERT(to_enable, "Switching task from interrupt...",
        "Invalid NULL task targeted...");
    context_save* save_frame = get_context();
    save_frame->stack_save = *regs;
    enable_mapping(to_enable->page_directory);
    switch_regs_from_interrupt(regs);
}

void enable_preemption(){
    LOG_INFO("Enabling preemption");
    asm volatile("sti");
}

void disable_preemption(){
    LOG_INFO("Disabling preemption");
    disable_ints();
}

task create_task(){
    disable_preemption();
    mapping_t current_page_directory = get_current_mapping();
    task to_return = (task){
        .page_directory = create_page_directory()
    };
    enable_mapping(to_return.page_directory);
    initialize_mapping();
    LOG_INFO("Mapping initialized.");
    setup_context_frame();
    enable_mapping(current_page_directory);
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
    target_tasks[core_id] = target_task;
}

task create_task_from_func(uintptr_t func_ptr,
    uintptr_t stack_size, uintptr_t stack_virtual_addr, bool is_userspace, 
    uint16_t cs, uint16_t ss, uint64_t rflags){
    lock_ints();
    // disable_preemption();
    mapping_t current_page_directory = get_current_mapping();
    task to_return = (task){
        .page_directory = create_page_directory()
    };
    enable_mapping(to_return.page_directory);
    initialize_mapping();
    LOG_INFO("Mapping initialized.");
    setup_context_frame();
    kmmap(stack_virtual_addr & CLEAN_BITS_MASK, (stack_size & CLEAN_BITS_MASK) + ARCH_PAGE_SIZE, 3 & (is_userspace ? 4 : 0));
    LOG_INFO("Creating task with func_ptr = {x}", func_ptr);
    get_context()->stack_save.ip = func_ptr;
    // get_context()->stack_save.useresp = 0xdeadb000 + 64 * 4;//(stack_virtual_addr + stack_size) & CLEAN_BITS_MASK ;
    get_context()->stack_save.ret_sp = stack_virtual_addr + stack_size;//(stack_virtual_addr + stack_size) & CLEAN_BITS_MASK ;
#   ifdef X86_64
        get_context()->stack_save.rflags = rflags;
        get_context()->stack_save.cs = cs;
        get_context()->stack_save.ss = ss;
#   endif
    //get_context()->stack_save.rsp = stack_virtual_addr + stack_size & CLEAN_BITS_MASK + ARCH_PAGE_SIZE - 8;
    // asm volatile("mov cr3, %0" :: "a"(current_page_directory));
    enable_mapping(current_page_directory);
    // enable_preemption();
    unlock_ints();
    LOG_OK("Task created successfully");
    return to_return;
}

