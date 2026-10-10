#include "global.h"

typedef struct UnkStruct_ov49_02259A20 {
    u8 unk_00;
    u8 unk_01;
    s8 unk_02;
    s8 unk_03;
    s16 unk_04;
    s16 unk_06;
} UnkStruct_ov49_02259A20;

extern void ov45_02230700(void *a, u32 b);

void ov49_02259A20(UnkStruct_ov49_02259A20 *param0, void *param1, u32 param2) {
    param0->unk_01 = param2;
    param0->unk_02 = param2;
    param0->unk_03 = 0;
    param0->unk_04 = 0;
    param0->unk_06 = 0;
    param0->unk_00 = 0;

    ov45_02230700(param1, param2);
}
