#include "global.h"

typedef struct UnkStruct_ov45_0222FA40_Entry {
    u16 unk_00;
    u16 unk_02;
    int *unk_04;
} UnkStruct_ov45_0222FA40_Entry;

typedef struct UnkStruct_ov45_0222FA40 {
    u8 padding_00[0x11C];
    UnkStruct_ov45_0222FA40_Entry unk_11C[1];
} UnkStruct_ov45_0222FA40;

void ov45_0222FA40(UnkStruct_ov45_0222FA40 *param0, u32 param1) {
    int i;
    UnkStruct_ov45_0222FA40_Entry *entry = &param0->unk_11C[param1];

    entry->unk_00 = 0;

    for (i = 0; i < entry->unk_02; i++) {
        entry->unk_04[i] = -1;
    }
}
