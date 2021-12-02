#include "syscall/syscall.h"

#include "vmm/vmm.h"
#include "memory/vmmwrapper.h"
#include "log/log.h"



register_t syscall_handler(struct syscall_pack *pack)
{
    LOG_INFO("syscall_id: {x}\nfirst parameter: {x}\nsecond parameter: {x}\nthird parameter: {x}\n", pack->syscall_id, pack->arg1, pack->arg2, pack->arg3);
    switch (pack->syscall_id) {
        case 1:
            {
                LOG_INFO("mmap syscall called");
                kmmap(pack->arg1, pack->arg2, convert_to_arch_flags(pack->arg3) | MAP_PRESENT);
                return pack->arg1;
            }
    }
    return 0x8442;
}