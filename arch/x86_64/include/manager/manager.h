#ifndef kMANAGER
#define kMANAGER

#include "freestanding.h"
#include "tables/gdt.h"
#include "thirdparties/stivale2.h"

class Manager {
  void (*log)(const char *str, size_t length);

public:
  Manager(struct stivale2_struct *stivale2_struct);
  void textmode_print(const char *str);
  void textmode_print(const char *str, size_t length);
};

#endif