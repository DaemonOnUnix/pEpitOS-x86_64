
CC = gcc-9
LOGS =
CFLAGS = -Wall -Wextra -O3 -DPTESTS -I$(ARCH_FOLDER)/$(ARCH)/include/ -I$(KERNEL_DIR)/include/ $(LOGS)
ASMPARAM = -f elf64 -F dwarf


ifndef output_type
	echo "output_type not defined"
	exit
endif

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



CFILES := $(shell find $(program) -type f -name '*.c' -printf '%f\n')
SFILES := $(shell find $(program) -type f -name '*.s' -printf '%f\n')
OBJ    := $(SFILES:%.s=$(LOCAL_BUILD_DIR)/%.o)
OBJ    += $(CFILES:%.c=$(LOCAL_BUILD_DIR)/%.o)

all: $(program)

$(shell mkdir -p $(LOCAL_BUILD_DIR))


$(program): $(OUTPUT_DIR)/$(program).$(output_type)

$(OUTPUT_DIR)/$(program).$(output_type) : $(OBJ)
	$(CC) -o $@ $^ $(INTERNALLDFLAGS)

$(LOCAL_BUILD_DIR)/%.o: $(program)/%.c
	$(CC) -c -o $@ $^  $(CFLAGS) $(INTERNALCFLAGS)

$(LOCAL_BUILD_DIR)/%.o: $(program)/%.c
	@$(CC) -o $@ $(CFLAGS) $(INTERNALCFLAGS) -c $<

$(LOCAL_BUILD_DIR)/%.o: $(program)/%.s
	@nasm $(ASMPARAM) -o $@ $<

clean:
	@rm -rf $(LOCAL_BUILD_DIR)
