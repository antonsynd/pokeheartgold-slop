#include "global.h"

#include "math_util.h"

typedef struct Ov96_02213E60 {
    u8 filler_000[0x66E];
    u8 unk66E;
    u8 filler_66F[0x4B];
    u8 unk6BA;
} Ov96_02213E60;

typedef struct Ov96Target {
    u8 filler_00[8];
    fx32 x;
    fx32 y;
    u8 filler_10[0x32];
    u8 spot;
} Ov96Target;

extern const s16 ov96_0221D438[][2];
extern const s16 ov96_0221D43A[][2];

void ov96_02213E60(Ov96_02213E60 *a0, Ov96Target *target) {
    u8 count = 0;
    u8 cur = a0->unk66E;
    u8 spots[16];
    int i;
    u8 spot;

    for (i = 0; i < 15; i++) {
        if (cur != i && a0->unk6BA != i) {
            spots[count++] = i;
        }
    }
    spot = spots[(u8)(LCRandom() % count)];
    target->x = ov96_0221D438[spot][0] << FX32_SHIFT;
    target->y = ov96_0221D43A[spot][0] << FX32_SHIFT;
    target->spot = spot;
}
