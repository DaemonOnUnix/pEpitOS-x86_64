
section .text

global gdt_flush
global tss_flush

load_idt:
	mov rdx, rdi
	lidt [rdx]
	sti 				;turn on interrupts
	ret

global idt_flush    ; Allows the C code to call idt_flush().

idt_flush:
    mov rax, rdi  ; Get the pointer to the IDT, passed as a parameter.
    lidt [rax]        ; Load the IDT pointer.
    ret


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

[GLOBAL tss_flush]    ; Allows our C code to call tss_flush().
tss_flush:
   mov ax, 0x2B      ; Load the index of our TSS structure - The index is
                     ; 0x28, as it is the 5th selector and each is 8 bytes
                     ; long, but we set the bottom two bits (making 0x2B)
                     ; so that it has an RPL of 3, not zero.
   ltr ax            ; Load 0x2B into the task state register.
   ret 