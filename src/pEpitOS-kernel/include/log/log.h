#ifndef LOG_H
#define LOG_H

#include "freestanding.h"
#include "arch/arch.h"
#include "multicore/lock.h"
#include "multicore/interrupt_lock.h"
#include "multicore/common_locks.h"

#define roprint(x) write_string(x)

void sprintf(char *format, char *buff, va_list args);
void printf(char *format, ...);

#define COL_DEFAULT "\033[39m"
#define COL_RED     "\033[31m"
#define COL_GREEN   "\033[32m"
#define COL_ORANGE  "\033[33m"
#define COL_BLUE    "\033[34m"
#define COL_MAGENTA "\033[35m"
#define COL_CYAN    "\033[36m"
#define COL_GREY    "\033[37m"

#define OK_STRING COL_GREEN     "[OK   ]  " COL_DEFAULT
#define ERR_STRING COL_ORANGE   "[WARN ]  " COL_DEFAULT
#define INFO_STRING COL_CYAN    "[INFO ]  " COL_DEFAULT
#define PANIC_STRING COL_RED    "[PANIC]  " COL_DEFAULT

#define LINE_STRING log(__FILE__);        \
        log(" : ");           \
        log(__func__);        \
        log(" l. ");          \
        log(__LINE__);        \
        log(" -> ");

CREATE_PROTOS(print);

#define LOG_OK(...)      {lock_ints(); get_lock_print(); roprint(OK_STRING);    if(is_multicore()) { printf( COL_CYAN "(core {d}) ", COREID);} printf(COL_BLUE "{s}:{d} f. {s} -> " COL_DEFAULT, __FILE__, __LINE__, __func__); printf(__VA_ARGS__); roprint("\n"); set_lock_print(); unlock_ints();}
#define LOG_SECTION(...) {lock_ints(); get_lock_print(); roprint(OK_STRING);    if(is_multicore()) { printf( COL_CYAN "(core {d}) ", COREID);} printf(COL_BLUE "{s}:{d} f. {s} -> " COL_DEFAULT, __FILE__, __LINE__, __func__); printf(__VA_ARGS__); roprint("\n"); set_lock_print(); unlock_ints();}
#define LOG_ERR(...)     {lock_ints(); get_lock_print(); roprint(ERR_STRING);   if(is_multicore()) { printf( COL_CYAN "(core {d}) ", COREID);} printf(COL_BLUE "{s}:{d} f. {s} -> " COL_DEFAULT, __FILE__, __LINE__, __func__); printf(__VA_ARGS__); roprint("\n"); set_lock_print(); unlock_ints();}
#define LOG_INFO(...)    {lock_ints(); get_lock_print(); roprint(INFO_STRING);  if(is_multicore()) { printf( COL_CYAN "(core {d}) ", COREID);} printf(COL_BLUE "{s}:{d} f. {s} -> " COL_DEFAULT, __FILE__, __LINE__, __func__); printf(__VA_ARGS__); roprint("\n"); set_lock_print(); unlock_ints();}
#define LOG_PANIC(...)   {lock_ints(); get_lock_print(); roprint(PANIC_STRING); if(is_multicore()) { printf( COL_CYAN "(core {d}) ", COREID);} printf(COL_BLUE "{s}:{d} f. {s} -> " COL_DEFAULT, __FILE__, __LINE__, __func__); printf(__VA_ARGS__); roprint("\n"); set_lock_print(); unlock_ints();}
#define PANIC(...)       {LOG_PANIC(__VA_ARGS__); while(1);}

#define ASSERT(C, __TRUE, __FALSE, ...) {if(C){ LOG_OK(__TRUE, ##__VA_ARGS__); } else { LOG_PANIC(__FALSE, ##__VA_ARGS__); disable_ints(); halt();}}
#define CHECK(C, __TRUE, __FALSE, ...) {if(C){ LOG_OK(__TRUE, ##__VA_ARGS__); } else { LOG_ERR(__FALSE, ##__VA_ARGS__);}}

#define qASSERT(C) {if(C){ LOG_OK(#C); } else { LOG_PANIC(#C); disable_ints(); halt();}}
#define qCHECK(C) {if(C){ LOG_OK(#C); } else { LOG_ERR(#C);}}

#endif