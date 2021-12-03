#include "memory/vmmwrapper.h"
#include "vmm/vmm.h"
#include "log/log.h"

// should be defined in arch vmm
uint64_t convert_to_arch_flags(uintptr_t flags);

uintptr_t space_alloc(size_t size, uintptr_t flags)
{
    uint64_t address = search_available(craft_addr(0,0,0,1,0), size);
    if(address == 0)
        return 0;
    kmmap(address, size, convert_to_arch_flags(flags));
    LOG_INFO("Allocated {x} at address {x}", size, address);
    return address;
}

void space_free(uintptr_t addr, size_t size)
{
    kmunmap(addr, size, MEM_TO_UPPER);
    // return 0;
}