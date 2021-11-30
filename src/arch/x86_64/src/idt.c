#include "freestanding.h"
#include "tables/gdt.h"
#include "log/log.h"
#include "interrupts/stackframe.h"
#include "UEFI/APIC.h"
#define nIDT_ENTRY 256

#ifndef IDT_DEBUG
#undef LOG_INFO
#define LOG_INFO(...)
#endif

typedef struct {
    uint16_t size;
    uintptr_t offset;
} PACKED idt_descriptor_t;

typedef struct {
    uint16_t offset_0_16;
    uint16_t code_segment;
    uint8_t ist;
    uint8_t attributes;
    uint16_t offset_16_32;
    uint32_t offset_32_63;
    uint32_t _zero;
} PACKED idt_entry;

typedef struct {
    idt_entry entries[nIDT_ENTRY];
} PACKED idt_t;

idt_entry create_idt_entry(uintptr_t handler, uint8_t ist, uint8_t idt_flags) {
    return (idt_entry){
        .attributes = idt_flags,
        .ist = ist,

        .offset_0_16 = (handler),
        .offset_16_32 = (handler >> 16),
        .offset_32_63 = (handler >> 32),

        .code_segment = GDT_KERNEL_CODE * 8,
        ._zero = 0
    };
}

static idt_t idt = {};
static idt_descriptor_t idt_descriptor = {
    .size = sizeof(idt_entry) * nIDT_ENTRY,
    .offset = (uintptr_t)(&idt)
};

void(*isr[256])(volatile stackframe*);

extern void  isr0(void);
extern void  isr1(void);
extern void  isr2(void);
extern void  isr3(void);
extern void  isr4(void);
extern void  isr5(void);
extern void  isr6(void);
extern void  isr7(void);
extern void  isr8(void);
extern void  isr9(void);
extern void isr10(void);
extern void isr11(void);
extern void isr12(void);
extern void isr13(void);
extern void isr14(void);
extern void isr15(void);
extern void isr16(void);
extern void isr17(void);
extern void isr18(void);
extern void isr19(void);
extern void isr20(void);
extern void isr21(void);
extern void isr22(void);
extern void isr23(void);
extern void isr24(void);
extern void isr25(void);
extern void isr26(void);
extern void isr27(void);
extern void isr28(void);
extern void isr29(void);
extern void isr30(void);
extern void isr31(void);
extern void  irq0(void);
extern void  irq1(void);
extern void  irq2(void);
extern void  irq3(void);
extern void  irq4(void);
extern void  irq5(void);
extern void  irq6(void);
extern void  irq7(void);
extern void  irq8(void);
extern void  irq9(void);
extern void irq10(void);
extern void irq11(void);
extern void irq12(void);
extern void irq13(void);
extern void irq14(void);
extern void irq15(void);
extern void isr127(void);
extern void isr129(void);

#define IDT_PRESENT   (0b10000000)
#define IDT_INTERRUPT (0b00001110)
#define IDT_TRAP      (0b00001111)

#define set_isr_entry(n) idt.entries[n] = create_idt_entry((uintptr_t)isr## n, 0, IDT_PRESENT | IDT_INTERRUPT)
#define set_irq_entry(n) idt.entries[n+32] = create_idt_entry((uintptr_t)irq## n, 0, IDT_PRESENT | IDT_INTERRUPT)

extern void load_idt(idt_descriptor_t*);

void setup_idt(void) {

    LOG_INFO("Setting up IDT...");

    set_isr_entry(0);
    set_isr_entry(1);
    set_isr_entry(2);
    set_isr_entry(3);
    set_isr_entry(4);
    set_isr_entry(5);
    set_isr_entry(6);
    set_isr_entry(7);
    set_isr_entry(8);
    set_isr_entry(9);
    set_isr_entry(10);
    set_isr_entry(11);
    set_isr_entry(12);
    set_isr_entry(13);
    set_isr_entry(14);
    set_isr_entry(15);
    set_isr_entry(16);

    set_isr_entry(17);
    set_isr_entry(18);
    set_isr_entry(19);

    asm volatile("push rax; mov rax, cr4; or rax, (1<<10); mov cr4, rax; pop rax");
    LOG_OK("Added SIMD exception handler...");
 
    set_isr_entry(20);
    set_isr_entry(21);
    set_isr_entry(22);
    set_isr_entry(23);
    set_isr_entry(24);
    set_isr_entry(25);
    set_isr_entry(26);
    set_isr_entry(27);
    set_isr_entry(28);
    set_isr_entry(29);
    set_isr_entry(30);
    set_isr_entry(31);
    set_irq_entry(0);


    set_isr_entry(127);
    set_isr_entry(129);


    load_idt(&idt_descriptor);

    LOG_OK("IDT loaded, IDT descriptor at {x}, IDT at {x} of size {d}", &idt_descriptor, idt_descriptor.offset, idt_descriptor.size);
}

void log_stackframe(volatile stackframe* regs){
    LOG_PANIC("Stackframe :\nr15 : {x}\tr14 : {x}\tr13 : {x}\tr12 : {x}\nr11 : {x}\tr10 : {x}\tr9 : {x}\tr8 : {x}\nrbp : {x}\t"
        "rdi : {x}\trsi : {x}\nrdx : {x}\trcx : {x}\trbx : {x}\nrax : {x}\tint_no : {x}\t err_code : {x}\nrip : {x}\tcs : {x}\trflags : {x}\nprev. rsp : {x} \tss : {x}", 
        regs->r15, 
        regs->r14, 
        regs->r13, 
        regs->r12,
        regs->r11,
        regs->r10,
        regs->r9,
        regs->r8,
        regs->rbp,
        regs->rdi,
        regs->rsi,
        regs->rdx,
        regs->rcx, 
        regs->rbx, 
        regs->rax,
        regs->int_no,
        regs->err_code,
        regs->rip,
        regs->cs,
        regs->rflags,
        regs->useresp,
        regs->ss
    );
}

void isr_handler(volatile stackframe regs) {
    
    // LOG_INFO("ISR handler called...");
    // log_stackframe(&regs);
    // LOG_INFO("Interrupt number : {d}.", regs.int_no);
    void(*cur_isr)(volatile stackframe*) = isr[regs.int_no];

    LOG_INFO("Interrupt number {d}, ISR to call at : {x}", regs.int_no, cur_isr);


	if (cur_isr != 0){
		cur_isr(&regs);
	} else {
        LOG_PANIC("Calling null isr");
        log_stackframe(&regs);
        while(1) asm volatile("hlt");
    }
}
void irq_handler(volatile stackframe regs) {
    
    // LOG_INFO("ISR handler called...");
    // log_stackframe(&regs);
    // LOG_INFO("Interrupt number : {d}.", regs.int_no);
    void(*cur_isr)(volatile stackframe*) = isr[regs.int_no];

    LOG_INFO("Interrupt number {d}, ISR to call at : {x}", regs.int_no, cur_isr);


	if (cur_isr != 0){
		cur_isr(&regs);
	} else {
        LOG_PANIC("Calling null isr");
        log_stackframe(&regs);
        while(1) asm volatile("hlt");
    }
    cpu_send_EOI();
}

void attach_isr(uint8_t interrupt_number, void(*isr_to_add)(volatile stackframe*)) {
    isr[interrupt_number] = isr_to_add;
    LOG_INFO("Attached isr at {x} to interrupt number {d}.", isr_to_add, interrupt_number);
}