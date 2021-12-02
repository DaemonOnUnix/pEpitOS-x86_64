#include <stdint.h>
#include <stddef.h>

// static volatile char test_string[] = "Hello world!";
// static volatile char *rodata = "Hello world!";

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
    asm volatile("push rbp");
    asm volatile("mov rbp, rsp");
    //asm volatile("int 0x80");
    volatile char *plouf = mmap(0x780000, 0x1000, MAP_PRESENT | MAP_WRITE | MAP_USER);
    *plouf = 5;
    while(1);
    _main();
}

void *mmap(uintptr_t addr, size_t size, int flags)
{
    asm volatile("mov r15, 1");
    asm volatile("mov rdi, %0" : : "r"(addr));
    asm volatile("mov rsi, %0" : : "r"(size));
    asm volatile("mov r8, %0" : : "r"((uint64_t)flags));
    void *ret;
    asm volatile("syscall" : "=a"(ret):);
    return ret;
}

int plouf(int a, int b){
    return a + b;
}