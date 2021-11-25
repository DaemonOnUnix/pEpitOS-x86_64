#include "scheduler/scheduler.h"
#include "arch/arch.h"
#include "tasking/tasking.h"


void schedule_next(volatile stackframe* to_inject) {
    UNUSED_VAR(to_inject);
}

void init_scheduler(){
    register_custom_int(31, &schedule_next);
}
