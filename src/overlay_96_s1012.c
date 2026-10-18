#include "global.h"

#include "sound.h"
#include "sprite_system.h"

typedef struct Ov96_0220B9A8 {
    u8 filler_00[0xC];
    void *data;
    ManagedSprite *unk10;
    ManagedSprite *unk14;
    ManagedSprite *unk18;
    ManagedSprite *unk1C;
    ManagedSprite *unk20;
    ManagedSprite *unk24;
    ManagedSprite *unk28;
    ManagedSprite *unk2C;
    ManagedSprite *unk30;
    u8 filler_34[0xC];
    u32 player : 2;
    u32 unk40_2 : 30;
    u32 unk44_0 : 10;
    u32 state : 6;
    u32 unk44_16 : 8;
    u32 counter : 8;
} Ov96_0220B9A8;

void ov96_0220C54C(Ov96_0220B9A8 *a0, int a1, u8 a2, u8 a3, int a4);
void ov96_0220C578(Ov96_0220B9A8 *a0, int a1);
void ov96_0220C90C(Ov96_0220B9A8 *a0, int index, s16 x, s16 y);

void ov96_0220B9A8(Ov96_0220B9A8 *a0) {
    switch (a0->state) {
    case 0:
        ManagedSprite_ResetSpriteAnimCtrlState(a0->unk1C);
        ManagedSprite_SetDrawFlag(a0->unk1C, TRUE);
        PlaySE(SEQ_SE_GS_W100);
        a0->state++;
        break;
    case 1:
        a0->counter++;
        if (a0->counter >= 2) {
            ManagedSprite_ResetSpriteAnimCtrlState(a0->unk20);
            ManagedSprite_SetAnimateFlag(a0->unk20, FALSE);
            ManagedSprite_SetDrawFlag(a0->unk20, TRUE);
            ManagedSprite_SetDrawFlag(a0->unk10, FALSE);
            ManagedSprite_SetDrawFlag(a0->unk14, FALSE);
            ManagedSprite_SetDrawFlag(a0->unk18, FALSE);
            a0->counter = 0;
            a0->state++;
        }
        break;
    case 2: {
        s16 x;
        s16 y;
        s16 delta;

        ManagedSprite_GetPositionXY(a0->unk20, &x, &y);
        delta = (-64 - y) / 4;
        if (y <= -52 || delta == 0) {
            s8 prev = a0->player - 1;

            if (prev < 0) {
                prev = 2;
            }
            ov96_0220C54C(a0, 6, ov96_021E5F24(a0->data), prev, 0);
            x = 40;
            y = -40;
            ov96_0220C90C(a0, 6, x, y);
            a0->state++;
        } else {
            ManagedSprite_SetPositionXYWithSubscreenOffset(a0->unk20, x, y + delta, FX32_CONST(256));
            ManagedSprite_GetPositionXYWithSubscreenOffset(a0->unk28, &x, &y, FX32_CONST(256));
            y += MATH_ABS(272 - y) >> 2;
            y = y > 216 ? 216 : y;
            ov96_0220C90C(a0, 6, x, y);
        }
        break;
    }
    case 3: {
        s16 x;
        s16 y;
        s16 step;

        ManagedSprite_GetPositionXYWithSubscreenOffset(a0->unk24, &x, &y, FX32_CONST(256));
        step = MATH_ABS(136 - y) >> 1;
        if (y < 136) {
            if (step == 0) {
                step = 1;
            }
            y += step;
            ov96_0220C90C(a0, 5, x, y);
            ManagedSprite_GetPositionXYWithSubscreenOffset(a0->unk28, &x, &y, FX32_CONST(256));
            y += step;
            ov96_0220C90C(a0, 6, x, y);
        }
        a0->counter++;
        if (a0->counter >= 4) {
            ManagedSprite *sprite = a0->unk24;

            a0->unk24 = a0->unk28;
            a0->unk28 = sprite;
            sprite = a0->unk2C;
            a0->unk2C = a0->unk30;
            a0->unk30 = sprite;
            ov96_0220C90C(a0, 5, 40, 48);
            ov96_0220C90C(a0, 6, 40, 136);
            ManagedSprite_SetPositionXYWithSubscreenOffset(a0->unk20, 136, -8, FX32_CONST(256));
            PlaySE(SEQ_SE_GS_NAGERU);
            a0->counter = 0;
            a0->state++;
        }
        break;
    }
    case 4: {
        s16 x;
        s16 y;
        s16 delta;

        ManagedSprite_GetPositionXY(a0->unk20, &x, &y);
        delta = MATH_ABS(-24 - y);
        if (delta != 0) {
            delta /= 2;
        }
        y += delta + 2;
        if (y >= 112) {
            PlaySE(SEQ_SE_GS_BOWA2);
            ManagedSprite_SetPositionXY(a0->unk20, 136, 112);
            ManagedSprite_SetAnimateFlag(a0->unk20, TRUE);
            ManagedSprite_ResetSpriteAnimCtrlState(a0->unk1C);
            a0->state++;
        } else {
            ManagedSprite_SetPositionXYWithSubscreenOffset(a0->unk20, x, y, FX32_CONST(256));
        }
        break;
    }
    case 5:
        a0->counter++;
        if (a0->counter >= 2) {
            ManagedSprite_SetDrawFlag(a0->unk20, FALSE);
            ov96_0220C54C(a0, 0, ov96_021E5F24(a0->data), a0->player, 1);
            a0->counter = 0;
            a0->state++;
        }
        break;
    case 6:
        ov96_0220C578(a0, 0);
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }
}
