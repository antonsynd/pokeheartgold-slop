#include "global.h"

typedef struct UnkStruct_ov91_0225E09C {
    u8 unk_00[0xA8];
    fx32 unk_A8;
    fx32 unk_AC;
    fx32 unk_B0;
    fx32 unk_B4;
    fx32 unk_B8;
    fx32 unk_BC;
    fx32 unk_C0;
    fx32 unk_C4;
    fx32 unk_C8;
    fx32 unk_CC;
    fx32 unk_D0;
    fx32 unk_D4;
} UnkStruct_ov91_0225E09C;

void ov91_0225E09C(UnkStruct_ov91_0225E09C *param0, fx32 param1) {
    fx32 v0;

    param0->unk_A8 = param1;
    param0->unk_AC = FX_Mul(FX32_CONST(30), param1);
    param0->unk_B0 = FX_Mul(FX32_CONST(50), param1);
    v0 = FX_Mul(FX32_CONST(80), param1);
    param0->unk_B4 = v0;
    param0->unk_B8 = 0;
    param0->unk_BC = FX_Mul(FX32_CONST(55), param1);
    param0->unk_C0 = FX_Mul(FX32_CONST(150), param1);
    param0->unk_C4 = FX_Mul(FX32_CONST(60), param1);
    param0->unk_C8 = v0;
    param0->unk_CC = FX_Mul(FX32_CONST(120), param1);
    param0->unk_D0 = param0->unk_CC - param0->unk_C8;
    param0->unk_D4 = FX_Mul(FX32_CONST(1.5), param1);
}
