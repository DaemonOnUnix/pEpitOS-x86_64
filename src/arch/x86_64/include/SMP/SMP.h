#ifndef SMP_H
#define SMP_H

#include "freestanding.h"

uint8_t get_core_id_cpuid();
void _start_core();
void launch_APs(struct stivale2_struct_tag_smp* smp_infos, void (*launching_addresses[])());
bool is_smp_active();
uint32_t get_core_id_(uint32_t* lapic_id);
uint32_t get_core_id();
void set_core_id(uint32_t lapic_id);
uint8_t get_booted_cpus_count();

#define COREID (get_core_id())

#endif