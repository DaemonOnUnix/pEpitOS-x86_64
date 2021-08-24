#ifndef HELPERS_MACROS_H
#define HELPERS_MACROS_H

#define PACKED __attribute__((packed))
#define ONCE(...) {static char once = 0; if(once) return __VA_ARGS__; once = 1;}
#define UNUSED_VAR(...) (void)(__VA_ARGS__)

//
// volatile RW section
//
#define write_mem64(addr, value) ((*((uint64_t*)(addr))) = (value))
#define read_mem64(addr) (*(volatile uint64_t*)(addr))

//
// Bitmanip section
//
#define MASK(n) ((1ull << (n)) -1)
#define MASK_SHIFT(n, shift) (MASK(n) << (shift))
#define SHIFTR(x, n, shift) (((x) >> (shift)) & MASK(n))
#define SHIFTL(x, n, shift) (((x) & MASK(n)) << (shift))


//
// Maybe section
//
#define sizeof_maybe(T) (sizeof(struct PACKED { char some; T val; }))
#define Maybe(T) char*
#define Some(T, V) ({\
  char v[sizeof_maybe(T)];\
  *(T*)(v + 1) = V;\
  v[0] = 1;\
  v;\
})
#define None(T) ({\
  char v[sizeof_maybe(T)];\
  v[0] = 0;\
  v;\
})
#define GET_STATUS(V) (V)[0]
#define GET_VALUE(T, V) ((T)(*(V + 1)))

#endif