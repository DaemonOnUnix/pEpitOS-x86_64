#ifndef UTILS_BITSMANIP_H
#define UTILS_BITSMANIP_H

#define MASK(n) ((1ull << (n)) -1)
#define MASK_SHIFT(n, shift) (MASK(n) << (shift))
#define SHIFTR(x, n, shift) (((x) >> (shift)) & MASK(n))
#define SHIFTL(x, n, shift) (((x) & MASK(n)) << (shift))

#endif