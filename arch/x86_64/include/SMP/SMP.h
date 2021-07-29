#ifndef SMP_H
#define SMP_H

#include "freestanding.h"

uint8_t get_core_id_cpuid();
void _start_core();
void launch_APs(struct stivale2_struct_tag_smp* smp_infos);

#endif