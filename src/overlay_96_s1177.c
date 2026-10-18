#include "global.h"

typedef struct Ov96_02213EC4 {
    u8 filler_00[0xC];
    fx32 y;
    u8 filler_10[0x29];
    u8 mode;
    u8 filler_3A;
    u8 lane;
    u8 filler_3C[7];
    u8 offset;
} Ov96_02213EC4;

extern const u8 ov96_0221DC80[];

void *ov96_022143DC(Ov96_02213EC4 *a0);
u8 ov96_02214394(void *a0, u8 index);

u8 ov96_02213EC4(Ov96_02213EC4 *a0) {
    int result;

    if (a0->mode == 3) {
        if (a0->y == FX32_CONST(88)) {
            result = a0->offset + 192;
        } else if (a0->y == FX32_CONST(104)) {
            result = a0->offset + 200;
        } else if (a0->y == FX32_CONST(120)) {
            result = a0->offset + 208;
        } else {
            GF_ASSERT(FALSE);
            result = a0->y / FX32_ONE;
        }
    } else if (a0->mode == 1) {
        if (a0->lane == 12) {
            result = a0->y / FX32_ONE;
        } else {
            void *track = ov96_022143DC(a0);

            result = ov96_02214394(track, a0->lane / 3);
        }
    } else {
        result = a0->y / FX32_ONE;
    }
    return result;
}

fx32 ov96_02213F5C(int pos) {
    if (pos < 192) {
        return pos << FX32_SHIFT;
    }
    if (pos < 216) {
        int y;

        pos -= 192;
        u8 col = pos % 8;
        if (pos < 8) {
            y = ov96_0221DC80[col] + 88;
        } else if (pos < 16) {
            y = ov96_0221DC80[col] + 104;
        } else {
            y = ov96_0221DC80[col] + 120;
        }
        return y << FX32_SHIFT;
    }
    if (pos < 232) {
        return pos << FX32_SHIFT;
    }
    GF_ASSERT(FALSE);
    return pos << FX32_SHIFT;
}
