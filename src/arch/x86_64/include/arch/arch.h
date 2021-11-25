#ifndef ARCH_H
#define ARCH_H

#define X86_64 1

#define MULTIBOOT1 0
#define MULTIBOOT2 0
#define TOMATOBOOT 0
#define STIVALE1 0
#define STIVALE2 1

#include "freestanding.h"
#include "serial/com.h"
#include "thirdparties/stivale2.h"
#include "interrupts/stackframe.h"
#include "SMP/SMP.h"
#include "UEFI/APIC.h"
#include "tables/idt.h"
#include "pmm/pmm.h"

#define STRINGIFY(...) #__VA_ARGS__

//
// virtual memory interface section
//

/**
 * @brief Type for a mapping, for instance a page directory
 */
typedef uint64_t mapping_t;

/**
 * @brief Function to enable a virtual memory mapping
 */
void enable_mapping(mapping_t);

/**
 * @brief Get the current mapping, such as top page level in case of paging
 * 
 * @return mapping_t The interface object describing the mapping, a.d. in arch.h
 */
mapping_t get_current_mapping();

/**
 * @brief Function to be called each time a virtual memory mapping
 * will be created
 */
#define initialize_mapping() map_pics()

/**
 * @brief Gets the first valid address according to arch setup.
 */
#define GET_FIRST_VALID_ADDRESS() (1ull<<40)

//
// Interrupts interface section
//

/**
 * @brief Type for an interrupt number
 */
typedef int8_t interrupt_t;

/**
 * @brief Type for a stackframe pushed by interrupt handler
 */
#define stackframe stackframe

/**
 * @brief Function to enable interrupts
 */
void enable_ints();

/**
 * @brief Function to disable interrupts
 */
void disable_ints();

/**
 * @brief Macro to trigger a specified interrupt number.
 * @warning Number should be compile-time.
 */
#define trigger_int(x) asm volatile("int " STRINGIFY(x))

/**
 * @brief Function ro register an interrupt handler
 */
#define register_custom_int(num, handler) attach_isr(num, handler)

//
// Multicore section
//

/**
 * @brief Type for a core ID
 */
typedef uint8_t core_id_t;

#ifndef COREID
/**
 * @brief Macro to get the current core ID
 */
#define COREID
#endif

/**
 * @brief Function to get the multicore status of the whole system
 */
#define is_multicore() is_smp_active()

/**
 * @brief A maximum core number, used by static arrays for shared memory
 * 
 */
#define ARCH_MAX_CORE_NUM 32

//
// Tasking section
//

/**
 * @brief Type for a context saving
 */
typedef context_save context_save;

/**
 * @brief Member name in the latter type for the stack frame
 */
#define stack_frame stack_save

/**
 * @brief Member name in the latter type for the other saves
 */
#define other_frame simd_save

//
// Register section (in stackframe)
//

/**
 * @brief Macro for instruction pointer
 */
#define ip rip

/**
 * @brief Macro for stack pointer
 */
#define sp rsp

/**
 * @brief Macro for return stack pointer
 */
#define ret_sp useresp


///
/// Bootstraps section
///

/**
 * @brief First function to be called after passing hand to kernel
 */
void bootstrap_arch(void*);


///
/// Tools section
///

/**
 * @brief Halts the CPU
 */
void halt();

/**
 * @brief write a string
 */
#define write_string(x) com_write(COM1, x, (size_t)(-1))

//
// Used interrupts section
//

/**
 * @brief Interrupt number for a syscall
 */
#define arch_SYSCALL_INT 128

/**
 * @brief Interrupt number for a manual task switch
 */
#define arch_SWITCH_TASK_INT 129

//
// Physical memory section
//

/**
 * @brief Requests a page to pmm
 */
#define new_physical_page() get_frame()

#endif