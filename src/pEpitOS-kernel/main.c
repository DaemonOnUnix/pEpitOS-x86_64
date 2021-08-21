#include "arch/arch.h"

void _start(void* generic_structure) {
    
    bootstrap_arch(generic_structure);

#   ifdef X86_64
    LOG_OK("x86_64 bootstrap finished !");
#   endif
    
    LOG_OK("All work finished.");
    
    halt();
}