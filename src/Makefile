KERNEL := pEpitOS

ARCH = x86_64
ARCH_FOLDER = arch

KERNEL_DIR = pEpitOS-kernel

CC = gcc-9
LOGS = #-DAPIC_DEBUG  -DVMM_DEBUG -DPMM_DEBUG -DIDT_DEBUG -DGDT_DEBUG
CFLAGS = -Wall -Wextra -Ofast -DPTESTS -I$(ARCH_FOLDER)/$(ARCH)/include/ -I$(KERNEL_DIR)/include/ $(LOGS) -g

ASMPARAM = -f elf64 -F dwarf

BUILD = build

ASSETS = ../assets/
LOGO = $(ASSETS)/pEpitOS-logo-1.bmp

USERSPACE = userspace
RAMDISK = $(USERSPACE)/ramdisk

ISO_FILES = $(KERNEL).elf limine.cfg limine/limine.sys limine/limine-cd.bin limine/limine-eltorito-efi.bin $(LOGO) $(RAMDISK)

CORE_NUM = 2

LINK_SCRIPT = $(ARCH_FOLDER)/$(ARCH)/link.ld

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

SRCDIRS := $(shell find ./$(ARCH_FOLDER)/$(ARCH) -type d)
SRCDIRS += $(shell find ./$(KERNEL_DIR) -type d -not -name 'userspace')

CFILES := $(shell find ./$(ARCH_FOLDER)/$(ARCH) -type f -name '*.c' -not -name 'userspace')
SFILES := $(shell find ./$(ARCH_FOLDER)/$(ARCH) -type f -name '*.s' -not -name 'userspace')

CFILES += $(shell find ./$(KERNEL_DIR) -type f -name '*.c')
SFILES += $(shell find ./$(KERNEL_DIR) -type f -name '*.s')

OBJ    := $(SFILES:%.s=$(BUILD)/%.o)
OBJ    += $(CFILES:%.c=$(BUILD)/%.o)

QEMU = "/mnt/c/program files/qemu/qemu-system-x86_64.exe"
QEMU_PARAMS_NODEBUG = -no-reboot -vga std -D ./log.txt -d int,guest_errors -m 512M -boot d -M q35  -serial mon:stdio -m 1G -smp $(CORE_NUM) -cdrom
QEMU_PARAMS_DEBUG = -S -gdb tcp::9000

$(shell mkdir -p $(addprefix $(BUILD)/,$(SRCDIRS)))

all: NODEBUG

.PHONY: all clean NODEBUG DEBUG clean_deps ramdisk

NODEBUG: $(KERNEL).iso
	@$(QEMU) $(QEMU_PARAMS_NODEBUG) $<

DEBUG: $(KERNEL).iso
	@$(QEMU) $(QEMU_PARAMS_DEBUG) $(QEMU_PARAMS_NODEBUG) $<

$(KERNEL).iso: ramdisk $(KERNEL).elf limine/Makefile
	@mkdir -p iso_root
	@cp -v -r $(ISO_FILES) iso_root/
	@xorriso -as mkisofs -b limine-cd.bin \
			-no-emul-boot -boot-load-size 4 -boot-info-table \
			-eltorito-alt-boot -e limine-eltorito-efi.bin \
			-no-emul-boot iso_root -o $(KERNEL).iso
	@rm -rf iso_root

$(KERNEL).elf: $(OBJ)
	@ld $(INTERNALLDFLAGS) $(OBJ) -o $@

limine/Makefile:
	@git clone https://github.com/limine-bootloader/limine.git --branch=v2.0-branch-binary --depth=1
	@make -C limine

$(BUILD)/%.o: %.c
	@$(CC) -o $@ $(CFLAGS) $(INTERNALCFLAGS) -c $<

$(BUILD)/%.o: %.s
	@nasm $(ASMPARAM) -o $@ $<

ramdisk:
	@mkdir -p $(RAMDISK)
	@make -C $(USERSPACE)

clean:
	@rm -rf $(KERNEL).elf $(OBJ) image.hdd $(KERNEL).iso $(BUILD) log.txt iso_root
	@make -C $(USERSPACE) clean
	@rm -rf $(RAMDISK)

clean_deps: clean
	@rm -rf limine
