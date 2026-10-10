#include "global.h"

typedef struct UnkStruct_ov90_02258D4C {
    fx32 unk_00;
    fx32 unk_04;
    fx32 unk_08;
    fx32 unk_0C;
    s32 unk_10;
} UnkStruct_ov90_02258D4C;

BOOL ov90_02258D4C(UnkStruct_ov90_02258D4C *param0, s32 param1) {
    fx32 v0;
    fx32 v1;
    fx32 v2;
    fx32 v3;
    BOOL v4;

    if (param1 >= param0->unk_10) {
        param1 = param0->unk_10;
        v4 = 1;
    } else {
        v4 = 0;
    }

    v3 = FX_Mul(param0->unk_08, param1 << FX32_SHIFT);
    v1 = (param1 * param1) << FX32_SHIFT;
    v2 = FX_Mul(param0->unk_0C, v1);
    v2 = FX_Div(v2, 2 * FX32_ONE);
    v0 = v3 + v2;

    param0->unk_00 = param0->unk_04 + v0;

    return v4;
}
