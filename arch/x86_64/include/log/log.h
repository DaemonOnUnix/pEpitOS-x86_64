#ifndef LOG_H
#define LOG_H

#include "freestanding.h"
#include "intel/asm.h"

enum com_port {
  COM1 = 0x3F8,
  COM2 = 0x2F8,
  COM3 = 0x3E8,
  COM4 = 0x2E8,
};

enum com_register {
  COM_DATA = 0,
  COM_INTERRUPT = 1,
  COM_BAUD_RATE_LOW = 0,
  COM_BAUD_RATE_HIGH = 1,
  COM_INTERRUPT_IDENTIFICATOR = 2,
  COM_FIFO_CONTROLLER = 2,
  COM_LINE_CONTROL = 3,
  COM_MODEM_CONTROL = 4,
  COM_LINE_STATUS = 5,
  COM_MODEM_STATUS = 6,
  COM_SCRATCH_REGISTER = 7,
};

enum com_line_control_bit {
  COM_DATA_SIZE_5 = 0,
  COM_DATA_SIZE_6 = 1,
  COM_DATA_SIZE_7 = 2,
  COM_DATA_SIZE_8 = 3,
  COM_DLAB_STATUS = 1 << 7,
};

enum com_modem_bit {
  COM_MODEM_DTR = 1 << 0,
  COM_MODEM_RTS = 1 << 1,
  COM_MODEM_OUT1 = 1 << 2,
  COM_MODEM_OUT2 = 1 << 3,
  COM_MODEM_LOOPBACK = 1 << 4,
};

enum com_interrupt_enable_bit {
  COM_INTERRUPT_WHEN_DATA_AVAILABLE = 1 << 0,
  COM_INTERRUPT_WHEN_TRANSMITTER_EMPTY = 1 << 1,
  COM_INTERRUPT_WHEN_BREAK_ERROR = 1 << 2,
  COM_INTERRUPT_WHEN_STATUS_UPDATE = 1 << 3,
};

enum com_line_status_bit {
  COM_LINE_DATA_READY = 1 << 0,
  COM_LINE_OVERRUN_ERROR = 1 << 1,
  COM_LINE_PARITY_ERROR = 1 << 2,
  COM_LINE_FRAMING_ERROR = 1 << 3,
  COM_LINE_BREAK_INDICATOR = 1 << 4,
  COM_LINE_TRANSMITTER_BUFFER_EMPTY = 1 << 5,
  COM_LINE_TRANSMITTER_EMPTY = 1 << 6,
  COM_LINE_IMPENDING_ERROR = 1 << 7,
};

void com_initialize(enum com_port port);
size_t com_write(enum com_port port, void const *buffer, size_t size);

#define roprint(x) com_write(COM1, x, sizeof(x));
#define strprint(x) com_write(COM1, (x).data, (x).len);

void sprintf(char *format, char *buff, va_list args);
void printf(char *format, ...);

#define COL_DEFAULT "\033[39m"
#define COL_RED "\033[31m"
#define COL_GREEN "\033[32m"
#define COL_ORANGE "\033[33m"
#define COL_BLUE "\033[34m"
#define COL_MAGENTA "\033[35m"
#define COL_CYAN "\033[36m"
#define COL_GREY "\033[37m"

#define OK_STRING COL_GREEN "[OK   ]  " COL_DEFAULT
#define ERR_STRING COL_ORANGE "[WARN ]  " COL_DEFAULT
#define INFO_STRING COL_CYAN "[INFO ]  " COL_DEFAULT
#define PANIC_STRING COL_RED "[PANIC]  " COL_DEFAULT

#define LINE_STRING                                                            \
  log(__FILE__);                                                               \
  log(" : ");                                                                  \
  log(__func__);                                                               \
  log(" l. ");                                                                 \
  log(__LINE__);                                                               \
  log(" -> ");

#define LOG_OK(...)                                                            \
  {                                                                            \
    roprint(OK_STRING);                                                        \
    printf(COL_BLUE "{s} : {s} l. {d} -> " COL_DEFAULT, __FILE__, __func__,    \
           __LINE__);                                                          \
    printf(__VA_ARGS__);                                                       \
    roprint("\n");                                                             \
  }
#define LOG_ERR(...)                                                           \
  {                                                                            \
    roprint(ERR_STRING);                                                       \
    printf(COL_BLUE "{s} : {s} l. {d} -> " COL_DEFAULT, __FILE__, __func__,    \
           __LINE__);                                                          \
    printf(__VA_ARGS__);                                                       \
    roprint("\n");                                                             \
  }
#define LOG_INFO(...)                                                          \
  {                                                                            \
    roprint(INFO_STRING);                                                      \
    printf(COL_BLUE "{s} : {s} l. {d} -> " COL_DEFAULT, __FILE__, __func__,    \
           __LINE__);                                                          \
    printf(__VA_ARGS__);                                                       \
    roprint("\n");                                                             \
  }
#define LOG_PANIC(...)                                                         \
  {                                                                            \
    roprint(PANIC_STRING);                                                     \
    printf(COL_BLUE "{s} : {s} l. {d} -> " COL_DEFAULT, __FILE__, __func__,    \
           __LINE__);                                                          \
    printf(__VA_ARGS__);                                                       \
    roprint("\n");                                                             \
  }

#define ASSERT(C, __TRUE, __FALSE, ...)                                        \
  {                                                                            \
    if (C) {                                                                   \
      LOG_OK(__TRUE, ##__VA_ARGS__);                                           \
    } else {                                                                   \
      LOG_PANIC(__FALSE, ##__VA_ARGS__);                                       \
      HALT();                                                                  \
    }                                                                          \
  }
#define CHECK(C, __TRUE, __FALSE, ...)                                         \
  {                                                                            \
    if (C) {                                                                   \
      LOG_OK(__TRUE, ##__VA_ARGS__);                                           \
    } else {                                                                   \
      LOG_ERR(__FALSE, ##__VA_ARGS__);                                         \
    }                                                                          \
  }

#endif