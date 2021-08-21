#ifndef INTEL_SIMD_H
#define INTEL_SIMD_H

#include "freestanding.h"

void save_simd_context(void* addr);
void load_simd_context(void* addr);

#endif