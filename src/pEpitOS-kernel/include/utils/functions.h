#ifndef HELPERS_FUNCTIONS_H
#define HELPERS_FUNCTIONS_H

char* dec(unsigned long long x, char *s);
char* decX(unsigned long long x, char *s);

void* memset(void* b, int c, size_t len);
void* memcpy(void* dest, const void* src, size_t n);

bool strcmp(char* str1, char*str2);

#endif