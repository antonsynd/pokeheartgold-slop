#include "global.h"

typedef struct UnkStruct_ov49_022694B4 {
    u8 padding_00[4];
    s16 unk_04;
    s16 unk_06;
    u16 unk_08;
    s16 unk_0A;
    s16 unk_0C;
} UnkStruct_ov49_022694B4;

void ov49_0225E4F8(u32 param0, u32 param1, u16 param2);
void ov49_0225E3F4(u32 param0, u32 param1, VecFx32 *param2);

BOOL ov49_022694B4(UnkStruct_ov49_022694B4 *param0, u32 param1, u32 param2) {
    VecFx32 v0 = { 0, 0, 0 };
    u16 v1;
    u16 v2;
    BOOL v3 = FALSE;
    int v4;
    fx32 v5;
    fx16 v6;

    v4 = param0->unk_04 + 1;
    if (v4 < param0->unk_06) {
        param0->unk_04 = v4;
    } else {
        param0->unk_04 = 0;
        v4 = param0->unk_0C - 1;
        if (v4 > 0) {
            param0->unk_0C = v4;
        } else {
            v3 = TRUE;
        }
    }

    v2 = (param0->unk_04 * 0xFFFF) / param0->unk_06;
    v6 = FX_SinIdx(v2);
    v1 = FX_Mul(v6, FX32_CONST(param0->unk_08)) >> FX32_SHIFT;
    v0.y = FX_Mul(v6, FX32_CONST(param0->unk_0A));

    ov49_0225E4F8(param1, param2, v1);
    ov49_0225E3F4(param1, param2, &v0);
    return v3;
}
