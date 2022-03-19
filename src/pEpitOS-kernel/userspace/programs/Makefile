
CC = gcc-9
LOGS =
CFLAGS = -Wall -Wextra -O3 -DPTESTS -I$(ARCH_FOLDER)/$(ARCH)/include/ -I$(KERNEL_DIR)/include/ $(LOGS)
ASMPARAM = -f elf64 -F dwarf


ifndef program
	program = "tid0"
endif


LINK_SCRIPT = ../link.ld
# Build directory for each program
LOCAL_BUILD_DIR = $(program)/build

# Output directory containing each program compiled
OUTPUT_DIR = ../ramdisk




INTERNALLDFLAGS :=     \
	-nostdlib      \
	-T$(LINK_SCRIPT)    \
	-z max-page-size=0x1000\
	#-Wl,-static,-pie,--no-dynamic-linker,-ztext -fno-pic -fpie 

INTERNALCFLAGS  :=                  \
	-std=gnu17           \
	-ffreestanding       \
	-fno-stack-protector \
	-fno-pic -fno-pie    \
	-mno-red-zone		 \
	-mno-sse			 \
	-fno-zero-initialized-in-bss \
	-mcmodel=kernel		 \
	-fno-isolate-erroneous-paths-attribute \
	-fno-delete-null-pointer-checks \
	-masm=intel \
	-m64



CFILES := $(shell find $(program) -type f -name '*.c' -printf '$(program)/%f\n')
SFILES := $(shell find $(program) -type f -name '*.s' -printf '$(program)/%f\n')

all: $(program)


$(shell mkdir -p $(LOCAL_BUILD_DIR))


$(program): $(OUTPUT_DIR)/$(program).so

$(OUTPUT_DIR)/$(program).so: $(LOCAL_BUILD_DIR)/%.o
	$(CC) -o $@ $^ $(INTERNALLDFLAGS)

$(LOCAL_BUILD_DIR)/%.o: $(CFILES)
	$(CC) -c -o $@ $^  $(CFLAGS) $(INTERNALCFLAGS)

$(LOCAL_BUILD_DIR)/%.o: $(CFILES)
	@$(CC) -o $@ $(CFLAGS) $(INTERNALCFLAGS) -c $<

$(LOCAL_BUILD_DIR)/%.o: $(SFILES)
	@nasm $(ASMPARAM) -o $@ $<

clean:
	@rm -rf $(LOCAL_BUILD_DIR)
