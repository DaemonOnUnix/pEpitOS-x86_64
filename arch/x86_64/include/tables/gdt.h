#ifndef kTABLES_GDT
#define kTABLES_GDT

#include "freestanding.h"
#include "intel/tss.h"

extern void gdt_flush(uint64_t addr);
extern void tss_flush();

#if 0
    constexpr uint8_t GDT_SEGMENT    = (0b00010000);
    constexpr uint8_t GDT_PRESENT    = (0b10000000);
    constexpr uint8_t GDT_USER       = (0b01100000);
    constexpr uint8_t GDT_EXECUTABLE = (0b00001000);
    constexpr uint8_t GDT_READWRITE  = (0b00000010);
    constexpr uint8_t GDT_ACCESSED   = (0b00000001);
    constexpr uint8_t GDT_LONG_MODE_GRANULARITY = 0b0010;
    constexpr uint8_t GDT_FLAGS = 0b1100;
    constexpr uint16_t size = 5; 

    struct __attribute__((packed)) GdtEntry{
        uint16_t limit0_15;
        uint16_t base0_15;
        uint8_t base16_23;
        uint8_t flags;
        uint8_t limit16_19 : 4;
        uint8_t granularity : 4;
        uint8_t base24_31;
        GdtEntry():
            GdtEntry(0, 0, 0, 0)
            {}
        GdtEntry(uint32_t base, uint32_t limit, uint8_t granularity, uint8_t flags):
            limit0_15((uint16_t)((limit)&0xffff)),
            base0_15((uint16_t)((base)&0xffff)),
            base16_23((uint8_t)(((base) >> 16) & 0xff)),
            flags((flags)),
            limit16_19(((limit) >> 16) & 0x0f),
            granularity((granularity)),
            base24_31((uint8_t)(((base) >> 24) & 0xff))
            {}
        GdtEntry(uint8_t flags, uint8_t granularity):
            GdtEntry(0, 0, granularity, flags)
            {}
    };

    
    struct __attribute__((packed)) GdtPtr{
        uint16_t limit;
        uint64_t base;
    };

    class GDT{
        GdtEntry gdt_entries[size];
        GdtPtr gdt_ptr;
        Intel::TssEntry tss;
        void write_tss(Intel::TssEntry* tss_entry, GdtEntry *gdt_entry) {
            memset(tss_entry, 0, sizeof(tss_entry));

            uint32_t base = (uint64_t) &tss_entry;
            uint32_t limit = sizeof(tss_entry);

            *(gdt_entry) = {base, limit, GDT_PRESENT | GDT_EXECUTABLE | GDT_ACCESSED, 0x40};

            tss_entry->iopb_offset = 104;
        }
    public:
        // GDT(GDT&) = delete;
        // GDT(GDT&&) = delete;
        // GDT(const GDT&) = delete;
        // GDT(const GDT&&) = delete;
        GDT() {
            gdt_ptr.limit = (sizeof(GdtEntry)*size)-1;
            gdt_ptr.base = (uint64_t)gdt_entries;
            // asm volatile("xchg bx, bx");
            gdt_entries[0] = {0, 0, 0, 0}; // null descriptor
            gdt_entries[1] = {0, 0xFFFFFFFF, GDT_PRESENT | GDT_SEGMENT | GDT_READWRITE | GDT_EXECUTABLE, GDT_LONG_MODE_GRANULARITY};
            gdt_entries[2] = {0, 0xFFFFFFFF, GDT_PRESENT | GDT_SEGMENT | GDT_READWRITE, 0};
            gdt_entries[3] = {0, 0xFFFFFFFF, GDT_PRESENT | GDT_SEGMENT | GDT_READWRITE | GDT_EXECUTABLE | GDT_USER, GDT_LONG_MODE_GRANULARITY};
            gdt_entries[4] = {0, 0xFFFFFFFF, GDT_PRESENT | GDT_SEGMENT | GDT_READWRITE | GDT_USER, 0};
            //write_tss(&tss, gdt_entries + 5);
            //set_kstack(0x10);
        }

        void flush(){
            gdt_flush((uint64_t)&gdt_ptr);
        }

        void set_kstack(uint64_t stack){
            tss.rsp[0] = stack;
            tss.ist[0] = stack;
        }
    };
#endif


#endif