#include "global.h"

typedef struct UnkStruct_ov93_02261310_Elem {
    u8 filler_00[0xC];
    int unk_0C;
    u8 unk_10;
    u8 filler_11[3];
    u8 unk_14;
    u8 filler_15[0x4C - 0x15];
} UnkStruct_ov93_02261310_Elem;

typedef struct UnkStruct_ov93_02261310 {
    UnkStruct_ov93_02261310_Elem unk_00[3];
    u8 filler_E4[4];
    int unk_E8;
    u8 filler_EC[5];
    u8 unk_F1;
    u8 filler_F2[2];
    u8 unk_F4;
} UnkStruct_ov93_02261310;

typedef struct UnkStruct_ov93_02262CC4 {
    u8 unk_00;
    u8 filler_01[3];
} UnkStruct_ov93_02262CC4;

extern const UnkStruct_ov93_02262CC4 ov93_02262CC4[];

void ov93_02261310(void *param0, UnkStruct_ov93_02261310 *param1) {
    int i;

    param1->unk_E8 = (360 << 12) / 12 / ov93_02262CC4[param1->unk_F4].unk_00;

    for (i = 0; i < 3; i++) {
        param1->unk_00[i].unk_0C = (i * 90) << 12;
        param1->unk_00[i].unk_14 = 1 + i;
    }

    param1->unk_00[0].unk_10 = 2;
    param1->unk_F1 = 1;
}
