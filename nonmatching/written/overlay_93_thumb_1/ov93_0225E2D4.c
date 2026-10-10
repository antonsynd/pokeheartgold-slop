#include "global.h"

typedef struct UnkStruct_ov93_0225E2D4_Elem {
    int unk_00;
    u8 filler_04[0x10];
} UnkStruct_ov93_0225E2D4_Elem;

typedef struct UnkStruct_ov93_0225E2D4 {
    u8 filler_0000[0x176C];
    UnkStruct_ov93_0225E2D4_Elem unk_176C[60];
    u8 filler_1C1C[0x2F28 - 0x1C1C];
    int unk_2F28;
} UnkStruct_ov93_0225E2D4;

UnkStruct_ov93_0225E2D4_Elem *ov93_0225E2D4(UnkStruct_ov93_0225E2D4 *param0) {
    int idx = param0->unk_2F28 % 60;
    UnkStruct_ov93_0225E2D4_Elem *elem = &param0->unk_176C[idx];

    if (elem->unk_00 != 0) {
        return elem;
    }
    return NULL;
}
