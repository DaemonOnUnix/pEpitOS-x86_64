#include "freestanding.h"

bool strcmp(char* str1, char*str2){
    for(;*str1 && *str2 && *str1 == *str2; str1++,str2++ );
    if(*str1 == *str2)
        return 0;
    if(*str1)
        return -1;
    return 1;
}