#include "global.h"

extern int ov07_0222204C(int a, int b, int c);

// The original negates its u16 stack argument in place, in the caller's outgoing-argument
// slot. That is a store the check sees, so the slot is addressed through the frame pointer.
void ov07_0222212C(int *ctx, u32 sx, u32 ex, u32 sy, u16 ey, int rx, int ry, u16 stepSizeX) {
    u16 *stepSlot = (u16 *)((u8 *)__builtin_frame_address(0) + 20);
    s16 stepSigned;

    if (ctx == NULL) {
        GF_AssertFail();
    }

    if (sx > ex) {
        *stepSlot = -*stepSlot;
    }

    stepSigned = *stepSlot;

    ctx[1] = ov07_0222204C(sx << 12, ex << 12, stepSigned << 12);
    ctx[2] = sx;
    ctx[3] = rx;
    ctx[4] = sy;
    ctx[5] = ry;
    ctx[6] = stepSigned;
    ctx[7] = (int)(ey - sy) / ctx[1];
}
