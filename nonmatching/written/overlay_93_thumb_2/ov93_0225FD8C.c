#include "global.h"

typedef struct UnkStruct_ov93_02262CF0 {
    s32 unk_00;
    s32 unk_04;
} UnkStruct_ov93_02262CF0;

typedef struct UnkStruct_ov93_02262FD4 {
    s32 unk_00[3];
} UnkStruct_ov93_02262FD4;

extern const UnkStruct_ov93_02262CF0 ov93_02262CF0[];
extern const UnkStruct_ov93_02262FD4 ov93_02262FD4[];

void ov93_0225FD8C(int param0, int param1, int param2, fx32 *param3, fx32 *param4) {
    fx32 v0;

    v0 = ov93_02262CF0[param1].unk_00 * param2 / ov93_02262FD4[param0].unk_00[param1];
    v0 += 0x300;

    *param3 = v0;
    *param4 = v0;

    if (v0 > FX32_ONE) {
        *param3 += FX_Mul(v0 - FX32_ONE, 0x119A);
    }
}
