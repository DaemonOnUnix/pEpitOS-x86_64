#ifndef kFREESTANDING_H
#define kFREESTANDING_H

// #pragma GCC diagnostic ignored "-Wint-conversion"
// #pragma GCC diagnostic ignored "-Wdiscarded-qualifiers"
// #pragma GCC diagnostic ignored "-Wunused-function"
// #pragma GCC diagnostic ignored "-Wunused-parameter"
// #pragma GCC diagnostic ignored "-Wunused-variable"
#include <float.h>
#include <iso646.h>
#include <limits.h>
#include <stdalign.h>
#include <stdarg.h>
#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <stdnoreturn.h>

void *memset(void *b, int c, size_t len);
void *memcpy(void *dest, const void *src, size_t n);

#define PACKED __attribute__((packed))
#define ONCE(...)                                                              \
  {                                                                            \
    static char once = 0;                                                      \
    if (once)                                                                  \
      return __VA_ARGS__;                                                      \
    once = 1;                                                                  \
  }

// typedef uint64_t size_t;
#endif