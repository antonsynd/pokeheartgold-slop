#include "global.h"

typedef struct UnkStruct_ov48_0225AEDC_Data {
    s16 unk_00;
    s16 unk_02;
    s16 unk_04;
    s16 unk_06;
    s16 unk_08;
    s16 unk_0A;
    s16 unk_0C;
} UnkStruct_ov48_0225AEDC_Data;

typedef struct UnkStruct_ov48_0225AEDC {
    s16 unk_00;
    s16 unk_02;
    s16 unk_04;
    s16 unk_06;
    u16 unk_08;
    u16 unk_0A;
    UnkStruct_ov48_0225AEDC_Data *unk_0C;
} UnkStruct_ov48_0225AEDC;

void ov48_0225AEDC(UnkStruct_ov48_0225AEDC *param0) {
    u16 v0;
    s16 v1, v2;
    int radius;

    if (param0->unk_0A == 0) {
        v2 = param0->unk_0C->unk_06 - 16;
    } else {
        v2 = param0->unk_0C->unk_06;
    }

    if (param0->unk_08 == 0) {
        v1 = param0->unk_0C->unk_02 + 16;
    } else {
        v1 = param0->unk_0C->unk_02;
    }

    param0->unk_00 = param0->unk_0C->unk_00 + (((param0->unk_0C->unk_04 - param0->unk_0C->unk_00) * param0->unk_04) / param0->unk_0C->unk_08);
    param0->unk_02 = v1 + (((v2 - v1) * param0->unk_04) / param0->unk_0C->unk_08);

    v0 = (param0->unk_06 * 0xffff) / param0->unk_0C->unk_0C;
    radius = param0->unk_0C->unk_0A;
    param0->unk_00 += FX_Mul(FX32_CONST(radius), FX_SinIdx(v0)) >> FX32_SHIFT;
}
