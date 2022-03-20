#include "syscall.h"

void *mmap(uintptr_t addr, size_t size, int flags)
{
    ASM("mov r15, %0" : : "r"((uint64_t)SYSCALL_MMAP));
    ASM("mov rdi, %0" : : "r"(addr));
    ASM("mov rsi, %0" : : "r"(size));
    ASM("mov r8, %0" : : "r"((uint64_t)flags));
    void *ret;
    ASM("syscall" : "=a"(ret));
    return ret;
}

void log(char *str)
{
    ASM("mov r15, %0" : : "r"((uint64_t)SYSCALL_LOG));
    ASM("mov rdi, %0" : : "r"((uint64_t)str));
    ASM("syscall");
}