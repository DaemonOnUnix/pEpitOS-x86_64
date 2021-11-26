#define PTESTS
#ifdef PTESTS

#define TEST_LAUNCH(id) {\
LOG_ERR("------------ Launching "  #id " tests ------------");\
launch_## id ##_tests();\
LOG_ERR("------------ " #id " tests finished ------------");\
}

#include "multicore/lock.h"
#include "log/log.h"
#include "alloc/alloc.h"

void launch_lock_tests(){
}

void launch_malloc_tests(){
    int* p = malloc(sizeof(int));
    qASSERT(p != 0);
    *p = 6;
    qASSERT(*p == 6);
    LOG_INFO("Pointer at {x}", p);
}

void launch_tests(){
    TEST_LAUNCH(malloc);
}

#else

void launch_tests(){}

#endif