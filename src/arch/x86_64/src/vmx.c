#include "log/log.h"
#include "vmm/vmm.h"
#include "intel/cpuinfo.h"
#include "intel/asm.h"

enum VMX_MSR {
    VMX_MSR_IA32_FEATURE_CONTROL = 0x3a,
    VMX_MSR_IA32_VMX_BASIC = 0x480,
    VMX_MSR_IA32_VMX_PINBASED_CTLS = 0x481,
    VMX_MSR_IA32_VMX_PROCBASED_CTLS = 0x482,
    VMX_MSR_IA32_VMX_EXIT_CTLS = 0x483,
    VMX_MSR_IA32_VMX_ENTRY_CTLS = 0x484,
    VMX_MSR_IA32_VMX_MISC = 0x485,
    VMX_MSR_IA32_VMX_CR0_FIXED0 = 0x486,
    VMX_MSR_IA32_VMX_CR0_FIXED1 = 0x487,
    VMX_MSR_IA32_VMX_CR4_FIXED0 = 0x488,
    VMX_MSR_IA32_VMX_CR4_FIXED1 = 0x489,
    VMX_MSR_IA32_VMX_VMCS_ENUM = 0x48a,
    VMX_MSR_IA32_VMX_PROCBASED_CTLS2 = 0x48b,
    VMX_MSR_IA32_VMX_EPT_VPID_CAP = 0x48c,
    VMX_MSR_IA32_VMX_TRUE_PINBASED_CTLS = 0x48d,
    VMX_MSR_IA32_VMX_TRUE_PROCBASED_CTLS = 0x48e,
    VMX_MSR_IA32_VMX_TRUE_EXIT_CTLS = 0x48f,
    VMX_MSR_IA32_VMX_TRUE_ENTRY_CTLS = 0x490,
    VMX_MSR_IA32_VMX_VMFUNC = 0x491,
};

GEN_SET_REG(cr0);
GEN_SET_REG(cr4);
GEN_GET_REG(cr0);
GEN_GET_REG(cr4);

void init_vmx() {
    int vmx_status = get_cpu_info()->VMX;
    if (vmx_status == 0) {
        LOG_INFO("VMX not supported");
        return;
    }
    uint32_t to_be_set_in_cr0 = asm_read_msr(VMX_MSR_IA32_VMX_CR0_FIXED0);
    uint32_t can_be_set_in_cr0 = asm_read_msr(VMX_MSR_IA32_VMX_CR0_FIXED1);
    uint32_t to_be_set_in_cr4 = asm_read_msr(VMX_MSR_IA32_VMX_CR4_FIXED0);
    uint32_t can_be_set_in_cr4 = asm_read_msr(VMX_MSR_IA32_VMX_CR4_FIXED1);
    LOG_INFO("VMX supported, CR0: {x}, {x}, CR4: {x}, {x}", to_be_set_in_cr0, can_be_set_in_cr0, to_be_set_in_cr4, can_be_set_in_cr4);
    // asm_set_cr0(to_be_set_in_cr0 | asm_get_cr0());
    // asm_set_cr4(to_be_set_in_cr4 | asm_get_cr4());
    while(1);
}