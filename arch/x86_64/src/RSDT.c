#include "UEFI/RSDT.h"
#include "log/log.h"
#include "vmm/vmm.h"

// static RSDPDescriptor20 RSDP_desc = {0};
static RSDPDescriptor20 *desc_rsdp_20 = 0;

// this function gets the RSDT from the RSDP passed in parameter
void parse_RSDP(uint64_t rsdp_address) {

  ONCE();

  if (desc_rsdp_20->firstPart.Revision)
    desc_rsdp_20 = (RSDPDescriptor20 *)rsdp_address;

  char rsdp_string[9];
  memcpy(rsdp_string, (void *)rsdp_address, 8);
  LOG_INFO("RSDP is located at {x}, rsdp string is \"{s}\"", rsdp_address,
           rsdp_string);

  char *compare_string = "RSD PTR ";
  uint8_t i = 0;
  for (; compare_string[i] == rsdp_string[i] && i < 8; i++)
    ;
  ASSERT(i == 8, "Got RSDP successfully at address {x}",
         "Error while getting RSDP at address {x}", rsdp_address);

  LOG_INFO("RSDP Version {d}.0 detected", desc_rsdp_20->firstPart.Revision + 1);

  desc_rsdp_20 =
      (RSDPDescriptor20 *)physical_to_stivale((uint64_t)desc_rsdp_20);

  LOG_INFO("Virtual RSDP address at {x}", desc_rsdp_20);
}

void parse_RSDT() {

  if (desc_rsdp_20->firstPart.Revision == 0) {
  }
}