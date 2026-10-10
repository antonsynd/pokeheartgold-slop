#include "global.h"

typedef struct UnkStruct_ov49_02269178 {
    u8 padding_00[4];
    u32 unk_04;
    u32 unk_08;
    u8 padding_0C[0xB0];
    fx32 unk_BC;
    fx32 unk_C0;
} UnkStruct_ov49_02269178;

s32 ov45_0222AD90(u32 param0, u32 param1);
s32 ov45_0222ADA0(u32 param0);
void ov49_0225E3B8(u32 param0, u32 param1, fx32 param2);

void ov49_02269178(UnkStruct_ov49_02269178 *param0, u32 param1) {
    s32 v0;
    s32 v1;
    fx32 v2;
    fx32 v3;

    v0 = ov45_0222AD90(param0->unk_04, param1);
    v1 = ov45_0222ADA0(param0->unk_04);
    v3 = FX_Div(param0->unk_C0, FX32_CONST(2));
    v2 = FX_Div(FX_Mul(FX32_CONST(v0), v3), FX32_CONST(v1));
    v2 = FX_Mul(v2, FX32_CONST(2));
    v2 += param0->unk_BC;
    ov49_0225E3B8(param0->unk_08, param1, v2);
}
