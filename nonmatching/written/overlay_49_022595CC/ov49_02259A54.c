#include "global.h"

typedef struct UnkStruct_ov49_02259A54 {
    u8 unk_00;
    u8 unk_01;
    s8 unk_02;
    s8 unk_03;
    s16 unk_04;
    s16 unk_06;
} UnkStruct_ov49_02259A54;

extern void ov45_02230700(void *a, u32 b);

int ov49_02259A54(UnkStruct_ov49_02259A54 *param0, void *param1) {
    if (param0->unk_00 == 0) {
        return 1;
    }

    param0->unk_04++;

    if (param0->unk_04 >= param0->unk_06) {
        param0->unk_00 = 0;
    }

    param0->unk_01 = (param0->unk_04 * param0->unk_03) / param0->unk_06;
    param0->unk_01 += param0->unk_02;

    ov45_02230700(param1, param0->unk_01);

    return 0;
}
