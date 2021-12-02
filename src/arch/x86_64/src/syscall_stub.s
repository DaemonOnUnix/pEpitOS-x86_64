%macro save_regs 0
    ; push rax
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

%macro pop_regs 0
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
%endmacro

extern arch_syscall_handler
global syscall_stub
syscall_stub:
    sub rsp, 128 ;red zone skipping
    save_regs
    call arch_syscall_handler
    pop_regs
    add rsp, 128
    o64 sysret
