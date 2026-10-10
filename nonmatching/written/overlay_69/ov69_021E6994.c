#include "global.h"
#include "bg_window.h"
#include "list_menu.h"
#include "list_menu_items.h"
#include "msgdata.h"
#include "render_window.h"

typedef struct UnkStruct_ov69_021E6994 {
    /* 0x0000 */ u32 heapId;
    /* 0x0004 */ u8 filler_0004[0xC010 - 0x4];
    /* 0xC010 */ BgConfig *bgConfig;
    /* 0xC014 */ u8 filler_C014[0xC064 - 0xC014];
    /* 0xC064 */ struct ListMenu *listMenu;
    /* 0xC068 */ ListMenuItem *items;
} UnkStruct_ov69_021E6994;

void ov69_021E68D8(struct ListMenu *list, s32 index, int onInit);

void ov69_021E6994(UnkStruct_ov69_021E6994 *work, Window *window, const WindowTemplate *winTemplate, const ListMenuTemplate *lmTemplate, s32 msgFileId, const u8 *msgIds, u32 count) {
    ListMenuTemplate tmpl;
    MsgData *msgData;
    const u32 *src;
    u32 *dst;
    u32 i;

    AddWindow(work->bgConfig, window, winTemplate);
    msgData = NewMsgDataFromNarc(0, 0x1B, msgFileId, work->heapId);
    work->items = ListMenuItems_New(count, work->heapId);
    for (i = 0; i < count; i++) {
        ListMenuItems_AppendFromMsgData(work->items, msgData, msgIds[i], i);
    }
    DestroyMsgData(msgData);
    src = (const u32 *)lmTemplate;
    dst = (u32 *)&tmpl;
    for (i = 0; i < 8; i++) {
        dst[i] = src[i];
    }
    tmpl.items = work->items;
    tmpl.totalItems = count;
    tmpl.window = window;
    tmpl.moveCursorFunc = ov69_021E68D8;
    work->listMenu = ListMenuInit(&tmpl, 0, 0, (u8)work->heapId);
    DrawFrameAndWindow1(tmpl.window, 1, 0x1D9, 7);
    CopyWindowToVram(window);
}
