
// static volatile char test_string[] = "Hello world!";
// static volatile char *rodata = "Hello world!";

__attribute__((section(".entry"), used))
void _main()
{
    asm volatile("push rbp");
    asm volatile("mov rbp, rsp");
    //asm volatile("int 0x80");
    asm volatile ("syscall");
   while(1);
   _main();
}

int plouf(int a, int b){
    return a + b;
}