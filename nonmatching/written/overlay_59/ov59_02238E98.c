#include "global.h"

#include "touchscreen_list_menu.h"

typedef struct UnkStruct_ov59_02238E98_Entry {
    u16 count;
    u8 x;
    u8 y;
    const u8 *msgIds;
} UnkStruct_ov59_02238E98_Entry;

typedef struct UnkStruct_ov59_02238E98 {
    u8 padding_00[0x40];
    u32 unk_40;
    u8 unk_44;
    u8 padding_45[0x54 - 0x45];
    BgConfig *unk_54;
    TouchscreenListMenuSpawner *unk_58;
    u8 padding_5C[0x294 - 0x5C];
    ListMenuItem *unk_294;
    TouchscreenListMenu *unk_298;
} UnkStruct_ov59_02238E98;

extern const u16 ov59_0223C630[];
extern const UnkStruct_ov59_02238E98_Entry ov59_0223C668[];

void ov59_02238E98(UnkStruct_ov59_02238E98 *param0) {
    TouchscreenListMenuHeader header;
    const UnkStruct_ov59_02238E98_Entry *entry;
    u16 *v0;
    int idx;

    MI_CpuFill8(&header, 0, 0x18);

    v0 = (u16 *)&header;
    v0[0] = ov59_0223C630[6];
    v0[1] = ov59_0223C630[7];
    v0[2] = ov59_0223C630[8];
    v0[3] = ov59_0223C630[9];
    v0[4] = ov59_0223C630[10];
    v0[5] = ov59_0223C630[11];
    header.listMenuItems = param0->unk_294;
    header.bgConfig = param0->unk_54;

    idx = param0->unk_44 - 1;
    header.numWindows = ov59_0223C668[idx].count;
    idx = param0->unk_44 - 1;
    entry = &ov59_0223C668[idx];
    param0->unk_298 = TouchscreenListMenu_Create(param0->unk_58, &header, (u8)param0->unk_40, entry->x, entry->y, 8, 0);
}
