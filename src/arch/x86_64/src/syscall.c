#include "intel/asm.h"
#include "log/log.h"
#include "tables/gdt.h"
#include "syscall-enabling/syscall.h"
#include "syscall/syscall.h"

extern void syscall_stub(void);

void syscall_initialize(void)
{
    asm_write_msr(MSR_EFER, asm_read_msr(MSR_EFER) | EFER_ENABLE_SYSCALL);
    asm_write_msr(MSR_STAR, ((uint64_t)(GDT_KERNEL_CODE * 8) << STAR_KCODE_OFFSET) | ((uint64_t)(((GDT_USER_DATA - 1) * 8) | GDT_USER_CODE) << STAR_UCODE_OFFSET));
    asm_write_msr(MSR_LSTAR, (uint64_t)syscall_stub);
    asm_write_msr(MSR_SYSCALL_FLAG_MASK, 0);
}

struct syscall_frame {
    uint64_t r15;
    uint64_t r14;
    uint64_t r13;
    uint64_t r12;
    uint64_t r11;
    uint64_t r10;
    uint64_t r9;
    uint64_t r8;
    uint64_t rbp;
    uint64_t rdi;
    uint64_t rsi;
    uint64_t rdx;
    uint64_t rcx;
    uint64_t rbx;
    // uint64_t rax;
};

void arch_syscall_handler(volatile struct syscall_frame frame)
{
    struct syscall_pack pack;

    asm volatile("mov %0, r15" : "=r"(pack.syscall_id));
    asm volatile("mov %0, rdi" : "=r"(pack.arg1));
    asm volatile("mov %0, rsi" : "=r"(pack.arg2));
    asm volatile("mov %0, r8" : "=r"(pack.arg3));
    asm volatile("mov %0, r9" : "=r"(pack.arg4));
    asm volatile("mov %0, r10" : "=r"(pack.arg5));

    LOG_INFO("syscall_handler called");

    asm volatile("mov rax, %0" : : "r"(syscall_handler(&pack)));

    UNUSED_VAR(frame);
}