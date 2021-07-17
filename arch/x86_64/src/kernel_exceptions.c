#include "freestanding.h"
#include "tables/idt.h"
#include "log/log.h"

void panic_common_stub(stackframe* regs){
    LOG_PANIC("Keep kalm, don't panik. Here is a dump of the registers :");
    log_stackframe(regs);
    while(1) asm volatile("hlt");
}

void k_div_by_zero(stackframe* regs){
    LOG_PANIC("Interrupt number : {d} (Div by 0)", regs->int_no);
    panic_common_stub(regs);
}

void k_gpf(stackframe* regs){
    LOG_PANIC("Interrupt number : {d} (GPF)", regs->int_no);
    panic_common_stub(regs);
}

void k_page_fault(stackframe* regs){
    LOG_PANIC("Interrupt number : {d} (GPF)", regs->int_no);
    panic_common_stub(regs);
}

void k_breakpoint(stackframe* regs){
    LOG_INFO("Breakpoint at {x}", regs->rip);
    log_stackframe(regs);
    LOG_INFO("End of breakpoint");
}

void attach_kernel_exceptions(){
    attach_isr(0, &k_div_by_zero);
    attach_isr(3, &k_breakpoint);
    attach_isr(13, &k_gpf);
    attach_isr(14, &k_page_fault);
}