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

enum msr_reg
{
    MSR_APIC = 0x1B,
    MSR_EFER = 0xC0000080,
    MSR_STAR = 0xC0000081,
    MSR_LSTAR = 0xC0000082,
    MSR_COMPAT_STAR = 0xC0000083,
    MSR_SYSCALL_FLAG_MASK = 0xC0000084,
    MSR_FS_BASE = 0xC0000100,
    MSR_GS_BASE = 0xC0000101,
    MSR_KERN_GS_BASE = 0xc0000102,
};

enum msr_efer_reg
{
    EFER_ENABLE_SYSCALL = 1,
};

enum msr_star_reg
{
    STAR_KCODE_OFFSET = 32,
    STAR_UCODE_OFFSET = 48,
};

enum msr_syscall_flag_reg
{
    SYSCALL_FLAG_TURN_OFF_INTERRUPT = (1 << 9)
};

static inline uint64_t asm_read_msr(enum msr_reg msr)
{

    uint32_t low, high;
    asm volatile("rdmsr": "=a"(low), "=d"(high): "c"((uint64_t)msr));
    return ((uint64_t)high << 32) | low;
}

static inline void asm_write_msr(enum msr_reg msr, uint64_t value)
{
    uint32_t low = value & 0xFFFFFFFF;
    uint32_t high = value >> 32;
    asm volatile("wrmsr":: "c"((uint64_t)msr), "a"(low), "d"(high));
}

#define HALT() while(1) asm volatile("hlt")
#define ACTIVE_MAPPING(x) asm volatile("mov cr3, %0" :: "a"(x))
#define EVAL(...) __VA_ARGS__
#define STRINGIFY(...) #__VA_ARGS__
#define TRIGGER_INTERRUPT(x) asm volatile("int " STRINGIFY(x))

#endif