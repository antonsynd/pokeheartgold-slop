#include "global.h"

typedef struct UnkStruct_ov91_02260378 {
    u8 unk_00[0x214];
    u8 unk_214[0x14];
    fx32 unk_228;
    u16 unk_22C;
    u16 unk_22E;
} UnkStruct_ov91_02260378;

extern const u8 ov91_02261C12[];
extern const u8 ov91_02261C13[];

extern void sub_02018198(void *a0, fx32 frame);

void ov91_02260378(UnkStruct_ov91_02260378 *param0) {
    if (param0->unk_22E == 1) {
        if ((param0->unk_228 + FX32_CONST(2)) < FX32_CONST(40)) {
            param0->unk_228 += FX32_CONST(2);
        } else {
            param0->unk_228 = FX32_CONST(1);
        }
    } else {
        u32 v1;

        if (param0->unk_22C == 4) {
            v1 = 0;
        } else {
            v1 = 1 + param0->unk_22C;
        }

        if (param0->unk_228 < ov91_02261C12[v1 * 2] * FX32_ONE) {
            param0->unk_228 = ov91_02261C12[v1 * 2] * FX32_ONE;
        } else if ((param0->unk_228 + FX32_CONST(2)) < ov91_02261C13[v1 * 2] * FX32_ONE) {
            param0->unk_228 += FX32_CONST(2);
        } else {
            param0->unk_228 = ov91_02261C12[v1 * 2] * FX32_ONE;
        }
    }

    sub_02018198(param0->unk_214, param0->unk_228);
}
