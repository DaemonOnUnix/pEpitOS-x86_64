ENTRY(_main)
SECTIONS
{
    . = 0x1000;
    .entry : ALIGN(4096) {
        KEEP(*(.entry))
    }


    .text : ALIGN(4K) {
        *(.text*)
    }
 
    .rodata : ALIGN(4K) {
        *(.rodata*)
    }
 
    .data : ALIGN(4K) {
        *(.data*)
    }
 
    .bss : ALIGN(4K) {
        *(COMMON)
        *(.bss*)
    }

    .note.gnu.build-id : ALIGN(4096) {
        KEEP(*(.note.gnu.build-id))
    }

    .eh_frame : {
        KEEP(*(.eh_frame))
    }
}