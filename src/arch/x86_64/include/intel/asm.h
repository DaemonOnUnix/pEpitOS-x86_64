#ifndef INTEL_ASM
#define INTEL_ASM

#include "freestanding.h"

static inline uint8_t asm_in8(uint16_t port)
{
    uint8_t data;
    asm volatile("inb %0, %1"
                 : "=a"(data)
                 : "dN"(port));
    return data;
}

static inline uint16_t asm_in16(uint16_t port)
{
    uint16_t data;
    asm volatile("inw %0, %1"
                 : "=a"(data)
                 : "d"(port));
    return data;
}

static inline uint32_t asm_in32(uint16_t port)
{
    uint32_t data;
    asm volatile("inl %0, %1"
                 : "=a"(data)
                 : "d"(port));
    return data;
}

static inline void asm_out8(uint16_t port, uint8_t data)
{
    asm volatile("outb %1, %0"
                 :
                 : "a"(data), "Nd"(port));
}

static inline void asm_out16(uint16_t port, uint16_t data)
{
    asm volatile("outw %1, %0"
                 :
                 : "a"(data), "d"(port));
}

static inline void asm_out32(uint16_t port, uint32_t data)
{
    asm volatile("outl %1, %0"
                 :
                 : "a"(data), "d"(port));
}

#define HALT() while(1) asm volatile("hlt")
#define ACTIVE_MAPPING(x) asm volatile("mov cr3, %0" :: "a"(x))
#define EVAL(...) __VA_ARGS__
#define STRINGIFY(...) #__VA_ARGS__
#define TRIGGER_INTERRUPT(x) asm volatile("int " STRINGIFY(x))

#endif