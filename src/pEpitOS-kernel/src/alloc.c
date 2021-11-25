#include "alloc/alloc.h"
#include "arch/arch.h"
#include "vmm/vmm.h"
#include "log/log.h"

#if 0

#define new_page_in_higherhalf() physical_to_stivale(new_physical_page())

typedef struct malloc_header{
    size_t size;
    struct malloc_header* prev;
    struct malloc_header* next;
    uint8_t data[];
} malloc_header;

#define MALLOC_HEADER(_addr, _size, _prev, _next) ({\
    malloc_header* r = (malloc_header*)_addr;\
    r->size = (size_t)_size;\
    r->prev = (void*)_prev;\
    r->next = (void*)_next;\
    r;})
#if 0
void* malloc(size_t size){
    static malloc_header* previous_header = 0;
    static size_t remaining_size_on_page = ARCH_PAGE_SIZE;
    
    if(!previous_header){
        previous_header = MALLOC_HEADER(new_page_in_higherhalf(), size, 0, 0);
    } else{
        if(remaining_size_on_page < sizeof(malloc_header) + size){
            uintptr_t current_header = (uintptr_t)previous_header;
            size_t accumulated_size = remaining_size_on_page;
            size_t current_goal = size;
            while(accumulated_size < sizeof(malloc_header) + size){
                uintptr_t next = new_page_in_higherhalf();
                if(next > current_header && next - current_header <= ARCH_PAGE_SIZE){
                    accumulated_size += ARCH_PAGE_SIZE;
                    
                } else{

                }
            }
        }
        ASSERT(remaining_size_on_page >= sizeof(malloc_header) + size, "Remaining size : {d}", "Remaining size : {d}", remaining_size_on_page);
        previous_header = MALLOC_HEADER(previous_header->next, size, previous_header, 0);
    }

    remaining_size_on_page -= (sizeof(malloc_header) + size);
    malloc_header* prev = previous_header;
    previous_header = (malloc_header*)(previous_header->data + previous_header->size);
    previous_header->prev = prev;
    
    return previous_header->data;
}
#endif

#ifndef X86_64
#error You should adapt the bits flags for the other architectures at the moment.
#else

#include "vmm/vmm.h"

void* malloc(size_t size){
    static uintptr_t program_break = GET_FIRST_VALID_ADDRESS();
    static bool is_initialized = 0;
    static malloc_header* last_header = (void*)0;

    if(!is_initialized){
        kmmap(program_break, size + sizeof(malloc_header), 1);

    }
    

    
}
#endif

#endif