CC = gcc-9
LOGS =
CFLAGS = -Wall -Wextra -O3 -DPTESTS -I$(ARCH_FOLDER)/$(ARCH)/include/ -I$(KERNEL_DIR)/include/ $(LOGS)

ASMPARAM = -f elf64 -F dwarf

BUILD = build

LINK_SCRIPT = link.ld

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

SRCDIRS := $(shell find . -type d)

CFILES := $(shell find . -type f -name '*.c')
SFILES := $(shell find . -type f -name '*.s')

OBJ    := $(SFILES:%.s=$(BUILD)/%.so)
OBJ    += $(CFILES:%.c=$(BUILD)/%.so)

$(shell mkdir -p $(addprefix $(BUILD)/,$(SRCDIRS)))

all: compile

.PHONY: all clean compile

compile: $(BUILD)/tid0.so

$(BUILD)/%.so: $(BUILD)/%.o
	$(CC) -o $@ $^ $(INTERNALLDFLAGS)

$(BUILD)/%.o: %.c
	$(CC) -c -o $@ $^  $(CFLAGS) $(INTERNALCFLAGS)

$(BUILD)/%.o: %.c
	@$(CC) -o $@ $(CFLAGS) $(INTERNALCFLAGS) -c $<

$(BUILD)/%.o: %.s
	@nasm $(ASMPARAM) -o $@ $<

clean:
	@rm -rf $(BUILD)
