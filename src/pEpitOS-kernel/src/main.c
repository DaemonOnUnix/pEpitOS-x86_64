#include "arch/arch.h"
#include "interface_struct/interface_struct.h"
#include "log/log.h"
#include "tests/tests.h"
#include "vmm/vmm.h"

#include "multicore/interrupt_lock.h"

#include "init/initfs.h"
#include "tasking/tasking.h"

void hello()
{
    LOG_OK("Hello");
}

void kernel_main(void* generic_structure) {
    
    interface_struct *interface = bootstrap_arch(generic_structure);
    
    lock_ints();

    // unlock_ints();
#   ifdef X86_64
    LOG_OK("x86_64 bootstrap finished !");
#   endif
    
    // launch_tests();
    // interface->launching_addresses[1] = hello;
    // for(volatile size_t i = 0; i < 100000000; i++);
    // interface->launching_addresses[1] = hello;
    // interface->launching_addresses[2] = hello;
    // interface->launching_addresses[3] = hello;
    // interface->launching_addresses[4] = hello;
    
    LOG_OK("All work finished.");
    
    LOG_INFO("Loading first elf");
    struct file first = *get_files();
    // PANIC("{s}", first.name);

    // enable_tasking();
    // task plouf = create_task_from_func(0x1000, 0x1000, 0x50000, true, 0x20, 0x28, (1<<12));
    // //enable_mapping(plouf.page_directory);
    kmmap(0, first.end - first.begin, 7| (1 << 63));
    memcpy(0, first.begin, first.end - first.begin);
    // modify_target_task(0, &plouf);
    LOG_OK("plouf");
    kmmap(0x10000, 0x2000, 7 | (1 << 63));

    //for(volatile size_t i = 0; i < 0x20; i++)
    //    LOG_OK("{x}", *(uint8_t*)(0x2000 + i));

    asm volatile("movq rsp, %0" : : "r"(0x11000ll));
    //asm volatile("mov ds, 0x28");
    asm volatile ("mov ecx, 0x1000");
    asm volatile ("mov r11, 0x002");
    //while(1);
    asm volatile ("sysretq");

    // unlock_ints();

    halt();
}
