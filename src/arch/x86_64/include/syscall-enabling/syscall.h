#ifndef SYSCALL_H
#define SYSCALL_H

#include "arch/archtypes.h"

struct syscall_pack
{
    uint64_t syscall_id;
    uint64_t arg1;
    uint64_t arg2;
    uint64_t arg3;
    uint64_t arg4;
    uint64_t arg5;
    uint64_t arg6;
};


void syscall_initialize(void);

#endif