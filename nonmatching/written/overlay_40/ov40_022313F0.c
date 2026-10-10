#include "global.h"

int ov40_0223142C(void *param0);
void ov40_0222D294(void *param0, s16 *x, s16 *y);
void sub_020878B8(void *param0, s16 x, s16 y);

int ov40_022313F0(u8 *param0) {
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    union { u32 w; s16 h[2]; } pos;
    int ret;
    pos.w = callerR3;

    ret = ov40_0223142C(param0);
    ov40_0222D294(*(void **)(param0 + 0x5FC), &pos.h[1], &pos.h[0]);
    sub_020878B8(*(void **)(param0 + 0x6F0), pos.h[1] + 16, pos.h[0]);
    return ret;
}
