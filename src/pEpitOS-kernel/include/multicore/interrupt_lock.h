#ifndef MULTICORE_INTS_LOCKS_H
#define MULTICORE_INTS_LOCKS_H

void unlock_ints();
void lock_ints();
void set_ints(uint8_t int_level);

#endif