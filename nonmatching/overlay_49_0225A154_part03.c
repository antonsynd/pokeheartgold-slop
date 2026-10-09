#include "global.h"

#include "assert.h"
#include "bg_window.h"
#include "filesystem.h"
#include "list_menu.h"
#include "list_menu_items.h"
#include "pm_string.h"
#include "render_window.h"
#include "sprite.h"
#include "sprite_transfer.h"
#include "text.h"
#include "unk_02005D10.h"
#include "unk_02037C94.h"
#include "unk_0200A090.h"

typedef struct UnkStruct_ov49_0225AC_Gfx {
    BgConfig *bgConfig;
    SpriteList *spriteList;
    u8 unk8[0x128];
    GF_2DGfxResMan *resMan[4];
} UnkStruct_ov49_0225AC_Gfx;

typedef struct UnkStruct_ov49_0225AC_Win {
    Window window;
} UnkStruct_ov49_0225AC_Win;

typedef struct UnkStruct_ov49_0225AC_Text {
    Window window;
    u32 printerId;
    u32 textSpeed;
    String *text;
} UnkStruct_ov49_0225AC_Text;

typedef struct UnkStruct_ov49_0225AC_List {
    ListMenuTemplate menuTemplate;
    Window window;
    struct ListMenu *list;
    ListMenuItem *items;
    u16 itemCount;
    u16 templateCount;
    BOOL unk3C;
    SpriteResource *unk40[4];
    Sprite *sprites[2];
} UnkStruct_ov49_0225AC_List;

typedef struct UnkStruct_ov49_0225AC_Menu {
    ListMenuItem *items;
    ListMenuTemplate menuTemplate;
} UnkStruct_ov49_0225AC_Menu;

const u8 ov49_022696E8[4] = { 0x14, 0x88, 0x00, 0x00 };

const ListMenuTemplate ov49_022697AC = {
    .totalItems = 0,
    .maxShowed = 2,
    .header_X = 0,
    .item_X = 8,
    .cursor_X = 0,
    .upText_Y = 0,
    .cursorPal = 1,
    .fillValue = 15,
    .cursorShadowPal = 2,
};

extern void ov49_0225AAC8(void *a0, void *a1, void *a2, u32 a3);
extern void ov49_0225AB14(void *a0);
extern void ov49_0225AC38(void *a0);
extern void *ov49_0225B388(void *a0, int a1, int a2);
extern void ov49_0225B3A8(void *a0, int a1, int a2, int a3, int a4);
extern u32 ov45_0222D7CC(u32 a0, u32 a1);

void ov49_0225AEE0(UnkStruct_ov49_0225AC_List *param0);
void ov49_0225B014(UnkStruct_ov49_0225AC_List *param0, u16 *param1, u16 *param2);
void ov49_0225B070(UnkStruct_ov49_0225AC_List *param0);
void ov49_0225B124(UnkStruct_ov49_0225AC_Win *param0);
void ov49_0225B24C(UnkStruct_ov49_0225AC_Win *param0, const String *param1);

void ov49_0225B148(Window *param0, const String *param1, u32 param2, u32 param3) {
    AddTextPrinterParameterizedWithColor(param0, 0, param1, param2, param3, 0xFF, 0x0001020F, NULL);
    ScheduleWindowCopyToVram(param0);
}

BOOL ov49_0225AC5C(const UnkStruct_ov49_0225AC_Text *param0) {
    if (TextPrinterCheckActive((u8)param0->printerId) == 0) {
        return 1;
    }

    return 0;
}

void ov49_0225AC74(UnkStruct_ov49_0225AC_Text *param0) {
    if (TextPrinterCheckActive((u8)param0->printerId)) {
        RemoveTextPrinter((u8)param0->printerId);
    }

    ov49_0225AC38(param0);

    ClearFrameAndWindow2(&param0->window, 1);
    ClearWindowTilemapAndScheduleTransfer(&param0->window);
}

void ov49_0225ACA8(UnkStruct_ov49_0225AC_Text *param0, void *param1, void *saveData, u32 heapID) {
    ov49_0225AAC8(param0, param1, saveData, heapID);
    SetWindowPaletteNum(&param0->window, 2);
}

void ov49_0225ACBC(UnkStruct_ov49_0225AC_Text *param0) {
    ov49_0225AB14(param0);
}

void ov49_0225ACC4(UnkStruct_ov49_0225AC_Text *param0, const String *param1) {
    if (TextPrinterCheckActive((u8)param0->printerId)) {
        RemoveTextPrinter((u8)param0->printerId);
    }

    FillWindowPixelBuffer(&param0->window, 15);
    String_Copy(param0->text, param1);

    param0->printerId = AddTextPrinterParameterized(&param0->window, 1, param0->text, 0, 0, param0->textSpeed, NULL);

    DrawFrameAndWindow3(&param0->window, 1, 1 + (18 + 12), 2, 3);
}

void ov49_0225AD20(UnkStruct_ov49_0225AC_List *param0, UnkStruct_ov49_0225AC_Gfx *param1, u32 heapID) {
    SpriteResourcesHeader v0;
    SimpleSpriteTemplate v1;
    int v2;
    NARC *v3 = NARC_New(0x3C, heapID);

    param0->unk40[0] = AddCharResObjFromOpenNarc(param1->resMan[0], v3, 4, 0, 5000, 1, heapID);
    param0->unk40[1] = AddPlttResObjFromOpenNarc(param1->resMan[1], v3, 10, 0, 5000, 1, 1, heapID);
    param0->unk40[2] = AddCellOrAnimResObjFromOpenNarc(param1->resMan[2], v3, 5, 0, 5000, 2, heapID);
    param0->unk40[3] = AddCellOrAnimResObjFromOpenNarc(param1->resMan[3], v3, 6, 0, 5000, 3, heapID);

    NARC_Delete(v3);
    SpriteTransfer_CreateCharTransferTask_AllocAtEnd(param0->unk40[0]);
    SpriteTransfer_CreatePlttTransferTask(param0->unk40[1]);
    CreateSpriteResourcesHeader(&v0, 5000, 5000, 5000, 5000, -1, -1, 0, 0, param1->resMan[0], param1->resMan[1], param1->resMan[2], param1->resMan[3], NULL, NULL);

    v1.spriteList = param1->spriteList;
    v1.header = &v0;
    v1.position.x = 192 * 0x1000;
    v1.priority = 0;
    v1.whichScreen = 1;
    v1.heapID = heapID;

    for (v2 = 0; v2 < 2; v2++) {
        v1.position.y = ov49_022696E8[v2] * 0x1000;
        param0->sprites[v2] = Sprite_Create(&v1);

        Sprite_SetAnimCtrlSeq(param0->sprites[v2], v2);
        Sprite_SetAnimActiveFlag(param0->sprites[v2], 1);
        Sprite_SetDrawFlag(param0->sprites[v2], FALSE);
    }

    param0->unk3C = 0;
}

void ov49_0225AE4C(UnkStruct_ov49_0225AC_List *param0, UnkStruct_ov49_0225AC_Gfx *param1) {
    int v0;

    if (param0->items != NULL) {
        ov49_0225AEE0(param0);
    }

    if (param0->list != NULL) {
        ov49_0225B014(param0, NULL, NULL);
    }

    for (v0 = 0; v0 < 2; v0++) {
        Sprite_Delete(param0->sprites[v0]);
        param0->sprites[v0] = NULL;
    }

    SpriteTransfer_DeleteCharTransferTask(param0->unk40[0]);
    SpriteTransfer_DeletePlttTransferTask(param0->unk40[1]);

    for (v0 = 0; v0 < 4; v0++) {
        DestroySingle2DGfxResObj(param1->resMan[v0], param0->unk40[v0]);
    }
}

void ov49_0225AEA8(UnkStruct_ov49_0225AC_List *param0, u32 param1, u32 heapID, u32 param3) {
    int v0;

    GF_ASSERT(param0->items == NULL);
    param0->items = ListMenuItems_New(param1, heapID);
    param0->itemCount = param1;

    for (v0 = 0; v0 < param1; v0++) {
        param0->items[v0].value = param3;
    }
}

void ov49_0225AEE0(UnkStruct_ov49_0225AC_List *param0) {
    if (param0->items != NULL) {
        ListMenuItems_Delete(param0->items);
        param0->items = NULL;
        param0->itemCount = 0;
    }
}

void ov49_0225AEF8(UnkStruct_ov49_0225AC_List *param0, const String *param1, u32 param2) {
    ListMenuItems_AddItem(param0->items, param1, param2);
}

ListMenuItem *ov49_0225AF04(const UnkStruct_ov49_0225AC_List *param0) {
    return param0->items;
}

BOOL ov49_0225AF08(const UnkStruct_ov49_0225AC_List *param0, u32 param1) {
    int v0;

    for (v0 = 0; v0 < param0->itemCount; v0++) {
        if (param0->items[v0].value == param1) {
            return 1;
        }
    }

    return 0;
}

void ov49_0225B058(struct ListMenu *list, s32 index, u8 onInit) {
    if (onInit == 0) {
        PlaySE(0x5DC);
    }
}

void ov49_0225AF30(UnkStruct_ov49_0225AC_List *param0, const ListMenuTemplate *param1, UnkStruct_ov49_0225AC_Gfx *param2, u16 param3, u16 param4, u32 heapID, u8 param6, u8 param7, u8 param8) {
    GF_ASSERT(param0->list == NULL);
    GF_ASSERT((param1->maxShowed * 2) < 18);

    param0->menuTemplate = *param1;
    param0->menuTemplate.window = &param0->window;
    param0->templateCount = param1->totalItems;
    param0->menuTemplate.moveCursorFunc = ov49_0225B058;

    AddWindowParameterized(param2->bgConfig, &param0->window, 1, param6, param7, param8, (u8)(param1->maxShowed * 2), 5, 0xCA);
    FillWindowPixelBuffer(&param0->window, 15);
    DrawFrameAndWindow1(&param0->window, 1, 0x55, 3);

    param0->list = ListMenuInit(&param0->menuTemplate, param3, param4, (u8)heapID);

    ScheduleWindowCopyToVram(&param0->window);
}

u32 ov49_0225AFD8(UnkStruct_ov49_0225AC_List *param0) {
    u32 v0;

    if (param0->list == NULL) {
        return 0xfffffffe;
    }

    v0 = ListMenu_ProcessInput(param0->list);

    switch (v0) {
    case 0xffffffff:
    case 0xfffffffe:
        ov49_0225B070(param0);
        break;
    default:
        PlaySE(0x5DC);
        break;
    }

    return v0;
}

void ov49_0225B014(UnkStruct_ov49_0225AC_List *param0, u16 *param1, u16 *param2) {
    int v0;

    if (param0->list == NULL) {
        return;
    }

    DestroyListMenu(param0->list, param1, param2);

    param0->list = NULL;

    sub_0200E5D4(&param0->window, 1);
    ClearWindowTilemapAndScheduleTransfer(&param0->window);
    RemoveWindow(&param0->window);

    param0->unk3C = 0;

    for (v0 = 0; v0 < 2; v0++) {
        Sprite_SetDrawFlag(param0->sprites[v0], FALSE);
    }
}

void ov49_0225B06C(UnkStruct_ov49_0225AC_List *param0, BOOL param1) {
    param0->unk3C = param1;
}

void ov49_0225B070(UnkStruct_ov49_0225AC_List *param0) {
    u16 v0;

    if (param0->unk3C == 0) {
        Sprite_SetDrawFlag(param0->sprites[0], FALSE);
        Sprite_SetDrawFlag(param0->sprites[1], FALSE);
        return;
    }

    ListMenuGetScrollAndRow(param0->list, &v0, NULL);

    if (v0 <= 0) {
        Sprite_SetDrawFlag(param0->sprites[0], FALSE);
    } else {
        Sprite_SetDrawFlag(param0->sprites[0], TRUE);
    }

    if (v0 >= (param0->templateCount - 7)) {
        Sprite_SetDrawFlag(param0->sprites[1], FALSE);
    } else {
        Sprite_SetDrawFlag(param0->sprites[1], TRUE);
    }
}

void ov49_0225B0D4(UnkStruct_ov49_0225AC_Win *param0, void *param1, u32 heapID) {
    return;
}

void ov49_0225B0D8(UnkStruct_ov49_0225AC_Win *param0) {
    ov49_0225B124(param0);
}

void ov49_0225B0E0(UnkStruct_ov49_0225AC_Win *param0, UnkStruct_ov49_0225AC_Gfx *param1, u32 param2, u8 param3, u8 param4, u8 param5, u8 param6) {
    AddWindowParameterized(param1->bgConfig, &param0->window, 1, param3, param4, param5, param6, 5, 0xCA);
    DrawFrameAndWindow1(&param0->window, 1, 0x55, 3);
    FillWindowPixelBuffer(&param0->window, 15);
    ScheduleWindowCopyToVram(&param0->window);
}

void ov49_0225B124(UnkStruct_ov49_0225AC_Win *param0) {
    if (WindowIsInUse(&param0->window) == 1) {
        sub_0200E5D4(&param0->window, 1);
        ClearWindowTilemapAndScheduleTransfer(&param0->window);
        RemoveWindow(&param0->window);
    }
}

void ov49_0225B178(UnkStruct_ov49_0225AC_Win *param0, u16 param1, u16 param2, u16 param3, u16 param4) {
    FillWindowPixelRect(&param0->window, 15, param1, param2, param3, param4);
}

void ov49_0225B198(UnkStruct_ov49_0225AC_Menu *param0, void *param1, u32 heapID) {
    GF_ASSERT(param0->items == NULL);
    param0->items = ListMenuItems_New(2, heapID);

    ListMenuItems_AddItem(param0->items, ov49_0225B388(param1, 1, 0x43), 0);
    ListMenuItems_AddItem(param0->items, ov49_0225B388(param1, 1, 0x42), 1);

    param0->menuTemplate = ov49_022697AC;
    param0->menuTemplate.totalItems = 2;
    param0->menuTemplate.items = param0->items;
}

void ov49_0225B200(UnkStruct_ov49_0225AC_Menu *param0) {
    if (param0->items != NULL) {
        ListMenuItems_Delete(param0->items);
        param0->items = NULL;
    }
}

void ov49_0225B214(UnkStruct_ov49_0225AC_Win *param0, UnkStruct_ov49_0225AC_Gfx *param1, u32 heapID) {
    AddWindowParameterized(param1->bgConfig, &param0->window, 1, 4, 4, 23, 16, 5, 0x5E);
    FillWindowPixelBuffer(&param0->window, 15);
}

void ov49_0225B244(UnkStruct_ov49_0225AC_Win *param0) {
    RemoveWindow(&param0->window);
}

void ov49_0225B24C(UnkStruct_ov49_0225AC_Win *param0, const String *param1) {
    AddTextPrinterParameterizedWithColor(&param0->window, 0, param1, 0, 0, 0xFF, 0x0001020F, NULL);
    DrawFrameAndWindow1(&param0->window, 1, 0x55, 3);
    ScheduleWindowCopyToVram(&param0->window);
}

void ov49_0225B284(UnkStruct_ov49_0225AC_Win *param0, void *param1) {
    u32 v0;
    String *v1;
    u32 *v2 = sub_020392D8();
    v0 = ov45_0222D7CC(v2[0], v2[1]);

    ov49_0225B3A8(param1, v2[0], 5, 0, 2);
    v1 = ov49_0225B388(param1, 2, v0);
    ov49_0225B24C(param0, v1);
}
