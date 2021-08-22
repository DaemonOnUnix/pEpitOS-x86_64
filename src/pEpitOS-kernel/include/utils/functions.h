#ifndef HELPERS_FUNCTIONS_H
#define HELPERS_FUNCTIONS_H

char* dec(unsigned long long x, char *s);
char* decX(unsigned long long x, char *s);

void* memset(volatile void* b, int c, size_t len);
void* memcpy(volatile void* dest, volatile const void* src, size_t n);

bool strcmp(volatile char* str1, volatile char* str2);

#endif