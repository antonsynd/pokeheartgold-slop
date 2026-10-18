#include "global.h"

#include "sprite_system.h"
#include "unk_02005D10.h"

typedef struct Ov07Wobble {
    s16 offsets[12];
} Ov07Wobble;

typedef struct Ov07_022332F4 {
    u8 filler_00[8];
    int state;
    int frame;
    u8 filler_10[8];
    int variant;
    u8 filler_1C[0x14];
    ManagedSprite *sprite;
} Ov07_022332F4;

extern const Ov07Wobble ov07_02237254[];

void ov07_02232F74(Ov07_022332F4 *a0, int a1);

BOOL ov07_022332F4(Ov07_022332F4 *a0) {
    s16 offset;

    switch (a0->state) {
    case 0:
        GF_ASSERT(a0->variant < 3);
        a0->state++;
    case 1:
        offset = ov07_02237254[a0->variant].offsets[a0->frame];
        a0->frame++;
        if (a0->frame > 11 || offset == 0xFF) {
            a0->state++;
            a0->variant++;
            ManagedSprite_SetAffineZRotation(a0->sprite, 0);
            ov07_02232F74(a0, 0x12);
            return TRUE;
        }
        if (a0->frame == 5) {
            sub_0200602C(1533, 117);
        }
        ManagedSprite_OffsetPositionXY(a0->sprite, offset, 0);
        ManagedSprite_OffsetAffineZRotation(a0->sprite, offset * 2 * 0xFFFF / 360);
        break;
    }
    return TRUE;
}
