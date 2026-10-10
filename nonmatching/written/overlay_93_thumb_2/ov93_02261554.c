#include "global.h"
#include "math_util.h"
#include "sprite_system.h"

typedef struct UnkStruct_ov93_02261554 {
    ManagedSprite *unk_00;
    u8 filler_04[4];
    ManagedSprite *unk_08;
    fx32 unk_0C;
    u8 filler_10;
    u8 unk_11;
    u8 unk_12;
    u8 filler_13[9];
    s16 unk_1C;
    s16 unk_1E;
    u8 filler_20[0x10];
    u8 unk_30[4];
} UnkStruct_ov93_02261554;

extern void ov93_02261528(UnkStruct_ov93_02261554 *param0, int param1);
extern void ov93_0226249C(void *param0, UnkStruct_ov93_02261554 *param1, void *param2);

int ov93_02261554(void *param0, void *param1, UnkStruct_ov93_02261554 *param2) {
    s16 v0, v1, v2, v3, v4, v5;
    fx32 v6;
    int v7 = 0;
    fx32 v8;
    f32 v9;

    v2 = 0;
    v3 = 0;
    v0 = param2->unk_1C;
    v1 = param2->unk_1E;

    switch (param2->unk_11) {
    case 0:
        ManagedSprite_SetDrawFlag(param2->unk_00, 1);
        ManagedSprite_SetDrawFlag(param2->unk_08, 1);
        ManagedSprite_GetPositionXYWithSubscreenOffset(param2->unk_00, &v0, &v1, ((192 + 160) << FX32_SHIFT));
        param2->unk_1C = v0;
        param2->unk_1E = v1;
        param2->unk_11++;
        // fall through
    case 1:
        switch (param2->unk_0C) {
        case 0:
            v4 = param2->unk_1E - -32;
            v3 = param2->unk_12 * v4 / 15;
            v1 = -32 + v3;
            break;
        case 90 << FX32_SHIFT:
            v5 = param2->unk_1C - (256 + 32);
            v2 = param2->unk_12 * v5 / 15;
            v0 = (256 + 32) + v2;
            break;
        case 180 << FX32_SHIFT:
            v4 = param2->unk_1E - (196 + 32);
            v3 = param2->unk_12 * v4 / 15;
            v1 = (196 + 32) + v3;
            break;
        case 270 << FX32_SHIFT:
            v5 = param2->unk_1C - -32;
            v2 = param2->unk_12 * v5 / 15;
            v0 = -32 + v2;
            break;
        default:
            GF_AssertFail();
            break;
        }
        if (param2->unk_12 >= 15) {
            ManagedSprite_SetPositionXYWithSubscreenOffset(param2->unk_00, param2->unk_1C, param2->unk_1E, ((192 + 160) << FX32_SHIFT));
            ManagedSprite_SetPositionXYWithSubscreenOffset(param2->unk_08, param2->unk_1C, param2->unk_1E + 24, ((192 + 160) << FX32_SHIFT));
            ov93_02261528(param2, 2);
            ov93_0226249C(param0, param2, &param2->unk_30);

            return 1;
        }

        v6 = ((180 * param2->unk_12) << FX32_SHIFT) / 15;
        v7 = -(FX_Mul(GF_SinDegFX32(v6), (24 << FX32_SHIFT))) / FX32_ONE;

        ManagedSprite_SetPositionXYWithSubscreenOffset(param2->unk_00, v0, v1 + v7, ((192 + 160) << FX32_SHIFT));
        ManagedSprite_SetPositionXYWithSubscreenOffset(param2->unk_08, v0, v1 + 24, ((192 + 160) << FX32_SHIFT));

        v8 = FX32_ONE - (FX32_ONE * (-v7 / 3) / ((24 << FX32_SHIFT) >> FX32_SHIFT));
        v9 = FX_FX32_TO_F32(v8);

        ManagedSprite_SetAffineScale(param2->unk_08, v9, v9);
        break;
    }

    param2->unk_12++;
    return 1;
}
