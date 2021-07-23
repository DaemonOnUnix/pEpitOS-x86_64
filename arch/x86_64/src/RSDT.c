#include "UEFI/RSDT.h"
#include "log/log.h"
#include "vmm/vmm.h"

//static RSDPDescriptor20 RSDP_desc = {0};
static RSDPDescriptor20* desc_rsdp_20 = 0;

// this function gets the RSDT from the RSDP passed in parameter
void parse_RSDP(uint64_t rsdp_address){

    ONCE();

    if(desc_rsdp_20->firstPart.Revision)
        desc_rsdp_20 = (RSDPDescriptor20*)rsdp_address;

    char rsdp_string[9];
    memcpy(rsdp_string , (void*)rsdp_address, 8);
    LOG_INFO("RSDP is located at {x}, rsdp string is \"{s}\"", rsdp_address, rsdp_string);

    char* compare_string = "RSD PTR ";
    uint8_t i = 0;
    for(; compare_string[i] == rsdp_string[i] && i < 8; i++);
    ASSERT(i == 8, "Got RSDP successfully at address {x}", "Error while getting RSDP at address {x}", rsdp_address);
    
    LOG_INFO("RSDP Version {d}.0 detected", desc_rsdp_20->firstPart.Revision+1);

    desc_rsdp_20 = (RSDPDescriptor20*)physical_to_stivale((uint64_t)desc_rsdp_20);

    LOG_INFO("Virtual RSDP address at {x}", desc_rsdp_20);

}

bool checksum(ACPISDTHeader* header){
    uint8_t sum = 0;
    for(size_t i = 0; i < header->Length; i++){
        sum += ((char*)header)[i];
    }
    return sum == 0;
}
uint64_t io_apic_register = 0;
uint64_t lapic_register = 0;


void parse_MADT(MADT* madt){
    // Pointer to the first entry
    char* ptr = (char*)madt + 0x2C;
    size_t numcore = 0;
    LOG_INFO("LAPIC address is: {x}", madt->lapic_addr);
    LOG_INFO("madt length: {d}, end ptr: {x}", madt->h.Length, (char*)madt + madt->h.Length);
    // HALT();
    while (ptr < (char*)madt + madt->h.Length)
    {
        switch (ptr[0])
        {
        case MADT_LAPIC:{
            numcore++;
            if(ptr[4] & 1){
                LOG_INFO("processor {x} is {s}",ptr[2], (ptr[4] & 0)? "enable" : "disable");
            }
            else{
                LOG_INFO("processor {x} can't be enable", ptr[2]);
            }
        }
            break;
        case MADT_IOAPIC:{
            LOG_INFO("local I/O apic, id: {x} register: {x}, Global system interrupt base: {x}",ptr[1] ,*((uint32_t*)(ptr+4)), *((uint32_t*)(ptr+8)));
            
            kmmap_physical(0xffdeadb000, *((uint32_t*)(ptr+4)) ,4096, 2);
            // io_apic_register = physical_to_stivale(*((uint32_t*)(ptr+4)));
            io_apic_register = 0xffdeadb000;
            uint32_t volatile *ioapic = (uint32_t volatile *)io_apic_register;
            ioapic[0] = (1 & 0xff);
            ioapic[4];
            LOG_INFO("Maximum redirection is: {d}", SHIFTR(ioapic[4],8, 16));
        }
            break;
        case MADT_INT_SRC_OVR:{
            LOG_INFO("foud interrupt source override structure");
            LOG_INFO("Bus source {d}, IRQ source {d}, Global system interrupt {x}", ptr[2], ptr[3], *((uint32_t*)(ptr + 4)));
        }
        break;
        case MADT_LAPIC_ADDR_OVR:{
            LOG_INFO("Local APIC address is: {x}", *((uint64_t*)(ptr+4)));
        }
        default:
            LOG_INFO("{x} is not yet implemented", *ptr)
        break;        
        }
        ptr += ptr[1];
    }
    LOG_INFO("{d} core detected", numcore);
}

void parse_RSDT(){
    RSDT *rsdt = (RSDT*)physical_to_stivale(desc_rsdp_20->firstPart.RsdtAddress);
    size_t entries = (rsdt->h.Length - sizeof(ACPISDTHeader)) / 4;
    for (size_t i = 0; i < entries; i++)
    {
        char name[5] = {0};
        ACPISDTHeader *h = (ACPISDTHeader *)physical_to_stivale(rsdt->PointersToOtherSDT[i]);
        memcpy(name, h->Signature,4);
        ASSERT(checksum(h), "Table {s} is valid", "Table {s} is invalid", name);

        if(!strcmp(name,"APIC")){
            parse_MADT((MADT*)h);
        }
    }
}