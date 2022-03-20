#include "syscall/syscall.h"
#include "syscall/syscall_list.h"

#include "vmm/vmm.h"
#include "memory/vmmwrapper.h"
#include "log/log.h"

register_t syscall_handler(struct syscall_pack *pack)
{
    LOG_INFO("syscall_id: {x}\nfirst parameter: {x}\nsecond parameter: {x}\nthird parameter: {x}\n", pack->syscall_id, pack->arg1, pack->arg2, pack->arg3);
    switch (pack->syscall_id)
    {
    case SYSCALL_MMAP:
    {
        LOG_INFO("mmap syscall called");
        kmmap(pack->arg1, pack->arg2, convert_to_arch_flags(pack->arg3) | MAP_PRESENT);
        return pack->arg1;
    }
    break;
    case SYSCALL_MUNMAP:
    {
        LOG_INFO("munmap syscall called");
        kmunmap(pack->arg1, pack->arg2, MEM_TO_UPPER);
        return 0;
    }
    break;
    case SYSCALL_LOG:
    {
        LOG_INFO("log syscall called");
        LOG_INFO("{s}", (char*)pack->arg1);
        return 0;
    }
    }
    return 0x8442;
}