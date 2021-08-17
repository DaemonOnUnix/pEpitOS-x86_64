#ifndef INTERRUPTS_STACKFRAME_H
#define INTERRUPTS_STACKFRAME_H

#include "freestanding.h"

typedef struct {

    uint64_t r15;
    uint64_t r14;
    uint64_t r13;
    uint64_t r12;
    uint64_t r11;
    uint64_t r10;
    uint64_t r9;
    uint64_t r8;

    uint64_t rbp;
    
    uint64_t rdi;
    uint64_t rsi;
    uint64_t rdx;
    uint64_t rcx;
    uint64_t rbx;
    uint64_t rax;
    
    // uint64_t rsp;

    uint64_t int_no;
    // uint32_t align1;
    uint64_t err_code;
    // uint32_t align2;

    //uint64_t rsp;
    uint64_t rip;
    uint16_t cs;
    uint16_t align3;
    uint32_t align4;
    uint64_t rflags;
    uint64_t useresp;
    uint16_t ss;

} PACKED stackframe;

typedef struct {
    uint8_t data[512];
} PACKED fxsaveframe;

typedef struct {
    fxsaveframe simd_save;
    stackframe stack_save;
} PACKED context_save;

#define CONTEXT_FRAME_ADDR ((context_save*)(0x7FFFFFFFF000ull))
#define FXSAVE_FRAME_ADDR  ((fxsaveframe*)(0x7FFFFFFFF000ull))

#endif