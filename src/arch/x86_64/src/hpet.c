#include "UEFI/hpet.h"
#include "UEFI/RSDT.h"
#include "log/log.h"
#include "utils/macros.h"
#include "vmm/vmm.h"
#include "intel/asm.h"

#ifndef HPET_DEBUG
#undef LOG_INFO
#define LOG_INFO(...)
#endif

static uintptr_t hpet_register_address = 0;
static size_t period = 0;

void hpet_init(HPET* hpet){
    ONCE();
    
    if(hpet->address_base.address_space_id){
        LOG_PANIC("HPET is system I/o");
        HALT();
    }
    else{
        LOG_INFO("HPET is memory mapped at address {x} with register offset {x}",hpet->address_base.address ,hpet->address_base.register_bit_width);
    }
    
    hpet_register_address = (uintptr_t)map_physical(hpet->address_base.address, 4096);
    LOG_INFO("HPET found at address: {x} and mapped at address {x}", hpet->address_base.address, hpet_register_address);
    
    uint64_t value = read_mem64(hpet_register_address);
    LOG_INFO("HPET main counter is {d} bits, vendor id: {x}",32 + (32* ((value >> 13)&1)), SHIFTR(value, 16, 16));
    period = (SHIFTR(value, 32, 32));
    LOG_INFO("HPET counter period is: {d} femtoseconds", period);
    
}   

void hpet_reset(){
    LOG_INFO("Resetting hpet timer");
    volatile char* ptr = (char*)hpet_register_address;
    write_mem64(ptr+HPET_General_Configuration, read_mem64(ptr+HPET_General_Configuration) & (~1ull));
    write_mem64(ptr+HPET_Main_Counter_Value,0);
}

void hpet_start(){
    char* ptr = (char*)hpet_register_address;
    write_mem64(ptr+HPET_General_Configuration, read_mem64(ptr+HPET_General_Configuration) | 1);
}


void hpet_wait(size_t ms){
    char* ptr = (char*)hpet_register_address;
    size_t tick_to_wait = (ms * 1000000000000) / period;
    LOG_INFO("HPET waiting {d} ticks", tick_to_wait);
    hpet_reset();
    hpet_start();
    while (read_mem64(ptr+HPET_Main_Counter_Value) < tick_to_wait);
}

size_t hpet_ms_to_tick(size_t ms){
    return (ms * 1000000000000) / period;
}

void hpet_wait_tick(size_t tick){
    char* ptr = (char*)hpet_register_address;
    hpet_start();
    while (read_mem64(ptr+HPET_Main_Counter_Value) < tick);
}

