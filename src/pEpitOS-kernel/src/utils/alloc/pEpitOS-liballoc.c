
#include "multicore/lock.h"
#include "arch/arch.h"

CREATE_LOCK(lock_alloc);
CREATE_PROTOS(lock_alloc);

extern int liballoc_lock()
{
    WAIT_LOCK(LOCK_NAME(lock_alloc));
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

    return 0;
}
extern int liballoc_free(void* p, int n)
{
    return 0;
}
