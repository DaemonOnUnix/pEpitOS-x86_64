
#include "multicore/lock.h"
#include "arch/arch.h"
#include "memory/vmmwrapper.h"

CREATE_LOCK(lock_alloc);
CREATE_PROTOS(lock_alloc);

extern int liballoc_lock()
{
    //WAIT_LOCK(LOCK_NAME(lock_alloc));
    GRAB_LOCK(LOCK_NAME(lock_alloc));
    return 0;
}

extern int liballoc_unlock()
{
    RELEASE_LOCK(LOCK_NAME(lock_alloc));
    return 0;
}
extern void* liballoc_alloc(int n)
{
    void *ptr = (void*)space_alloc(n, MAP_PRESENT | MAP_WRITE);
    return ptr;
}

extern int liballoc_free(void* p, int n)
{
    space_free((uintptr_t)p, n);
    return 0;
}
