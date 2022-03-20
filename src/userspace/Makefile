CC = gcc-9
LOGS =
CFLAGS = -Wall -Wextra -O3 -DPTESTS -I$(ARCH_FOLDER)/$(ARCH)/include/ -I$(KERNEL_DIR)/include/ $(LOGS)

ASMPARAM = -f elf64 -F dwarf

# Build directory
# Folder containing the programs to load in the RAM disk
PROGRAM_DIR = programs

PROGRAMS := $(shell find ${PROGRAM_DIR}/* -maxdepth 0 -type d -and -not -name 'output' -printf '%f\n')
PROGRAMS_ISO := tid0
PROGRAMS_ELF := hello_userland


all:
	@for program in $(PROGRAMS_ISO); do \
		$(MAKE) -C ${PROGRAM_DIR}  program=$${program} output_type=so; \
	done
	@for program in $(PROGRAMS_ELF); do \
		$(MAKE) -C ${PROGRAM_DIR}  program=$${program} output_type=elf; \
	done

clean:
	@for program in $(PROGRAMS); do \
		$(MAKE) -C ${PROGRAM_DIR}  program=$${program} clean output_type=none; \
	done