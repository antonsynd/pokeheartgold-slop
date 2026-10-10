#include "global.h"

typedef struct UnkStruct_ov91_0225E728 {
    u16 unk_00;
    u16 unk_02;
    u8 unk_04[4];
    fx32 unk_08;
    fx32 unk_0C;
    fx32 unk_10;
    fx32 unk_14;
} UnkStruct_ov91_0225E728;

extern fx32 ov91_0225E6F8(const UnkStruct_ov91_0225E728 *param0);

void ov91_0225E728(const UnkStruct_ov91_0225E728 *param0, VecFx32 *param1) {
    fx32 v0;

    v0 = ov91_0225E6F8(param0);

    param1->x = FX_Mul(param0->unk_08, v0);
    param1->y = FX_Mul(param0->unk_0C, v0);
    param1->y += FX_Mul(0xffffeccc, param0->unk_02 * FX32_ONE);
    param1->z = FX_Mul(param0->unk_10, v0);
}
