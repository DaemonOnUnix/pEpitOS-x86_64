CC = gcc-9
LOGS =
CFLAGS = -Wall -Wextra -O3 -DPTESTS -I$(ARCH_FOLDER)/$(ARCH)/include/ -I$(KERNEL_DIR)/include/ $(LOGS)

ASMPARAM = -f elf64 -F dwarf

# Build directory
# Folder containing the programs to load in the RAM disk
PROGRAM_DIR = programs

PROGRAMS := $(shell find ${PROGRAM_DIR}/* -maxdepth 0 -type d -and -not -name 'output' -printf '%f\n')
all:
	@for program in $(PROGRAMS); do \
		$(MAKE) -C ${PROGRAM_DIR}  program=$${program} -s; \
	done