#include "global.h"

#include "math_util.h"

typedef struct UnkStruct_ov91_0225E7E8 {
    u8 unk_00;
    u8 unk_01;
    u16 unk_02;
    u8 unk_04[4];
    fx32 unk_08;
    fx32 unk_0C;
    fx32 unk_10;
    fx32 unk_14;
} UnkStruct_ov91_0225E7E8;

extern void ov91_0225E728(UnkStruct_ov91_0225E7E8 *param0, VecFx32 *param1);
extern void ov91_0225EA54(UnkStruct_ov91_0225E7E8 *param0, VecFx32 *param1);

void ov91_0225E7E8(UnkStruct_ov91_0225E7E8 *param0, void *param1, BOOL param2, fx32 param3, BOOL param4) {
    fx32 v0;
    fx32 v1;
    fx32 v1x;
    fx32 v1z;
    VecFx32 v2;
    u32 v3;

    if (param2) {
        param0->unk_08 = -param0->unk_08;
        param0->unk_10 = -param0->unk_10;

        if (param4) {
            v3 = MTRandom();

            v1z = param0->unk_10;
            v0 = v1z >= 0 ? v1z : -v1z;
            v1x = param0->unk_08;
            v1 = v1x >= 0 ? v1x : -v1x;

            if (v1 <= v0) {
                v1 = FX_Mul(param0->unk_10, FX32_CONST(1));

                if ((v3 & 1) == 1) {
                    param0->unk_08 = -v1;
                } else {
                    param0->unk_08 = v1;
                }
            } else {
                v1 = FX_Mul(param0->unk_08, FX32_CONST(1));

                if ((v3 & 1) == 1) {
                    param0->unk_10 = -v1;
                } else {
                    param0->unk_10 = v1;
                }
            }
        }
    }

    param0->unk_14 = FX_Mul(param0->unk_14, param3);
    param0->unk_02 = 0;
    param0->unk_00 = 5;

    ov91_0225E728(param0, &v2);
    ov91_0225EA54(param0, &v2);

    param0->unk_02++;
}
