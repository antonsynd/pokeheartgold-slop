#include "global.h"

typedef struct UnkStruct_ov91_0225DD50 {
    u16 unk_00;
    u16 unk_02;
    u8 unk_04[4];
    fx32 unk_08;
    MtxFx33 unk_0C;
    MtxFx33 unk_30;
    MtxFx33 unk_54;
    VecFx32 unk_78;
    VecFx32 unk_84;
    fx32 unk_90;
    u8 unk_94[8];
    VecFx32 unk_9C;
    u8 unk_A8[0x10];
    fx32 unk_B8;
    fx32 unk_BC;
    u8 unk_C0[0x18];
    VecFx32 unk_D8;
} UnkStruct_ov91_0225DD50;

extern const VecFx32 ov91_02261C4C;

void ov91_0225DD50(UnkStruct_ov91_0225DD50 *param0, int param1) {
    VecFx32 v0;

    param0->unk_02 = param1;

    MTX_Identity33(&param0->unk_54);
    MTX_Identity33(&param0->unk_30);
    MTX_RotY33(&param0->unk_30, FX_SinIdx(param1), FX_CosIdx(param1));
    MTX_Concat33(&param0->unk_0C, &param0->unk_30, &param0->unk_54);
    MTX_MultVec33(&ov91_02261C4C, &param0->unk_54, &param0->unk_78);

    v0.x = 0;
    v0.y = 0;
    v0.z = -param0->unk_08;

    MTX_MultVec33(&v0, &param0->unk_54, &param0->unk_84);

    v0.x = param0->unk_B8 + param0->unk_9C.x;
    v0.y = param0->unk_BC;
    v0.z = param0->unk_9C.z + (FX32_CONST(50) + FX32_CONST(30));

    MTX_MultVec33(&v0, &param0->unk_30, &v0);
    VEC_Add(&v0, &param0->unk_84, &param0->unk_84);

    param0->unk_90 = FX_Mul(param0->unk_78.x, param0->unk_84.x) + FX_Mul(param0->unk_78.y, param0->unk_84.y) + FX_Mul(param0->unk_78.z, param0->unk_84.z);

    MTX_MultVec33(&param0->unk_9C, &param0->unk_30, &param0->unk_D8);
}
