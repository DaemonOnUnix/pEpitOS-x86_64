#include "arch/arch.h"

void _start(struct stivale2_struct *stivale2_struct) {
    
    bootstrap_arch(stivale2_struct);

#   ifdef X86_64
    LOG_OK("x86_64 bootstrap finished !");
#   endif
    
    LOG_OK("All work finished.");
    
    halt();
}