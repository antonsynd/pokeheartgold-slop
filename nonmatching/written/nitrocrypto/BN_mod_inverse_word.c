#include "global.h"

u32 BN_mod_inverse_word(u32 a) {
    u32 r8 = (0u - a) % a;
    u32 r7 = a;
    u32 r5 = 0;
    u32 r6 = 1;
    int sign = -1;

    while (r8 != 0) {
        u32 rem = r7 % r8;
        u32 q = r7 / r8;
        u32 t = q * r6 + r5;
        r5 = r6;
        r7 = r8;
        r6 = t;
        r8 = rem;
        sign = -sign;
    }
    if (sign < 0) {
        r5 = a - r5;
    }
    if (r7 != 1) {
        return 0;
    }
    return r5 % a;
}
