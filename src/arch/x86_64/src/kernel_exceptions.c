#include "freestanding.h"
#include "tables/idt.h"
#include "log/log.h"
#include "intel/simd.h"
#include "interrupts/stackframe.h"

void panic_common_stub(volatile stackframe* regs){
    LOG_PANIC("Keep kalm, don't panik. Here is a dump of the registers :");
    log_stackframe(regs);
    while(1) asm volatile("hlt");
}

void k_div_by_zero(volatile stackframe* regs){
    LOG_PANIC("Interrupt number : {d} (Div by 0)", regs->int_no);
    panic_common_stub(regs);
}

void k_gpf(volatile stackframe* regs){
    LOG_PANIC("Interrupt number : {d} (GPF)", regs->int_no);
    panic_common_stub(regs);
}

void k_page_fault(volatile stackframe* regs){
    LOG_PANIC("Interrupt number : {d} (Page Fault)", regs->int_no);
    LOG_PANIC("Page Fault due to: {s} | {s} | {s}",
        (regs->err_code & 0b0001 ? "Page protection violation" : "Not present page"),
        (regs->err_code & 0b0010 ? "Write access" : "Read Access"),
        (regs->err_code & 0b0100 ? "Fault in userspace" : "Fault in privileged segment"));
    uint64_t faulty_address;
    asm volatile("mov %0, cr2" : "=a"(faulty_address) :);
    LOG_PANIC("Faulty address is {x}", faulty_address);
    panic_common_stub(regs);
}

void k_debug(volatile stackframe* regs){
    LOG_INFO("Debugging instruction {x}", regs->rip);
    log_stackframe(regs);
    LOG_INFO("End of Debug");
}

void k_breakpoint(volatile stackframe* regs){
    LOG_INFO("Breakpoint at {x}", regs->rip);
    log_stackframe(regs);
    LOG_INFO("End of breakpoint");
}

void change_debug_mode(volatile stackframe* regs){
    LOG_ERR("Switching debug mode. Current is {s}", (regs->rflags & (1 << 8) ? "enabled" : "disabled"));
    regs->rflags ^= (1 << 8);
}

void k_invalid_opcode(volatile stackframe* regs){
    LOG_PANIC("Invalid opcode at {x}", regs->rip);
    panic_common_stub(regs);
}
void timer(volatile stackframe* regs){
    
    UNUSED_VAR(regs);
    
    save_simd_context(CONTEXT_FRAME_ADDR);
    LOG_INFO("timer plouf");
}

void switch_task_from_interrupt(volatile stackframe* regs);

void attach_kernel_exceptions(){
    attach_isr(0, &k_div_by_zero);
    attach_isr(1, &k_debug);
    attach_isr(3, &k_breakpoint);
    attach_isr(6, &k_invalid_opcode);
    attach_isr(13, &k_gpf);
    attach_isr(14, &k_page_fault);
    attach_isr(32, &switch_task_from_interrupt);
    attach_isr(127, &change_debug_mode);
    LOG_OK("Kernel exceptions attached to ISRs.");
}