#include "arch/arch_cpu.h"
#include "interface_struct/interface_struct.h"

static cpu_t cpu[MAX_CORES];

struct cpu* get_cpus() {
    return cpu;
}

void setup_cpus() {
    uint64_t current_plm4 = 0;
    asm volatile("mov %0, cr3" : "=r"(current_plm4));
    // for (int i = 0; i < MAX_CORES; i++) {
    //     cpu[i].flags = 0;
    //     cpu[i].plm4 = current_plm4;
    // }
}
