#include "intel/cpuinfo.h"
#include "log/log.h"

static cpu_abilities cpuinfo = {0};
static cpu_abilities_rcx cpuinfo_rcx = {0};
static cpu_abilities_rdx cpuinfo_rdx = {0};

enum {
    CPUID_FEAT_ECX_SSE3         = 1 << 0, 
    CPUID_FEAT_ECX_PCLMUL       = 1 << 1,
    CPUID_FEAT_ECX_DTES64       = 1 << 2,
    CPUID_FEAT_ECX_MONITOR      = 1 << 3,  
    CPUID_FEAT_ECX_DS_CPL       = 1 << 4,  
    CPUID_FEAT_ECX_VMX          = 1 << 5,  
    CPUID_FEAT_ECX_SMX          = 1 << 6,  
    CPUID_FEAT_ECX_EST          = 1 << 7,  
    CPUID_FEAT_ECX_TM2          = 1 << 8,  
    CPUID_FEAT_ECX_SSSE3        = 1 << 9,  
    CPUID_FEAT_ECX_CID          = 1 << 10,
    CPUID_FEAT_ECX_FMA          = 1 << 12,
    CPUID_FEAT_ECX_CX16         = 1 << 13, 
    CPUID_FEAT_ECX_ETPRD        = 1 << 14, 
    CPUID_FEAT_ECX_PDCM         = 1 << 15, 
    CPUID_FEAT_ECX_PCIDE        = 1 << 17, 
    CPUID_FEAT_ECX_DCA          = 1 << 18, 
    CPUID_FEAT_ECX_SSE4_1       = 1 << 19, 
    CPUID_FEAT_ECX_SSE4_2       = 1 << 20, 
    CPUID_FEAT_ECX_x2APIC       = 1 << 21, 
    CPUID_FEAT_ECX_MOVBE        = 1 << 22, 
    CPUID_FEAT_ECX_POPCNT       = 1 << 23, 
    CPUID_FEAT_ECX_AES          = 1 << 25, 
    CPUID_FEAT_ECX_XSAVE        = 1 << 26, 
    CPUID_FEAT_ECX_OSXSAVE      = 1 << 27, 
    CPUID_FEAT_ECX_AVX          = 1 << 28,
 
    CPUID_FEAT_EDX_FPU          = 1 << 0,  
    CPUID_FEAT_EDX_VME          = 1 << 1,  
    CPUID_FEAT_EDX_DE           = 1 << 2,  
    CPUID_FEAT_EDX_PSE          = 1 << 3,  
    CPUID_FEAT_EDX_TSC          = 1 << 4,  
    CPUID_FEAT_EDX_MSR          = 1 << 5,  
    CPUID_FEAT_EDX_PAE          = 1 << 6,  
    CPUID_FEAT_EDX_MCE          = 1 << 7,  
    CPUID_FEAT_EDX_CX8          = 1 << 8,  
    CPUID_FEAT_EDX_APIC         = 1 << 9,  
    CPUID_FEAT_EDX_SEP          = 1 << 11, 
    CPUID_FEAT_EDX_MTRR         = 1 << 12, 
    CPUID_FEAT_EDX_PGE          = 1 << 13, 
    CPUID_FEAT_EDX_MCA          = 1 << 14, 
    CPUID_FEAT_EDX_CMOV         = 1 << 15, 
    CPUID_FEAT_EDX_PAT          = 1 << 16, 
    CPUID_FEAT_EDX_PSE36        = 1 << 17, 
    CPUID_FEAT_EDX_PSN          = 1 << 18, 
    CPUID_FEAT_EDX_CLF          = 1 << 19, 
    CPUID_FEAT_EDX_DTES         = 1 << 21, 
    CPUID_FEAT_EDX_ACPI         = 1 << 22, 
    CPUID_FEAT_EDX_MMX          = 1 << 23, 
    CPUID_FEAT_EDX_FXSR         = 1 << 24, 
    CPUID_FEAT_EDX_SSE          = 1 << 25, 
    CPUID_FEAT_EDX_SSE2         = 1 << 26, 
    CPUID_FEAT_EDX_SS           = 1 << 27, 
    CPUID_FEAT_EDX_HTT          = 1 << 28, 
    CPUID_FEAT_EDX_TM1          = 1 << 29, 
    CPUID_FEAT_EDX_IA64         = 1 << 30,
    CPUID_FEAT_EDX_PBE          = 1 << 31
};

cpu_abilities* get_cpu_info(){

    ONCE(&cpuinfo);

    LOG_INFO("Getting processor infos...");

    uint32_t rbx, rcx, rdx;

    asm volatile("cpuid": "=b"(rbx), "=c"(rcx), "=d"(rdx)  : "a"(1));
    // while(1) asm volatile("hlt");

    LOG_INFO("Got { rbx:= {x}, rcx:= {x}, rdx:= {x} } as results of cpuid", rbx, rcx, rdx);

    cpuinfo_rcx.raw = (uint32_t)rcx;
    cpuinfo_rdx.raw = (uint32_t)rdx;

    cpuinfo = (cpu_abilities){
        .HYPERTHREADING = 0,
        .SSE1 = (CPUID_FEAT_EDX_SSE) & rdx,
        .SSE2 = (CPUID_FEAT_EDX_SSE2) & rdx,
        .SSE3 = (CPUID_FEAT_ECX_SSE3) & rcx,
        .SSE4 = (CPUID_FEAT_ECX_SSE4_1) & rcx,
        .XSAVE = (CPUID_FEAT_ECX_XSAVE) & rcx,
        .ACPI = (CPUID_FEAT_EDX_ACPI) & rdx,
        .APIC = (CPUID_FEAT_EDX_APIC) & rdx,
        .X2APIC = (CPUID_FEAT_ECX_x2APIC) & rcx
    };

    LOG_INFO("Checked features :");

    CHECK(cpuinfo_rdx.parsed.SSE,"SSE1 detected","SSE1 unavailable");
    
    CHECK(cpuinfo_rdx.parsed.SSE2,"SSE2 detected","SSE2 unavailable");

    CHECK(cpuinfo_rcx.parsed.SSE3,"SSE3 detected","SSE3 unavailable");
    
    CHECK(cpuinfo_rcx.parsed.SSE4_1,"SSE4.1 detected","SSE4.1 unavailable");
    
    CHECK(cpuinfo_rdx.parsed.ACPI,"ACPI detected","ACPI unavailable");
    
    CHECK(cpuinfo_rdx.parsed.APIC,"APIC detected","APIC unavailable");

    CHECK(cpuinfo_rcx.parsed.x2APIC,"x2APIC detected","x2APIC unavailable");

    return &cpuinfo;

}