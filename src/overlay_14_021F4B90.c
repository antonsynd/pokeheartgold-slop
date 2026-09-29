#include "global.h"

#include "msgdata/msg.naix"

#include "bg_window.h"
#include "font.h"
#include "gf_gfx_loader.h"
#include "heap.h"
#include "item.h"
#include "message_format.h"
#include "message_printer.h"
#include "msgdata.h"
#include "obj_char_transfer.h"
#include "pm_string.h"
#include "pokedex_util.h"
#include "pokemon_storage_system.h"
#include "save.h"
#include "sprite_system.h"
#include "string_util.h"
#include "unk_02013534.h"
#include "unk_0201956C.h"

#define MAKE_TEXT_COLOR(fg, sh, bg) ((((fg) & 0xFF) << 16) | (((sh) & 0xFF) << 8) | (((bg) & 0xFF) << 0))

u8 AddTextPrinterParameterizedWithColor(Window *window, u32 fontId, String *string, u32 x, u32 y, u32 textSpeed, u32 color, PrinterCallback_t callback);

typedef struct UnkStruct_ov14_textobj {
    TextOBJ *textObj;
    UnkStruct_02021AC8 charTransfer;
} UnkStruct_ov14_textobj;

typedef struct UnkStruct_ov14_boxsys {
    u8 unk0[0x14];
    BgConfig *bgConfig;
    u8 unk18[4];
    MessagePrinter *messagePrinter;
    MsgData *msgData;
    MessageFormat *msgFmt;
    String *tmpString;
    u8 unk2C[4];
    Window windows[0x2C];
    UnkStruct_0201956C *unk2F0;
    u8 unk2F4[4];
    SpriteManager *spriteMgr;
    ManagedSprite *sprites[0x45];
    UnkStruct_02013534 *fontSystem;
    UnkStruct_ov14_textobj textObjs[2];
    u8 unk434[0x44D - 0x434];
    u8 unk44D;
    u8 unk44E_0 : 4;
    u8 unk44E_4 : 3;
    u8 unk44E_7 : 1;
} UnkStruct_ov14_boxsys;

typedef struct UnkStruct_ov14_args {
    SaveData *saveData;
    u8 unk4[4];
    int unk8;
} UnkStruct_ov14_args;

typedef struct UnkStruct_ov14_boxapp {
    UnkStruct_ov14_args *args;
    PCStorage *storage;
    u8 unk8[0x17];
    u8 boxId1F;
    u8 unk20[5];
    u8 boxId25;
    u8 unk26[0xE];
    UnkStruct_ov14_boxsys *sys;
} UnkStruct_ov14_boxapp;

typedef struct UnkStruct_ov14_mon {
    BoxPokemon *boxmon;
    u16 species;
    u16 item;
    u8 unk8[6];
    u8 ability;
    u8 nature;
    u8 unk10[2];
    u8 level : 7;
    u8 isEgg : 1;
    u8 gender : 7;
    u8 hasGender : 1;
    u16 msgIds[4];
} UnkStruct_ov14_mon;

void ov14_021F29E4(UnkStruct_ov14_boxsys *sys, int a1, int a2);
void ov14_021F2A18(UnkStruct_ov14_boxsys *sys, int index, int a2);
void ov14_021F2A60(UnkStruct_ov14_boxsys *sys, int index, int a2);
void ov14_021F46F4(UnkStruct_ov14_boxsys *sys);
void ov14_021F49E0(UnkStruct_ov14_boxapp *work);
MsgData *ov14_021F6628(UnkStruct_ov14_boxapp *work);
void sub_020137F0(TextOBJ *textOBJ, u8 a1);
void sub_020138B0(TextOBJ *textOBJ, u8 a1);

void ov14_021F4BC0(UnkStruct_ov14_boxapp *work);
void ov14_021F4CA0(UnkStruct_ov14_boxapp *work);
void ov14_021F4D10(UnkStruct_ov14_boxsys *sys);
void ov14_021F4E68(UnkStruct_ov14_boxsys *sys);
void ov14_021F4EA0(UnkStruct_ov14_boxsys *sys, Window *window, int index);
void ov14_021F4ED0(UnkStruct_ov14_boxapp *work);
void ov14_021F4F00(UnkStruct_ov14_boxapp *work);
void ov14_021F4F24(Window *window, String *str, int x, int y, int fontId, u32 color, int align);
void ov14_021F4F84(UnkStruct_ov14_boxsys *sys, MsgData *msgData, int winIdx, int msgId, int x, int y, int fontId, u32 color, int align);
void ov14_021F4FBC(UnkStruct_ov14_boxsys *sys, MsgData *msgData, int winIdx, int msgId, int x, int y, int fontId, u32 color, int align);
void ov14_021F5368(UnkStruct_ov14_boxapp *work, UnkStruct_ov14_mon *mon);
void ov14_021F53C0(UnkStruct_ov14_boxsys *sys);
int ov14_021F5404(UnkStruct_ov14_boxapp *work, UnkStruct_ov14_mon *mon);
int ov14_021F5564(UnkStruct_ov14_boxapp *work, u16 itemId);
void ov14_021F5620(UnkStruct_ov14_boxapp *work);
void ov14_021F566C(UnkStruct_ov14_boxapp *work);
void ov14_021F5718(UnkStruct_ov14_boxapp *work, void *src, u32 baseTile, u32 width, u32 height);
void ov14_021F57B8(UnkStruct_ov14_boxapp *work);

static const WindowTemplate ov14_021F84B4[0x2C] = {
    { 4, 8,  5,  8,  2, 15, 0x69  },
    { 4, 1,  7,  8,  2, 15, 0x79  },
    { 4, 4,  9,  6,  2, 15, 0x89  },
    { 4, 1,  0,  30, 3, 15, 0xF   },
    { 4, 16, 5,  2,  2, 15, 0x95  },
    { 4, 1,  5,  6,  2, 15, 0x99  },
    { 4, 1,  13, 8,  2, 15, 0xA5  },
    { 4, 1,  17, 11, 2, 15, 0xB5  },
    { 4, 1,  21, 12, 2, 15, 0xCB  },
    { 6, 1,  1,  11, 2, 1,  0x3EA },
    { 6, 1,  3,  11, 2, 1,  0x3D4 },
    { 6, 1,  5,  11, 2, 1,  0x3BE },
    { 6, 1,  7,  11, 2, 1,  0x3A8 },
    { 6, 1,  1,  11, 2, 1,  0x392 },
    { 6, 1,  3,  11, 2, 1,  0x37C },
    { 6, 1,  5,  11, 2, 1,  0x366 },
    { 6, 1,  7,  11, 2, 1,  0x350 },
    { 4, 1,  11, 8,  2, 15, 0xE3  },
    { 4, 1,  15, 11, 2, 15, 0xF3  },
    { 4, 1,  19, 12, 2, 15, 0x109 },
    { 6, 1,  1,  12, 2, 1,  0x3E8 },
    { 6, 4,  3,  27, 6, 1,  0x32E },
    { 6, 1,  1,  12, 2, 1,  0x3D0 },
    { 6, 4,  3,  27, 6, 1,  0x28C },
    { 1, 0,  0,  11, 3, 12, 0x3C7 },
    { 1, 0,  0,  11, 3, 2,  0x3A6 },
    { 1, 0,  0,  8,  3, 12, 0x38E },
    { 1, 0,  0,  8,  3, 12, 0x38E },
    { 1, 0,  0,  8,  3, 12, 0x376 },
    { 0, 0,  0,  11, 3, 12, 0x36D },
    { 0, 0,  0,  11, 3, 12, 0x34C },
    { 0, 0,  0,  11, 3, 12, 0x32B },
    { 0, 0,  0,  11, 3, 12, 0x30A },
    { 0, 0,  0,  11, 3, 12, 0x2E9 },
    { 0, 2,  11, 7,  2, 1,  0x380 },
    { 0, 2,  15, 7,  2, 1,  0x372 },
    { 1, 2,  15, 7,  2, 1,  0x368 },
    { 0, 2,  21, 27, 2, 11, 0x2B3 },
    { 0, 2,  1,  27, 2, 11, 0x2B3 },
    { 0, 2,  21, 19, 2, 11, 0x2B3 },
    { 0, 2,  21, 27, 2, 11, 0x27D },
    { 0, 22, 16, 9,  4, 12, 0x259 },
    { 1, 0,  0,  17, 3, 12, 0x335 },
    { 1, 0,  0,  17, 3, 2,  0x302 },
};

static void ov14_021F4B90(UnkStruct_ov14_boxsys *sys, int index, s16 x, s16 y, int a4) {
    ManagedSprite_SetPositionXY(sys->sprites[index], x, y);
    ov14_021F2A18(sys, index, a4);
    ov14_021F2A60(sys, index, 0);
}

void ov14_021F4BC0(UnkStruct_ov14_boxapp *work) {
    s16 x;
    s16 y;
    u32 i;

    ov14_021F4B90(work->sys, 4, 0xC, 0x54, 1);
    ov14_021F4B90(work->sys, 5, 0xF4, 0x54, 1);
    ov14_021F4B90(work->sys, 6, 0x2B, 0x54, 1);
    ov14_021F4B90(work->sys, 7, 0x80, 0x41, 1);
    ov14_021F4B90(work->sys, 8, 0x80, 0x4D, 1);
    for (i = 0; i < 6; i++) {
        ManagedSprite_GetPositionXY(work->sys->sprites[0xF + i], &x, &y);
        ov14_021F4B90(work->sys, 0xF + i, x, 0x54, 1);
    }
    ov14_021F49E0(work);
    ov14_021F29E4(work->sys, 7, 5);
    ov14_021F46F4(work->sys);
    TextOBJ_SetSpritesDrawFlag(work->sys->textObjs[0].textObj, TRUE);
    TextOBJ_SetSpritesDrawFlag(work->sys->textObjs[1].textObj, TRUE);
    sub_020137F0(work->sys->textObjs[0].textObj, 0);
    sub_020137F0(work->sys->textObjs[1].textObj, 0);
}

void ov14_021F4CA0(UnkStruct_ov14_boxapp *work) {
    u32 i;

    ov14_021F2A18(work->sys, 4, 0);
    ov14_021F2A18(work->sys, 5, 0);
    ov14_021F2A18(work->sys, 6, 0);
    ov14_021F2A18(work->sys, 7, 0);
    ov14_021F2A18(work->sys, 8, 0);
    for (i = 0; i < 6; i++) {
        ov14_021F2A18(work->sys, 0xF + i, 0);
    }
    TextOBJ_SetSpritesDrawFlag(work->sys->textObjs[0].textObj, FALSE);
    TextOBJ_SetSpritesDrawFlag(work->sys->textObjs[1].textObj, FALSE);
}

void ov14_021F4D10(UnkStruct_ov14_boxsys *sys) {
    Window window;
    TextOBJTemplate template;
    UnkStruct_ov14_textobj *textObj;

    sys->fontSystem = FontSystem_NewInit(2, HEAP_ID_10);
    textObj = &sys->textObjs[0];
    InitWindow(&window);
    AddTextWindowTopLeftCorner(sys->bgConfig, &window, 12, 2, 0, 2);
    sub_02021AC8(sub_02013688(&window, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_10), TRUE, NNS_G2D_VRAM_TYPE_2DMAIN, &textObj->charTransfer);
    template.fontSystem = sys->fontSystem;
    template.window = &window;
    template.spriteList = SpriteManager_GetSpriteList(sys->spriteMgr);
    template.plttResourceProxy = SpriteManager_FindPlttResourceProxy(sys->spriteMgr, 0xC101);
    template.sprite = sys->sprites[7]->sprite;
    template.offset = textObj->charTransfer.offset;
    template.x = 0x80;
    template.y = 0x80 - 0x9C;
    template.unk_20 = 1;
    template.unk_24 = 4;
    template.vram = NNS_G2D_VRAM_TYPE_2DMAIN;
    template.heapID = HEAP_ID_10;
    sys->textObjs[0].textObj = sub_020135D8(&template);
    sub_020138B0(sys->textObjs[0].textObj, 1);
    sub_020138E0(sys->textObjs[0].textObj, 1);
    RemoveWindow(&window);
    textObj = &sys->textObjs[1];
    InitWindow(&window);
    AddTextWindowTopLeftCorner(sys->bgConfig, &window, 5, 2, 0, 2);
    sub_02021AC8(sub_02013688(&window, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_10), TRUE, NNS_G2D_VRAM_TYPE_2DMAIN, &textObj->charTransfer);
    template.fontSystem = sys->fontSystem;
    template.window = &window;
    template.spriteList = SpriteManager_GetSpriteList(sys->spriteMgr);
    template.plttResourceProxy = SpriteManager_FindPlttResourceProxy(sys->spriteMgr, 0xC101);
    template.sprite = sys->sprites[7]->sprite;
    template.offset = textObj->charTransfer.offset;
    template.x = 0x80;
    template.y = 0x80 - 0x9C;
    template.unk_20 = 1;
    template.unk_24 = 4;
    template.vram = NNS_G2D_VRAM_TYPE_2DMAIN;
    template.heapID = HEAP_ID_10;
    textObj->textObj = sub_020135D8(&template);
    sub_020138B0(textObj->textObj, 1);
    sub_020138E0(textObj->textObj, 1);
    RemoveWindow(&window);
}

void ov14_021F4E68(UnkStruct_ov14_boxsys *sys) {
    u32 i;

    for (i = 0; i < 2; i++) {
        sub_02021B5C(&sys->textObjs[i].charTransfer);
        FontOAM_Delete(sys->textObjs[i].textObj);
    }
    sub_020135AC(sys->fontSystem);
}

void ov14_021F4EA0(UnkStruct_ov14_boxsys *sys, Window *window, int index) {
    UnkStruct_02013910 *tmp = sub_02013910(window, HEAP_ID_10);
    TextOBJ_CopyFromBGWindow(sys->textObjs[index].textObj, tmp, window, HEAP_ID_10);
    sub_02013938(tmp);
}

void ov14_021F4ED0(UnkStruct_ov14_boxapp *work) {
    u32 i;

    FontID_Alloc(4, HEAP_ID_10);
    for (i = 0; i < 0x2C; i++) {
        AddWindow(work->sys->bgConfig, &work->sys->windows[i], &ov14_021F84B4[i]);
    }
}

void ov14_021F4F00(UnkStruct_ov14_boxapp *work) {
    u16 i;

    for (i = 0; i < 0x2C; i++) {
        RemoveWindow(&work->sys->windows[i]);
    }
    FontID_Release(4);
}

void ov14_021F4F24(Window *window, String *str, int x, int y, int fontId, u32 color, int align) {
    if (align == 1) {
        x -= FontID_String_GetWidth(fontId, str, 0);
    } else if (align == 2) {
        x -= FontID_String_GetWidth(fontId, str, 0) >> 1;
    } else if (align == 3) {
        x -= FontID_String_GetWidthMultiline(fontId, str, 0) >> 1;
    }
    AddTextPrinterParameterizedWithColor(window, fontId, str, x, y, 0xFF, color, NULL);
}

void ov14_021F4F84(UnkStruct_ov14_boxsys *sys, MsgData *msgData, int winIdx, int msgId, int x, int y, int fontId, u32 color, int align) {
    String *str = NewString_ReadMsgData(msgData, msgId);
    ov14_021F4F24(&sys->windows[winIdx], str, x, y, fontId, color, align);
    String_Delete(str);
}

void ov14_021F4FBC(UnkStruct_ov14_boxsys *sys, MsgData *msgData, int winIdx, int msgId, int x, int y, int fontId, u32 color, int align) {
    String *str = NewString_ReadMsgData(msgData, msgId);
    StringExpandPlaceholders(sys->msgFmt, sys->tmpString, str);
    ov14_021F4F24(&sys->windows[winIdx], sys->tmpString, x, y, fontId, color, align);
    String_Delete(str);
}

static void ov14_021F5000(UnkStruct_ov14_boxsys *sys, UnkStruct_ov14_mon *mon, int winIdx) {
    FillWindowPixelBuffer(&sys->windows[winIdx], 0);
    if (!mon->isEgg) {
        BufferBoxMonSpeciesName(sys->msgFmt, 0, mon->boxmon);
        ov14_021F4FBC(sys, sys->msgData, winIdx, 0, 0, 0, 0, MAKE_TEXT_COLOR(1, 2, 0), 0);
    }
    ScheduleWindowCopyToVram(&sys->windows[winIdx]);
}

static void ov14_021F5054(UnkStruct_ov14_boxsys *sys, UnkStruct_ov14_mon *mon, int winIdx) {
    FillWindowPixelBuffer(&sys->windows[winIdx], 0);
    BufferBoxMonNickname(sys->msgFmt, 0, mon->boxmon);
    ov14_021F4FBC(sys, sys->msgData, winIdx, 1, 0, 0, 0, MAKE_TEXT_COLOR(1, 2, 0), 0);
    ScheduleWindowCopyToVram(&sys->windows[winIdx]);
}

static void ov14_021F50A0(UnkStruct_ov14_boxsys *sys, UnkStruct_ov14_mon *mon, int winIdx) {
    FillWindowPixelBuffer(&sys->windows[winIdx], 0);
    if (!mon->isEgg) {
        sub_0200CDAC(sys->messagePrinter, 1, &sys->windows[winIdx], 0, 5);
        BufferIntegerAsString(sys->msgFmt, 0, mon->level, 3, PRINTING_MODE_LEFT_ALIGN, TRUE);
        ov14_021F4FBC(sys, sys->msgData, winIdx, 0x5A, 0x10, 0, 0, MAKE_TEXT_COLOR(1, 2, 0), 0);
    }
    ScheduleWindowCopyToVram(&sys->windows[winIdx]);
}

static void ov14_021F5114(UnkStruct_ov14_boxsys *sys, UnkStruct_ov14_mon *mon, int winIdx) {
    FillWindowPixelBuffer(&sys->windows[winIdx], 0);
    if (!mon->isEgg) {
        if (mon->hasGender == 1) {
            if (mon->gender == 0) {
                ov14_021F4F84(sys, sys->msgData, winIdx, 0x52, 0, 0, 0, MAKE_TEXT_COLOR(7, 8, 0), 0);
            } else if (mon->gender == 1) {
                ov14_021F4F84(sys, sys->msgData, winIdx, 0x53, 0, 0, 0, MAKE_TEXT_COLOR(3, 4, 0), 0);
            }
        }
    }
    ScheduleWindowCopyToVram(&sys->windows[winIdx]);
}

static void ov14_021F5190(UnkStruct_ov14_boxapp *work, UnkStruct_ov14_mon *mon, int winIdx) {
    u32 dexNo;

    FillWindowPixelBuffer(&work->sys->windows[winIdx], 0);
    if (!mon->isEgg) {
        dexNo = Pokedex_ConvertToCurrentDexNo(SaveArray_IsNatDexEnabled(work->args->saveData), mon->species);
        if (dexNo != 0) {
            sub_0200CDAC(work->sys->messagePrinter, 2, &work->sys->windows[winIdx], 0, 5);
            BufferIntegerAsString(work->sys->msgFmt, 0, dexNo, 3, PRINTING_MODE_LEADING_ZEROS, TRUE);
            ov14_021F4FBC(work->sys, work->sys->msgData, winIdx, 0x5B, 0x10, 0, 0, MAKE_TEXT_COLOR(1, 2, 0), 0);
        }
    }
    ScheduleWindowCopyToVram(&work->sys->windows[winIdx]);
}

static void ov14_021F521C(UnkStruct_ov14_boxsys *sys, UnkStruct_ov14_mon *mon, int winIdx) {
    FillWindowPixelBuffer(&sys->windows[winIdx], 0);
    if (!mon->isEgg) {
        BufferNatureName(sys->msgFmt, 0, mon->nature);
        ov14_021F4FBC(sys, sys->msgData, winIdx, 0x55, 0, 0, 0, MAKE_TEXT_COLOR(1, 2, 0), 0);
    } else {
        ov14_021F4F84(sys, sys->msgData, winIdx, 0x5D, 0, 0, 0, MAKE_TEXT_COLOR(1, 2, 0), 0);
    }
    ScheduleWindowCopyToVram(&sys->windows[winIdx]);
}

static void ov14_021F528C(UnkStruct_ov14_boxsys *sys, UnkStruct_ov14_mon *mon, int winIdx) {
    FillWindowPixelBuffer(&sys->windows[winIdx], 0);
    if (!mon->isEgg) {
        BufferAbilityName(sys->msgFmt, 0, mon->ability);
        ov14_021F4FBC(sys, sys->msgData, winIdx, 0x54, 0, 0, 0, MAKE_TEXT_COLOR(1, 2, 0), 0);
    } else {
        ov14_021F4F84(sys, sys->msgData, winIdx, 0x5D, 0, 0, 0, MAKE_TEXT_COLOR(1, 2, 0), 0);
    }
    ScheduleWindowCopyToVram(&sys->windows[winIdx]);
}

static void ov14_021F52FC(UnkStruct_ov14_boxsys *sys, UnkStruct_ov14_mon *mon, int winIdx) {
    FillWindowPixelBuffer(&sys->windows[winIdx], 0);
    if (mon->item != 0) {
        BufferItemName(sys->msgFmt, 0, mon->item);
        ov14_021F4FBC(sys, sys->msgData, winIdx, 0x56, 0, 0, 0, MAKE_TEXT_COLOR(1, 2, 0), 0);
    } else {
        ov14_021F4F84(sys, sys->msgData, winIdx, 0x5C, 0, 0, 0, MAKE_TEXT_COLOR(1, 2, 0), 0);
    }
    ScheduleWindowCopyToVram(&sys->windows[winIdx]);
}

void ov14_021F5368(UnkStruct_ov14_boxapp *work, UnkStruct_ov14_mon *mon) {
    ov14_021F5000(work->sys, mon, 0);
    ov14_021F5054(work->sys, mon, 1);
    ov14_021F50A0(work->sys, mon, 2);
    ov14_021F5114(work->sys, mon, 4);
    ov14_021F5190(work, mon, 5);
    ov14_021F521C(work->sys, mon, 6);
    ov14_021F528C(work->sys, mon, 7);
    ov14_021F52FC(work->sys, mon, 8);
}

void ov14_021F53C0(UnkStruct_ov14_boxsys *sys) {
    ClearWindowTilemapAndScheduleTransfer(&sys->windows[0]);
    ClearWindowTilemapAndScheduleTransfer(&sys->windows[1]);
    ClearWindowTilemapAndScheduleTransfer(&sys->windows[2]);
    ClearWindowTilemapAndScheduleTransfer(&sys->windows[4]);
    ClearWindowTilemapAndScheduleTransfer(&sys->windows[5]);
    ClearWindowTilemapAndScheduleTransfer(&sys->windows[6]);
    ClearWindowTilemapAndScheduleTransfer(&sys->windows[7]);
    ClearWindowTilemapAndScheduleTransfer(&sys->windows[8]);
}

int ov14_021F5404(UnkStruct_ov14_boxapp *work, UnkStruct_ov14_mon *mon) {
    NNSG2dCharacterData *charData;
    void *data;
    u8 *pixels;
    MsgData *msgData;
    u16 i;
    u16 j;
    int winBase;
    UnkStruct_ov14_boxsys *sys = work->sys;

    if (sys->unk44E_0 == 0) {
        winBase = 9;
    } else {
        winBase = 13;
    }
    sys->unk44E_0 ^= 1;
    data = GfGfxLoader_GetCharData(NARC_a_0_1_9, 6, TRUE, &charData, HEAP_ID_10);
    pixels = charData->pRawData;
    msgData = NewMsgDataFromNarc(MSGDATA_LOAD_DIRECT, NARC_msgdata_msg, NARC_msg_msg_0750_bin, HEAP_ID_10);
    if (!mon->isEgg) {
        for (i = 0; i < 4; i++) {
            for (j = 0; j < 0xB; j++) {
                BlitBitmapRect(&work->sys->windows[winBase + i], pixels + 0x160, 0, 0, 8, 8, j * 8, 0, 8, 8, 0xFF);
                BlitBitmapRect(&work->sys->windows[winBase + i], pixels + 0x20, 0, 0, 8, 8, j * 8, 8, 8, 8, 0xFF);
            }
            ov14_021F4F84(work->sys, msgData, winBase + i, mon->msgIds[i], 0, 0, 0, MAKE_TEXT_COLOR(1, 2, 0), 0);
            CopyWindowPixelsToVram_TextMode(&work->sys->windows[winBase + i]);
        }
        work->sys->unk44E_4 = 1;
    } else {
        work->sys->unk44E_4 = 0;
    }
    DestroyMsgData(msgData);
    Heap_Free(data);
    return winBase;
}

#ifdef NONMATCHING
int ov14_021F5564(UnkStruct_ov14_boxapp *work, u16 itemId) {
    int winIdx;
    Window *windows;
    UnkStruct_ov14_boxsys *sys = work->sys;

    if (sys->unk44E_0 == 0) {
        winIdx = 0x14;
    } else {
        winIdx = 0x16;
    }
    windows = sys->windows;
    sys->unk44E_0 ^= 1;
    FillWindowPixelBuffer(&windows[winIdx], 13);
    FillWindowPixelBuffer(&windows[winIdx] + 1, 13);
    if (itemId != 0) {
        GetItemNameIntoString(work->sys->tmpString, itemId, HEAP_ID_10);
        ov14_021F4F24(&windows[winIdx], work->sys->tmpString, 0, 0, 0, MAKE_TEXT_COLOR(1, 2, 0), 0);
        CopyWindowPixelsToVram_TextMode(&windows[winIdx]);
        GetItemDescIntoString(work->sys->tmpString, itemId, HEAP_ID_10);
        ov14_021F4F24(&windows[winIdx] + 1, work->sys->tmpString, 0, 0, 0, MAKE_TEXT_COLOR(1, 2, 0), 0);
        CopyWindowPixelsToVram_TextMode(&windows[winIdx] + 1);
    }
    return winIdx;
}
#else
// clang-format off
asm int ov14_021F5564(UnkStruct_ov14_boxapp *work, u16 itemId) {
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #0x10
    str r1, [sp, #0xc]
    add r6, r0, #0
    ldr r0, [r6, #0x34]
    ldr r1, =0x0000044E
    ldrb r1, [r0, r1]
    lsl r1, r1, #0x1c
    lsr r1, r1, #0x1c
    bne _021F557C
    mov r7, #0x14
    b _021F557E
_021F557C:
    mov r7, #0x16
_021F557E:
    ldr r1, =0x0000044E
    add r5, r0, #0
    ldrb r2, [r0, r1]
    mov r1, #0xf
    add r5, #0x30
    add r3, r2, #0
    bic r3, r1
    lsl r1, r2, #0x1c
    lsr r2, r1, #0x1c
    mov r1, #1
    eor r1, r2
    lsl r1, r1, #0x18
    lsr r2, r1, #0x18
    mov r1, #0xf
    and r1, r2
    add r2, r3, #0
    orr r2, r1
    ldr r1, =0x0000044E
    lsl r4, r7, #4
    strb r2, [r0, r1]
    add r0, r5, r4
    mov r1, #0xd
    bl FillWindowPixelBuffer
    add r0, r5, r4
    add r0, #0x10
    mov r1, #0xd
    bl FillWindowPixelBuffer
    ldr r0, [sp, #0xc]
    cmp r0, #0
    beq _021F5612
    ldr r0, [r6, #0x34]
    ldr r1, [sp, #0xc]
    ldr r0, [r0, #0x28]
    mov r2, #0xa
    bl GetItemNameIntoString
    mov r2, #0
    ldr r0, =0x00010200
    str r2, [sp, #0]
    str r0, [sp, #4]
    str r2, [sp, #8]
    ldr r1, [r6, #0x34]
    add r0, r5, r4
    ldr r1, [r1, #0x28]
    add r3, r2, #0
    bl ov14_021F4F24
    add r0, r5, r4
    bl CopyWindowPixelsToVram_TextMode
    ldr r0, [r6, #0x34]
    ldr r1, [sp, #0xc]
    ldr r0, [r0, #0x28]
    mov r2, #0xa
    bl GetItemDescIntoString
    mov r2, #0
    ldr r0, =0x00010200
    str r2, [sp, #0]
    str r0, [sp, #4]
    str r2, [sp, #8]
    ldr r1, [r6, #0x34]
    add r0, r5, r4
    ldr r1, [r1, #0x28]
    add r0, #0x10
    add r3, r2, #0
    bl ov14_021F4F24
    add r0, r5, r4
    add r0, #0x10
    bl CopyWindowPixelsToVram_TextMode
_021F5612:
    add r0, r7, #0
    add sp, #0x10
    pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on
#endif

void ov14_021F5620(UnkStruct_ov14_boxapp *work) {
    MsgData *msgData = ov14_021F6628(work);

    FillWindowPixelBuffer(&work->sys->windows[3], 0);
    ov14_021F4F84(work->sys, msgData, 3, work->args->unk8 + 0x32, 0, 8, 0, MAKE_TEXT_COLOR(1, 2, 0), 0);
    DestroyMsgData(msgData);
    CopyWindowToVram(&work->sys->windows[3]);
}

void ov14_021F566C(UnkStruct_ov14_boxapp *work) {
    FillWindowPixelBuffer(&work->sys->windows[0x11], 0);
    FillWindowPixelBuffer(&work->sys->windows[0x12], 0);
    FillWindowPixelBuffer(&work->sys->windows[0x13], 0);
    ov14_021F4F84(work->sys, work->sys->msgData, 0x11, 0x57, 0, 0, 0, MAKE_TEXT_COLOR(1, 2, 0), 0);
    ov14_021F4F84(work->sys, work->sys->msgData, 0x12, 0x58, 0, 0, 0, MAKE_TEXT_COLOR(1, 2, 0), 0);
    ov14_021F4F84(work->sys, work->sys->msgData, 0x13, 0x59, 0, 0, 0, MAKE_TEXT_COLOR(1, 2, 0), 0);
    CopyWindowToVram(&work->sys->windows[0x11]);
    CopyWindowToVram(&work->sys->windows[0x12]);
    CopyWindowToVram(&work->sys->windows[0x13]);
}

void ov14_021F5718(UnkStruct_ov14_boxapp *work, void *src, u32 baseTile, u32 width, u32 height) {
    Window *window;
    String *str;

    window = Heap_AllocAtEnd(HEAP_ID_10, sizeof(Window));
    AddWindowParameterized(work->sys->bgConfig, window, 3, 0, 0, width, height, 0, baseTile);
    MI_CpuCopy32(src, window->pixelBuffer, width * height * 32);
    str = String_New(20, HEAP_ID_10);
    PCStorage_GetBoxName(work->storage, work->boxId1F, str);
    ov14_021F4F24(window, str, (width * 8) / 2, (height * 8) / 2 - 8, 0, MAKE_TEXT_COLOR(2, 1, 0), 2);
    String_Delete(str);
    CopyWindowPixelsToVram_TextMode(window);
    RemoveWindow(window);
    Heap_Free(window);
}

void ov14_021F57B8(UnkStruct_ov14_boxapp *work) {
    Window window;
    String *str;

    InitWindow(&window);
    AddTextWindowTopLeftCorner(work->sys->bgConfig, &window, 12, 2, 0, 0);
    str = String_New(20, HEAP_ID_10);
    PCStorage_GetBoxName(work->storage, work->boxId25, str);
    ov14_021F4F24(&window, str, 0x30, 0, 0, MAKE_TEXT_COLOR(1, 2, 0), 2);
    String_Delete(str);
    ov14_021F4EA0(work->sys, &window, 0);
    RemoveWindow(&window);
    InitWindow(&window);
    AddTextWindowTopLeftCorner(work->sys->bgConfig, &window, 5, 2, 0, 0);
    str = NewString_ReadMsgData(work->sys->msgData, 0x18);
    BufferIntegerAsString(work->sys->msgFmt, 0, PCStorage_CountMonsAndEggsInBox(work->storage, work->boxId25), 2, PRINTING_MODE_LEFT_ALIGN, TRUE);
    BufferIntegerAsString(work->sys->msgFmt, 1, 0x1E, 2, PRINTING_MODE_LEFT_ALIGN, TRUE);
    StringExpandPlaceholders(work->sys->msgFmt, work->sys->tmpString, str);
    ov14_021F4F24(&window, work->sys->tmpString, 0x14, 0, 0, MAKE_TEXT_COLOR(1, 2, 0), 2);
    String_Delete(str);
    ov14_021F4EA0(work->sys, &window, 1);
    RemoveWindow(&window);
}
