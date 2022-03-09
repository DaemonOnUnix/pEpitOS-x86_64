#include <stdint.h>
#include <stddef.h>

#define ASM(...) asm volatile(__VA_ARGS__)

enum map_flags {
    MAP_PRESENT = 1,
    MAP_WRITE = 2,
    MAP_USER = 4,
    MAP_COPY_ON_WRITE = 8,
    MAP_EXECUTE = 16,
    MAP_SWAPPED = 32,
};

void *mmap(uintptr_t addr, size_t size, int flags);

__attribute__((section(".entry"), used))
void _main()
{
    ASM("push rbp");
    ASM("mov rbp, rsp");
    //asm volatile("int 0x80");
    volatile char *plouf = mmap(0x780000, 0x1000, MAP_PRESENT | MAP_WRITE | MAP_USER);
    *plouf = 5;
    while(1);
    _main();
}

void *mmap(uintptr_t addr, size_t size, int flags)
{
    ASM("mov r15, 1");
    ASM("mov rdi, %0" : : "r"(addr));
    ASM("mov rsi, %0" : : "r"(size));
    ASM("mov r8, %0" : : "r"((uint64_t)flags));
    void *ret;
    ASM("syscall" : "=a"(ret):);
    return ret;
}

int plouf(int a, int b){
    return a + b;
}