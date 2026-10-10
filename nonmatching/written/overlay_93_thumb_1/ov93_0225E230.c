#include "global.h"

typedef struct UnkStruct_ov93_0225E230_Elem {
    int unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    int unk_10;
} UnkStruct_ov93_0225E230_Elem;

typedef struct UnkStruct_ov93_0225E230 {
    u8 filler_0000[0x176C];
    UnkStruct_ov93_0225E230_Elem unk_176C[60];
    u8 filler_1C1C[0x2F24 - 0x1C1C];
    int unk_2F24;
} UnkStruct_ov93_0225E230;

extern int ov93_0225E27C(UnkStruct_ov93_0225E230 *param0, const UnkStruct_ov93_0225E230_Elem *param1);

void ov93_0225E230(UnkStruct_ov93_0225E230 *param0, const UnkStruct_ov93_0225E230_Elem *param1) {
    UnkStruct_ov93_0225E230_Elem *elem;
    int idx;

    if (ov93_0225E27C(param0, param1) == 1) {
        return;
    }

    idx = param0->unk_2F24 % 60;
    elem = &param0->unk_176C[idx];
    param0->unk_2F24++;

    GF_ASSERT(elem->unk_00 == 0);

    elem->unk_00 = param1->unk_00;
    elem->unk_04 = param1->unk_04;
    elem->unk_08 = param1->unk_08;
    elem->unk_0C = param1->unk_0C;
    elem->unk_10 = param1->unk_10;
}
