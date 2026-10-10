#include "global.h"

typedef struct UnkStruct_ov91_0225F05C_Entry {
    u32 unk_00;
    u32 unk_04;
    u32 unk_08;
    u32 unk_0C;
    u32 unk_10;
    u32 unk_14;
} UnkStruct_ov91_0225F05C_Entry;

typedef struct UnkStruct_ov91_0225F05C_Table {
    u32 unk_00;
    UnkStruct_ov91_0225F05C_Entry *unk_04;
} UnkStruct_ov91_0225F05C_Table;

typedef struct UnkStruct_ov91_0225F05C_Flags {
    u8 unk_00;
    u8 unk_01;
} UnkStruct_ov91_0225F05C_Flags;

void ov91_0225F05C(const UnkStruct_ov91_0225F05C_Table *param0, const UnkStruct_ov91_0225F05C_Flags *param1, u32 param2, UnkStruct_ov91_0225F05C_Entry *param3) {
    s32 v1;

    GF_ASSERT(param2 < param0->unk_00);

    *param3 = param0->unk_04[param2];

    param3->unk_04 = (u16)param3->unk_04;
    param3->unk_0C = (u16)param3->unk_0C;

    if (param1->unk_00) {
        v1 = 6 - (param2 + 1);

        if (v1 < 0) {
            v1 = 0;
        }

        param3->unk_14 = param0->unk_04[v1].unk_14;
    }

    if (param1->unk_01) {
        param3->unk_04 = -param3->unk_04;
    }
}
