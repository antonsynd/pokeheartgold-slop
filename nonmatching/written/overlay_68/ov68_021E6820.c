#include "global.h"
#include "heap.h"
#include "list_menu_items.h"
#include "msgdata.h"

typedef struct UnkStruct_ov68_021E6820_Data {
    /* 0x00 */ u8 filler_00[0x10];
    /* 0x10 */ u16 *moves;
    /* 0x14 */ u16 listPos;
} UnkStruct_ov68_021E6820_Data;

typedef struct UnkStruct_ov68_021E6820 {
    /* 0x000 */ UnkStruct_ov68_021E6820_Data *data;
    /* 0x004 */ u8 filler_004[0xF8 - 0x4];
    /* 0x0F8 */ MsgData *msgData;
    /* 0x0FC */ u8 filler_0FC[0x110 - 0xFC];
    /* 0x110 */ ListMenuItem *items;
    /* 0x114 */ u8 filler_114[0x1B8 - 0x114];
    /* 0x1B8 */ u8 numMoves;
    /* 0x1B9 */ u8 filler_1B9[2];
    /* 0x1BB */ u8 unk_1BB;
    /* 0x1BC */ u8 unk_1BC;
} UnkStruct_ov68_021E6820;

u8 ov68_021E6678(UnkStruct_ov68_021E6820 *ctl);
int ov68_021E67E0(UnkStruct_ov68_021E6820 *ctl);

int ov68_021E6820(UnkStruct_ov68_021E6820 *ctl) {
    MsgData *moveNames;
    u32 i;
    u32 move;
    u32 listPos;

    ctl->numMoves = ov68_021E6678(ctl);
    ctl->items = ListMenuItems_New(ctl->numMoves, 0x42);
    moveNames = NewMsgDataFromNarc(0, 0x1B, 0x2EE, 0x42);
    for (i = 0; i < ctl->numMoves; i++) {
        move = ctl->data->moves[i];
        if (move == 0xFFFF) {
            ListMenuItems_AppendFromMsgData(ctl->items, ctl->msgData, 0x20, -2);
            break;
        }
        ListMenuItems_AppendFromMsgData(ctl->items, moveNames, move, move);
    }
    DestroyMsgData(moveNames);
    ctl->unk_1BB = 0;
    listPos = ctl->data->listPos;
    ctl->unk_1BC = listPos;
    return ov68_021E67E0(ctl);
}
