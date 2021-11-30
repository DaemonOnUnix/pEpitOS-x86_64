
int plouf(int a, int b){
    return a + b;
}

static volatile char test_string[] = "Hello world!";
static volatile char *rodata = "Hello world!";

__attribute__((section(".entry"), used))
void _main()
{
    while(1);
}