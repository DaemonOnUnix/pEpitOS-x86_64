#include "UEFI/hpet.h"
#include "UEFI/RSDT.h"
#include "log/log.h"
#include "utils/bitsmanip.h"


static uintptr_t hpet_register_address = 0;
static size_t period = 0;

void hpet_init(HPET* hpet){
    ONCE();
        if(hpet->address_base.address_space_id){
        LOG_INFO("hpet is system I/o");
    }
    else{
        LOG_INFO("hpet is memory mapped at address {x} with register offset {x}",hpet->address_base.address ,hpet->address_base.register_bit_width);
    }
    
    hpet_register_address = hpet->address_base.address | (1ull << 40ull);
    kmmap_physical(hpet_register_address, hpet->address_base.address, 4096,2);
    
    uint64_t value = read_mem64(hpet_register_address);
    LOG_INFO("Main counter is {d} bit, vendor id: {x}",32 + (32* ((value >> 13)&1)), SHIFTR(value, 16, 16));
    uint32_t timer_period = (SHIFTR(value, 32, 32));
    LOG_INFO("Counter period is: {d} femtoseconds", timer_period);
    period = timer_period;
}

    

void hpet_reset(){
    char* ptr = (char*)hpet_register_address;
    uint64_t value = read_mem64(ptr+0xf0);
    LOG_INFO("Current timer value: {x}", value);
    LOG_INFO("enabling timer current register value: {x}",*(uint64_t*)(ptr+0x10));

    write_mem64(ptr+0x10, read_mem64(ptr+0x10) & (~1ull));
    write_mem64(ptr+0xf0,0);
}

void hpet_start(){
    char* ptr = (char*)hpet_register_address;
    write_mem64(ptr+0x10, read_mem64(ptr+0x10) | 1);
}


void hpet_wait(size_t ms){
    char* ptr = (char*)hpet_register_address;
    size_t tick_to_wait = (ms * 1000000000000) / period;
    LOG_INFO("wait for {d} tick", tick_to_wait);
    hpet_reset();
    hpet_start();
    while (read_mem64(ptr+0xf0) < tick_to_wait);

}

