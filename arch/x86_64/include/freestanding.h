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
#include <stdnoreturn.h>
#include <stdint.h>

void* memset(void* b, int c, size_t len);
void* memcpy(void* dest, const void* src, size_t n);

bool strcmp(char* str1, char*str2);

#define PACKED __attribute__((packed))
#define ONCE(...) {static char once = 0; if(once) return __VA_ARGS__; once = 1;}
#define write_mem64(addr, value) ((*((uint64_t*)(addr))) = (value))
#define read_mem64(addr) (*(uint64_t*)(addr))

// typedef uint64_t size_t;
#endif