#ifndef HELPERS_MACROS_H
#define HELPERS_MACROS_H

#define PACKED __attribute__((packed))
#define ONCE(...) {static char once = 0; if(once) return __VA_ARGS__; once = 1;}
#define UNUSED_VAR(...) (void)(__VA_ARGS__)

#define write_mem64(addr, value) ((*((uint64_t*)(addr))) = (value))
#define read_mem64(addr) (*(volatile uint64_t*)(addr))

#define MASK(n) ((1ull << (n)) -1)
#define MASK_SHIFT(n, shift) (MASK(n) << (shift))
#define SHIFTR(x, n, shift) (((x) >> (shift)) & MASK(n))
#define SHIFTL(x, n, shift) (((x) & MASK(n)) << (shift))

#endif