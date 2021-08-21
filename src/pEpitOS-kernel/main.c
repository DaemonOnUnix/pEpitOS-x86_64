#include "arch/arch.h"

void _start(struct stivale2_struct *stivale2_struct) {
    
    bootstrap_arch(stivale2_struct);
    
    LOG_OK("All work finished.");
    
    halt();
}