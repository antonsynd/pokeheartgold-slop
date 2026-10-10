#include "global.h"

typedef struct UnkStruct_ov49_0225EC30 {
    u32 unk_00;
    u16 unk_04;
    s16 unk_06;
    fx32 unk_08;
} UnkStruct_ov49_0225EC30;

void ov49_0225D4C8(u32 param0, fx32 param1);
void ov49_0225D4D0(u32 param0, u8 param1);
void ov49_0225D4F0(u32 param0, fx32 param1, fx32 param2, fx32 param3);

BOOL ov49_0225EC30(UnkStruct_ov49_0225EC30 *param0) {
    fx32 v0;
    s32 v2;
    fx32 v3;

    if (param0->unk_06 < 10) {
        param0->unk_06++;

        v0 = FX_Mul(param0->unk_06 << FX32_SHIFT, param0->unk_08);
        v0 = FX_Div(v0, 10 << FX32_SHIFT);
        ov49_0225D4C8(param0->unk_00, v0 + param0->unk_08);

        v2 = (param0->unk_06 * 31) / 10;
        ov49_0225D4D0(param0->unk_00, 31 - v2);

        v3 = FX_Mul(param0->unk_06 << FX32_SHIFT, 0x2E1);
        v3 = FX_Div(v3, 10 << FX32_SHIFT);
        v3 += FX32_ONE;
        ov49_0225D4F0(param0->unk_00, v3, v3, v3);
        return FALSE;
    }
    return TRUE;
}
