#include "global.h"
#include "math_util.h"
#include "sprite_system.h"
#include "unk_02005D10.h"

typedef struct UnkStruct_ov93_022618C4 {
    u8 filler_00[0xF0];
    u8 unk_F0;
    u8 filler_F1;
    u8 unk_F2;
    u8 unk_F3;
    u8 unk_F4;
} UnkStruct_ov93_022618C4;

typedef struct UnkStruct_ov93_022618C4_Elem {
    ManagedSprite *unk_00;
    ManagedSprite *unk_04;
    ManagedSprite *unk_08;
    fx32 unk_0C;
    u8 filler_10;
    u8 unk_11;
    u8 unk_12;
    u8 unk_13;
    u8 unk_14;
    u8 filler_15[3];
    int unk_18;
    u8 filler_1C[4];
    int unk_20;
    int unk_24;
    int unk_28;
    int unk_2C;
} UnkStruct_ov93_022618C4_Elem;

typedef struct UnkStruct_ov93_02262CC4 {
    u8 unk_00;
    u8 unk_01;
    u8 unk_02;
    u8 filler_03;
} UnkStruct_ov93_02262CC4;

extern const UnkStruct_ov93_02262CC4 ov93_02262CC4[];
extern const u16 ov93_02262C7A[];

extern void ov93_02261528(UnkStruct_ov93_022618C4_Elem *param0, int param1);

int ov93_022618C4(void *param0, UnkStruct_ov93_022618C4 *param1, UnkStruct_ov93_022618C4_Elem *param2) {
    s16 v0, v1;
    int v2, v3;
    s16 v4, v5, v6, v7;
    fx32 v8;
    int v9 = 0;
    fx32 sinVal, cosVal;

    switch (param2->unk_11) {
    case 0:
        PlaySE(0x593);
        ManagedSprite_GetPositionXYWithSubscreenOffset(param2->unk_00, &v0, &v1, ((192 + 160) << FX32_SHIFT));
        ManagedSprite_SetPositionXYWithSubscreenOffset(param2->unk_04, v0, v1 + -32, ((192 + 160) << FX32_SHIFT));
        ManagedSprite_SetAnim(param2->unk_04, 33);
        ManagedSprite_SetDrawFlag(param2->unk_04, 1);
        ManagedSprite_SetAnim(param2->unk_00, ov93_02262C7A[param2->unk_14] + 2);

        param2->unk_12 = ov93_02262CC4[param1->unk_F4].unk_02;
        param2->unk_13 = ov93_02262CC4[param1->unk_F4].unk_02 / 2;
        param2->unk_11++;
        break;
    case 1:
        if (param2->unk_12 == param2->unk_13) {
            ManagedSprite_SetAnim(param2->unk_00, ov93_02262C7A[param2->unk_14] + 1);
            ManagedSprite_SetDrawFlag(param2->unk_04, 0);
            ManagedSprite_TickNFrames(param2->unk_04, (4 * FX32_ONE));
        }

        if (param2->unk_12 == 0) {
            ManagedSprite_SetDrawFlag(param2->unk_04, 0);
            ManagedSprite_SetAnim(param2->unk_00, ov93_02262C7A[param2->unk_14] + 0);
            param2->unk_11++;
            break;
        }
        param2->unk_12--;
        break;
    case 2:
        v2 = 0;

        if (param1->unk_F2 == 0) {
            v2 += ov93_02262CC4[param1->unk_F4].unk_00 - param1->unk_F3;
            v2 += ov93_02262CC4[param1->unk_F4].unk_01;
            v2 += ov93_02262CC4[param1->unk_F4].unk_00;
            v3 = param1->unk_F0 + 2;
        } else {
            v2 += param1->unk_F2;

            if (param1->unk_F0 >= 12) {
                v2 += ov93_02262CC4[param1->unk_F4 + 1].unk_00;
                v3 = 1;
            } else {
                v2 += ov93_02262CC4[param1->unk_F4].unk_00;
                v3 = param1->unk_F0 + 1;
            }
        }

        v3 += param2->unk_0C / ((360 / 12) << FX32_SHIFT);
        v3 %= 12;
        sinVal = GF_SinDegFX32((360 << FX32_SHIFT) / 12 * v3);
        cosVal = GF_CosDegFX32((360 << FX32_SHIFT) / 12 * v3);

        ManagedSprite_GetPositionXYWithSubscreenOffset(param2->unk_00, &v6, &v7, ((192 + 160) << FX32_SHIFT));

        v7 -= -24;

        v4 = 256 / 2 + FX_Mul(sinVal, 76);
        v5 = 196 / 2 + (-FX_Mul(cosVal, (64 + 4)));

        param2->unk_20 = (v4 - v6) * FX32_ONE / v2;
        param2->unk_24 = (v5 - v7) * FX32_ONE / v2;
        param2->unk_28 = v6 * FX32_ONE;
        param2->unk_2C = v7 * FX32_ONE;
        param2->unk_12 = v2;
        param2->unk_18 = v2;
        param2->unk_11++;
        // fall through
    case 3:
        param2->unk_28 += param2->unk_20;
        param2->unk_2C += param2->unk_24;

        v8 = ((180 * param2->unk_12) << FX32_SHIFT) / param2->unk_18;
        v9 = -(FX_Mul(GF_SinDegFX32(v8), (12 << FX32_SHIFT))) / FX32_ONE;

        ManagedSprite_SetPositionXYWithSubscreenOffset(param2->unk_00, param2->unk_28 / FX32_ONE, param2->unk_2C / FX32_ONE + -24 + v9, ((192 + 160) << FX32_SHIFT));
        ManagedSprite_TickNFrames(param2->unk_00, ((8 + 8 + 12 + 8 + 8) << FX32_SHIFT) / param2->unk_18);
        ManagedSprite_SetPositionXYWithSubscreenOffset(param2->unk_08, param2->unk_28 / FX32_ONE, param2->unk_2C / FX32_ONE, ((192 + 160) << FX32_SHIFT));

        param2->unk_12--;

        if (param2->unk_12 == 0) {
            ManagedSprite_SetAnim(param2->unk_00, ov93_02262C7A[param2->unk_14] + 0);
            ManagedSprite_SetAnimationFrame(param2->unk_00, 0);
            ov93_02261528(param2, 2);
            return 1;
        }

        break;
    }

    return 1;
}
