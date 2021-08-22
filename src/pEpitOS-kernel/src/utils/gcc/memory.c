#include "freestanding.h"

void *memset(volatile void *b, int c, size_t len){
	char *bb;

	for (bb = (char*)(b); len > 0; len--)
		*bb++ = c;

	return (void*)b;
}

void *memcpy(volatile void *dest, volatile const void *src, size_t n){
	char* x = (char*)dest;
	char* y = (char*)src;
	for(size_t i = 0; i < n; i++, x++, y++)
		*x = *y;
	return (void*)dest;
}