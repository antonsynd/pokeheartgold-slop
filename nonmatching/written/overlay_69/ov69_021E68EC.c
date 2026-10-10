#include "global.h"
#include "bg_window.h"
#include "list_menu.h"
#include "list_menu_items.h"
#include "msgdata.h"
#include "render_window.h"

typedef struct UnkStruct_ov69_021E68EC {
    /* 0x0000 */ u32 heapId;
    /* 0x0004 */ u8 filler_0004[0xC010 - 0x4];
    /* 0xC010 */ BgConfig *bgConfig;
    /* 0xC014 */ u8 filler_C014[0xC064 - 0xC014];
    /* 0xC064 */ struct ListMenu *listMenu;
    /* 0xC068 */ ListMenuItem *items;
    /* 0xC06C */ u8 filler_C06C[4];
    /* 0xC070 */ MsgData *msgData;
} UnkStruct_ov69_021E68EC;

typedef struct UnkStruct_ov69_021E68EC_Entry {
    int msgId;
    int value;
} UnkStruct_ov69_021E68EC_Entry;

void ov69_021E68D8(struct ListMenu *list, s32 index, int onInit);

void ov69_021E68EC(UnkStruct_ov69_021E68EC *work, Window *window, const WindowTemplate *winTemplate, const ListMenuTemplate *lmTemplate, const UnkStruct_ov69_021E68EC_Entry *entries) {
    ListMenuTemplate tmpl;
    const u32 *src;
    u32 *dst;
    int i;

    AddWindow(work->bgConfig, window, winTemplate);
    work->items = ListMenuItems_New(lmTemplate->totalItems, work->heapId);
    for (i = 0; i < lmTemplate->totalItems; i++) {
        ListMenuItems_AppendFromMsgData(work->items, work->msgData, entries[i].msgId, entries[i].value);
    }
    src = (const u32 *)lmTemplate;
    dst = (u32 *)&tmpl;
    for (i = 0; i < 8; i++) {
        dst[i] = src[i];
    }
    tmpl.items = work->items;
    tmpl.window = window;
    tmpl.moveCursorFunc = ov69_021E68D8;
    work->listMenu = ListMenuInit(&tmpl, 0, 0, (u8)work->heapId);
    DrawFrameAndWindow1(tmpl.window, 1, 0x1D9, 7);
    CopyWindowToVram(window);
}
