#include "global.h"

#include "list_menu_items.h"

typedef struct UnkStruct_ov59_022398CC_Entry {
    u16 count;
    u8 x;
    u8 y;
    const u8 *msgIds;
} UnkStruct_ov59_022398CC_Entry;

typedef struct UnkStruct_ov59_022398CC {
    enum HeapID unk_00;
    u8 padding_04[0x44 - 0x04];
    u8 unk_44;
    u8 padding_45[0x5C - 0x45];
    MsgData *unk_5C;
    u8 padding_60[0x294 - 0x60];
    ListMenuItem *unk_294;
} UnkStruct_ov59_022398CC;

extern const UnkStruct_ov59_022398CC_Entry ov59_0223C668[];

void ov59_022398CC(UnkStruct_ov59_022398CC *param0) {
    int idx;
    int i;
    const UnkStruct_ov59_022398CC_Entry *entry;

    if (param0->unk_44 == 0) {
        return;
    }
    idx = param0->unk_44 - 1;
    entry = &ov59_0223C668[idx];
    param0->unk_294 = ListMenuItems_New(entry->count, param0->unk_00);
    i = 0;
    if (ov59_0223C668[idx].count == 0) {
        return;
    }
    do {
        ListMenuItems_AppendFromMsgData(param0->unk_294, param0->unk_5C, entry->msgIds[i], i);
        i++;
    } while (i < entry->count);
}
