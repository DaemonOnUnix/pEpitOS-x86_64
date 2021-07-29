#ifndef SMP_LOCKS_H
#define SMP_LOCKS_H

#include <stdatomic.h>

typedef struct {
    atomic_char16_t lock;
} lock;

#define WAIT_LOCK(x) while((x).lock);
#define GRAB_LOCK_f(x) ((x).lock++)
#define GRAB_LOCK(x) WAIT_LOCK(x); GRAB_LOCK_f(x)
#define RELEASE_LOCK_f(x) ((x).lock--)
#define RELEASE_LOCK(x) RELEASE_LOCK_f(x)

#define BEGIN_BOTTLENECK(name) GRAB_LOCK(_lock_##name);
#define END_BOTTLENECK(name) RELEASE_LOCK(_lock_##name);

#define CREATE_LOCK(name) static lock _lock_##name;

#endif