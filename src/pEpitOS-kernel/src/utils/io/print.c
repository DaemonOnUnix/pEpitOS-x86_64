#include "arch/arch.h"

void sprintf(char *format, char *buff, va_list args){
    while (*format){
        if (*format == '{' && format[1] && format[2] == '}'){
            format++;
            switch (*format){
            case 'd':{
                char buffer[30];
                size_t d = va_arg(args, size_t);
                char *newbuff = dec(d, buffer + 29);
                while (*newbuff)
                    *(buff++) = *(newbuff++);
            }
            break;
            case 'x':{
                char buffer[30];
                size_t d = va_arg(args, size_t);
                *(buff++) = '0';
                *(buff++) = 'x';

                char *newbuff = decX(d, buffer + 29);
                while (*newbuff)
                    *(buff++) = *(newbuff++);
            }
            break;
            case 's':{
                char *str = va_arg(args, char *);
                while (*str)
                    *(buff++) = *(str++);
            }
            break;
            default:
                break;
            }
            format++;
        }
        else{
            *buff = *format;
            buff++;
        }
        format++;
    }
    *buff = 0;
}

void printf(char *format, ...){
    char buffer[500];
    va_list args;
    va_start(args, format);

    sprintf(format, buffer, args);
    va_end(args);

    write_string(buffer);
}