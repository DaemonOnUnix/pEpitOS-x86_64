#include "arch/arch.h"
#include "log/log.h"

#ifndef DEBUG_INTERRUPT_LOCK
#undef LOG_INFO
#define LOG_INFO(...)
#undef LOG_OK
#define LOG_OK(...)
#endif

static uint8_t lock_level[ARCH_MAX_CORE_NUM] = {0};

void unlock_ints(){
    ASSERT(lock_level[COREID], "Unlocking ints", "lock_level already at 0");
    if(!(--(lock_level[COREID]))) {
        enable_ints();
        LOG_INFO("Interrupts enabled.");
    }
    LOG_INFO("Lock level at {d}", lock_level[COREID]);
}

void lock_ints(){
    ASSERT(lock_level[COREID] != 255, "Locking ints", "Lock_levels at 255");
    lock_level[COREID]++;
    if(lock_level[COREID] == 1){
        disable_ints();
        LOG_INFO("Interrupts disabled.");
    }
    LOG_INFO("Lock level at {d}", lock_level[COREID]);
}

void set_ints(uint8_t int_level){
    LOG_INFO("Setting ints to level {d}.", int_level);
    lock_level[COREID] = int_level;
    if(!lock_level[COREID]){
        enable_ints();
        LOG_INFO("Inerrupts enabled through set_ints.");
    } else {
        disable_ints();
        LOG_INFO("Interrupts disabled through set_ints.");
    }
}
