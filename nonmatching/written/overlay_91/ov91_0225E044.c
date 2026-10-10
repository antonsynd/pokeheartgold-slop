#include "global.h"

typedef struct UnkStruct_ov91_0225E044 {
    u8 unk_00[0xAC];
    int unk_AC;
    int unk_B0;
} UnkStruct_ov91_0225E044;

int ov91_0225E044(const UnkStruct_ov91_0225E044 *param0, int param1) {
    s32 v0;
    int v1;

    v0 = (param1 * 360) / 0xffff;
    v0 = 90 - v0;
    v1 = (v0 * param0->unk_AC) / 90;
    v1 += param0->unk_B0;

    return v1;
}
