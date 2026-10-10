#include "global.h"

typedef struct UnkStruct_ov43_0222ED18 {
    s16 unk_00;
    s16 unk_02;
    u8 padding_04[0xC];
    int unk_10;
} UnkStruct_ov43_0222ED18;

void ov43_0222ED18(UnkStruct_ov43_0222ED18 *param0, int param1) {
    int count;

    if (param0->unk_10 == 1) {
        count = 8;
    } else {
        count = 3;
    }

    if (param1 > 0) {
        param0->unk_02 = param0->unk_00;
        param0->unk_00 = (param0->unk_00 + param1) % count;
    } else if (param1 < 0) {
        param0->unk_02 = param0->unk_00;
        param0->unk_00 = param0->unk_00 + param1;
        if (param0->unk_00 < 0) {
            param0->unk_00 += count;
        }
    }
}
