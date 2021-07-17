#ifndef kTABLES_IDT
#define kTABLES_IDT

#include "freestanding.h"
#include "interrupts/stackframe.h"

static const uint32_t IDT_DESC_PRESENT = 0x80;

typedef struct
{
    uint16_t	ie_base_lo; /* The lower 16 bits of the address to jump to when this interrupt fires. */
    uint16_t	ie_sel;     /* Kernel segment selector. */
    uint8_t		ie_always0; /* This must always be zero. */
    uint8_t		ie_flags;   /* More flags. See documentation. */
    uint16_t	ie_base_hi; /* The upper 16 bits of the address to jump to. */
}__attribute__((packed)) idt_entry_t;

/**
 * @brief pointer to an array of interrupt handlers, suitable for 'lidt' call
 * 
 */
typedef struct
{
    uint16_t limit;
    uint32_t base; 
}__attribute__((packed)) idt_ptr_t;

typedef struct{
    uint16_t handlerAddressLowBits;
    uint16_t gdt_codeSegmentSelector;
    uint8_t reserved;
    uint8_t access;
    uint16_t handlerAddressHighBits;
} GateDescriptor;

void setup_idt(void);

void attach_isr(uint8_t interrupt_number, void(*isr_to_add)(volatile stackframe*));
void log_stackframe(volatile stackframe* regs);

#endif