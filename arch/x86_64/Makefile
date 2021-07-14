KERNEL := pEpitOS
CC = gcc-9
CFLAGS = -Wall -Wextra -O0 -Iinclude -g
ASMPARAM = -f elf64 -F dwarf

INTERNALLDFLAGS :=     \
	-nostdlib      \
	-Tlink.ld    \
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

CFILES := $(shell find ./ -type f -name '*.c')
SFILES := $(shell find ./ -type f -name '*.s')
OBJ    := $(SFILES:.s=.o)
OBJ    += $(CFILES:.c=.o)

.PHONY: all clean
 
all: NODEBUG

NODEBUG: $(KERNEL).iso
	@qemu-system-x86_64 -cdrom $< -no-reboot -vga std -D ./log.txt -d int,guest_errors -m 512M -boot d -M q35  -serial mon:stdio

DEBUG: $(KERNEL).iso
	#@bochs
	@qemu-system-x86_64 -S -gdb tcp::9000 -cdrom $< -no-reboot -vga std -D ./log.txt -d int,guest_errors -m 512M -boot d -M q35 -serial mon:stdio

$(KERNEL).iso: $(KERNEL).elf
	@# Download the latest Limine binary release.
	@git clone https://github.com/limine-bootloader/limine.git --branch=v2.0-branch-binary --depth=1
	@# Build limine-install.
	@make -C limine
	@# Create a directory which will be our ISO root.
	@mkdir -p iso_root
	@# Copy the relevant files over.
	@cp -v $(KERNEL).elf limine.cfg limine/limine.sys limine/limine-cd.bin limine/limine-eltorito-efi.bin iso_root/ 
	@# Create the bootable ISO.
	@xorriso -as mkisofs -b limine-cd.bin \
			-no-emul-boot -boot-load-size 4 -boot-info-table \
			-eltorito-alt-boot -e limine-eltorito-efi.bin \
			-no-emul-boot iso_root -o $(KERNEL).iso
	@rm -rf limine iso_root

$(KERNEL).elf: $(OBJ)
	ld $(INTERNALLDFLAGS) $(OBJ) -o $@

%.o: %.c
	@$(CC) -o $@ $(CFLAGS) $(INTERNALCFLAGS) -c $<

%.o: %.s
	@nasm $(ASMPARAM) -o $@ $<

clean:
	@rm -rf $(KERNEL).elf $(OBJ) image.hdd $(KERNEL).iso limine log.txt iso_root
