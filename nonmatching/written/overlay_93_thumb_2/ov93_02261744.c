#include "global.h"
#include "math_util.h"
#include "sprite_system.h"

typedef struct UnkStruct_ov93_02261744 {
    u8 filler_000[0xE4];
    s32 unk_E4;
    u8 filler_E8[0xF3 - 0xE8];
    u8 unk_F3;
    u8 unk_F4;
} UnkStruct_ov93_02261744;

typedef struct UnkStruct_ov93_02261744_Elem {
    ManagedSprite *unk_00;
    u8 filler_04[4];
    ManagedSprite *unk_08;
    s32 unk_0C;
    u8 filler_10[5];
    u8 unk_15;
    u8 filler_16[0x30 - 0x16];
    u8 unk_30[4];
} UnkStruct_ov93_02261744_Elem;

typedef struct UnkStruct_ov93_02262CC4 {
    u8 unk_00;
    u8 unk_01;
    u8 filler_02[2];
} UnkStruct_ov93_02262CC4;

extern const UnkStruct_ov93_02262CC4 ov93_02262CC4[];

extern void ov93_0226249C(void *param0, UnkStruct_ov93_02261744_Elem *param1, void *param2);

int ov93_02261744(void *param0, UnkStruct_ov93_02261744 *param1, UnkStruct_ov93_02261744_Elem *param2) {
    fx32 v0, v1;
    fx32 v2;
    int v3 = 0;
    fx32 v4;
    f32 v5;

    if (param1->unk_F3 > 0) {
        ManagedSprite_TickNFrames(param2->unk_00, ((8 + 8 + 12 + 8 + 8) << FX32_SHIFT) / ov93_02262CC4[param1->unk_F4].unk_00);
    } else {
        ManagedSprite_SetAnimationFrame(param2->unk_00, 0);
    }

    v2 = ((180 * param1->unk_F3) << FX32_SHIFT) / ov93_02262CC4[param1->unk_F4].unk_00;
    v3 = -(FX_Mul(GF_SinDegFX32(v2), (12 << FX32_SHIFT))) / FX32_ONE;
    v0 = 256 / 2 + FX_Mul(GF_SinDegFX32(param1->unk_E4 + param2->unk_0C), 76);
    v1 = 196 / 2 + (-FX_Mul(GF_CosDegFX32(param1->unk_E4 + param2->unk_0C), (64 + 4)));

    ManagedSprite_SetPositionXYWithSubscreenOffset(param2->unk_00, v0, v1 + -24 + v3, ((192 + 160) << FX32_SHIFT));
    ManagedSprite_SetPositionXYWithSubscreenOffset(param2->unk_08, v0, v1, ((192 + 160) << FX32_SHIFT));

    v4 = FX32_ONE - (FX32_ONE * (-v3 / 3) / 12);
    v5 = FX_FX32_TO_F32(v4);

    ManagedSprite_SetAffineScale(param2->unk_08, v5, v5);

    if (param1->unk_F3 == ov93_02262CC4[param1->unk_F4].unk_00 - 1) {
        ov93_0226249C(param0, param2, &param2->unk_30);
    }

    if (((param1->unk_E4 + param2->unk_0C) >> FX32_SHIFT) % 360 == 180) {
        param2->unk_15 = 1;
    } else {
        param2->unk_15 = 0;
    }

    return 1;
}
