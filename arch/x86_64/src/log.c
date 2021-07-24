#include "log/log.h"
#include "intel/asm.h"
#include "utils/convert.h"

void com_write_reg(enum com_port port, enum com_register reg, uint8_t value) {
  asm_out8(port + reg, value);
}

uint8_t com_read_reg(enum com_port port, enum com_register reg) {
  return asm_in8(port + reg);
}

bool com_can_write(enum com_port port) {
  return (com_read_reg(port, COM_LINE_STATUS) &
          COM_LINE_TRANSMITTER_BUFFER_EMPTY);
}

void com_wait_write(enum com_port port) {
  while (!com_can_write(port))
    ;
}

void com_putc(enum com_port port, char c) {
  com_wait_write(port);
  com_write_reg(port, COM_DATA, c);
}

size_t com_write(enum com_port port, void const *buffer, size_t size) {
  for (size_t i = 0; i < size && ((char const *)buffer)[i]; i++)
    com_putc(port, ((char const *)buffer)[i]);

  return size;
}

void com_initialize(enum com_port port) {
  com_write_reg(port, COM_INTERRUPT_IDENTIFICATOR, 0);

  // Turn on dlab for setting baud rate
  com_write_reg(port, COM_LINE_CONTROL, COM_DLAB_STATUS);

  // Set bauds
  com_write_reg(port, COM_BAUD_RATE_LOW, 115200 / 9600);
  com_write_reg(port, COM_BAUD_RATE_HIGH, 0);

  // we want 8bit caracters + clear dlab
  com_write_reg(port, COM_LINE_CONTROL, COM_DATA_SIZE_8);

  // turn on communication + redirect UART interrupt into ICU
  com_write_reg(port, COM_MODEM_CONTROL,
                COM_MODEM_DTR | COM_MODEM_RTS | COM_MODEM_OUT2);
  com_write_reg(port, COM_INTERRUPT, COM_INTERRUPT_WHEN_DATA_AVAILABLE);
}

void sprintf(char *format, char *buff, va_list args) {
  while (*format) {
    if (*format == '{' && format[1] && format[2] == '}') {
      format++;
      switch (*format) {
      case 'd': {
        char buffer[30];
        size_t d = va_arg(args, size_t);
        char *newbuff = dec(d, buffer + 29);
        while (*newbuff)
          *(buff++) = *(newbuff++);
      } break;
      case 'x': {
        char buffer[30];
        size_t d = va_arg(args, size_t);
        *(buff++) = '0';
        *(buff++) = 'x';

        char *newbuff = decX(d, buffer + 29);
        while (*newbuff)
          *(buff++) = *(newbuff++);
      } break;
      case 's': {
        char *str = va_arg(args, char *);
        while (*str)
          *(buff++) = *(str++);
      } break;
      default:
        break;
      }
      format++;
    } else {
      *buff = *format;
      buff++;
    }
    format++;
  }
  *buff = 0;
}

void printf(char *format, ...) {
  char buffer[500];
  va_list args;
  va_start(args, format);

  sprintf(format, buffer, args);
  va_end(args);

  com_write(COM1, buffer, (size_t)(-1));
}
