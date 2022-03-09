section .text

extern isr_handler

global load_gdt
load_gdt:
    lgdt [rdi]
    mov ax, 0x10
    mov ss, ax
    mov ds, ax
    mov es, ax
    mov rax, qword .trampoline
    push qword 0x8
    push rax
    o64 retf
.trampoline:
    ret

global load_idt
load_idt:
    lidt [rdi]
    ret

%macro ISR_NOERRCODE 1
    [GLOBAL isr%1]
    isr%1:
        push QWORD 128
        push QWORD %1
        jmp isr_common_stub
%endmacro

%macro ISR_ERRCODE 1
    [GLOBAL isr%1]
    isr%1:
        push QWORD %1
        jmp isr_common_stub
%endmacro

%macro save_context 0
    push rax
    push rbx
    push rcx
    push rdx
    push rsi
    push rdi
    push rbp
    push r8
    push r9
    push r10
    push r11
    push r12
    push r13
    push r14
    push r15
%endmacro

%macro load_context 0
    pop r15
    pop r14
    pop r13
    pop r12
    pop r11
    pop r10
    pop r9
    pop r8
    pop rbp
    pop rdi
    pop rsi
    pop rdx
    pop rcx
    pop rbx    
    pop rax
%endmacro

ISR_NOERRCODE  0
ISR_NOERRCODE  1
ISR_NOERRCODE  2
ISR_NOERRCODE  3
ISR_NOERRCODE  4
ISR_NOERRCODE  5
ISR_NOERRCODE  6
ISR_NOERRCODE  7
ISR_ERRCODE    8
ISR_NOERRCODE  9
ISR_ERRCODE   10
ISR_ERRCODE   11
ISR_ERRCODE   12
ISR_ERRCODE   13
ISR_ERRCODE   14
ISR_NOERRCODE 15
ISR_NOERRCODE 16
ISR_NOERRCODE 17
ISR_NOERRCODE 18
ISR_NOERRCODE 19
ISR_NOERRCODE 20
ISR_NOERRCODE 21
ISR_NOERRCODE 22
ISR_NOERRCODE 23
ISR_NOERRCODE 24
ISR_NOERRCODE 25
ISR_NOERRCODE 26
ISR_NOERRCODE 27
ISR_NOERRCODE 28
ISR_NOERRCODE 29
ISR_NOERRCODE 30
ISR_NOERRCODE 31
ISR_NOERRCODE 127
ISR_NOERRCODE 128
ISR_NOERRCODE 129

global save_simd_context
save_simd_context:
    fxsave64 [rdi]
    ret

global load_simd_context
load_simd_context:
    fxrstor64 [rdi]
    ret

isr_common_stub:
    save_context
    call isr_handler
    load_context
    add rsp, 16
    iretq

%macro IRQ 2
[GLOBAL irq%1]
    irq%1:
        push 0
        push %2
        jmp irq_common_stub
%endmacro

IRQ  0, 32
IRQ  1, 33
IRQ  2, 34
IRQ  3, 35
IRQ  4, 36
IRQ  5, 37
IRQ  6, 38
IRQ  7, 39
IRQ  8, 40
IRQ  9, 41
IRQ 10, 42
IRQ 11, 43
IRQ 12, 44
IRQ 13, 45
IRQ 14, 46
IRQ 15, 47

extern irq_handler
irq_common_stub:
    save_context
    call irq_handler
    load_context
    add rsp, 16
    sti
    iretq

global enable_sse
enable_sse:
    push    rbp
    mov     rbp, rsp
    mov     rax, cr0
    or      rax, 2
    mov     cr0, rax
    mov     eax, 0
    pop     rbp
    ret
