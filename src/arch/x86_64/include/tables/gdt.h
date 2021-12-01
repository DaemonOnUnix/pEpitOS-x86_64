#ifndef kTABLES_GDT
#define kTABLES_GDT

#include "freestanding.h"
#include "intel/tss.h"

#define GDT_KERNEL_CODE (1)
#define GDT_KERNEL_DATA (2)
#define GDT_USER_DATA (4)
#define GDT_USER_CODE (5)

void setup_gdt();

#endif