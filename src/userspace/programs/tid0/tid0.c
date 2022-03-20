#include <stdint.h>
#include <stddef.h>
#include "../../syscall/syscall.h"

enum map_flags {
    MAP_PRESENT = 1,
    MAP_WRITE = 2,
    MAP_USER = 4,
    MAP_COPY_ON_WRITE = 8,
    MAP_EXECUTE = 16,
    MAP_SWAPPED = 32,
};


__attribute__((section(".entry"), used))
void _main()
{
    ASM("push rbp");
    ASM("mov rbp, rsp");
    //asm volatile("int 0x80");
    volatile char *plouf = mmap(0x780000, 0x1000, MAP_PRESENT | MAP_WRITE | MAP_USER);
    char test[] = "hello world";
    log(test);
    *plouf = 5;
    while(1);
    _main();
}

int plouf(int a, int b){
    return a + b;
}