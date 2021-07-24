#ifndef STRING_H
#define STRING_H

#include "freestanding.h"

typedef struct {
  size_t len;
  char *data;
} string;

#define string1(x)                                                             \
  (string) { .len = sizeof(x), .data = x }
#define string2(x, y)                                                          \
  (string) { .len = y, .data = x }
#define string_helper(x, y, func, ...) func
#define string(...) string_helper(__VA_ARGS__, string2, string1)(__VA_ARGS__)

#endif