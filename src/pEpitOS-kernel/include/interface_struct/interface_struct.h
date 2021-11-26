#ifndef INTERFACE_STRUCT_H
#define INTERFACE_STRUCT_H

#define MAX_CORES 32

#include "freestanding.h"

typedef void (*launching_address)();
typedef struct {
    unsigned char core_number;
    launching_address launching_addresses[MAX_CORES];
} interface_struct;

#endif