#include "arch/arch.h"
#include "log/log.h"
#include "tests/tests.h"

#include "multicore/interrupt_lock.h"

void kernel_main(void* generic_structure) {
    
    bootstrap_arch(generic_structure);
    
    lock_ints();

    // unlock_ints();
#   ifdef X86_64
    LOG_OK("x86_64 bootstrap finished !");
#   endif
    
    //launch_tests();
    
    LOG_OK("All work finished.");
    
    halt();
}
