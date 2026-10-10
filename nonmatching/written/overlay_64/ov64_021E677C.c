#include "global.h"
#include "bg_window.h"
#include "font.h"
#include "gf_gfx_loader.h"
#include "hall_of_fame.h"
#include "heap.h"
#include "message_format.h"
#include "msgdata.h"
#include "pokemon.h"
#include "sprite.h"
#include "sprite_system.h"
#include "text.h"
#include "unk_02013FDC.h"

typedef struct UnkStruct_ov64_021E677C {
    /* 0x000 */ HallOfFame *hof;
    /* 0x004 */ u8 filler_004[4];
    /* 0x008 */ Window windows[16];
    /* 0x108 */ u8 filler_108[0x10];
    /* 0x118 */ MsgData *msgUi;
    /* 0x11C */ MsgData *msgSpecies;
    /* 0x120 */ MsgData *msgMoves;
    /* 0x124 */ MessageFormat *msgFmt;
    /* 0x128 */ String *str1;
    /* 0x12C */ String *str2;
    /* 0x130 */ u8 filler_130[8];
    /* 0x138 */ ManagedSprite *sprites[2];
    /* 0x140 */ u8 filler_140[0x44];
    /* 0x184 */ NARC *narc;
    /* 0x188 */ SHOW_HOFMON mon;
    /* 0x1A4 */ u8 filler_1A4[8];
    /* 0x1AC */ u32 count;
    /* 0x1B0 */ u8 filler_1B0[4];
    /* 0x1B4 */ int team;
    /* 0x1B8 */ u8 filler_1B8[0xC];
    /* 0x1C4 */ u16 page;
} UnkStruct_ov64_021E677C;

extern const UnkStruct_02014E30 ov64_021E6E98;
extern const u8 ov64_021E6EA8[];

void ov64_021E6754(UnkStruct_ov64_021E677C *work, u32 count, PokepicTemplate *tmpl, const u8 *table);
void ov64_021E5AC8(void *src, u32 dest, u32 size);

void ov64_021E677C(UnkStruct_ov64_021E677C *work, u32 idx) {
    UnkStruct_02014E30 rect;
    PokepicTemplate tmpl;
    s8 height;
    u32 which;
    int base;
    u8 gender;
    u8 shiny;
    u32 pid;
    u8 picHeight;
    void *buf;
    u32 loc;
    int i;
    u32 width;
    Window *win;

    rect.x = ov64_021E6E98.x;
    rect.y = ov64_021E6E98.y;
    rect.w = ov64_021E6E98.w;
    rect.h = ov64_021E6E98.h;

    if (idx >= work->count) {
        ov64_021E6754(work, work->count, &tmpl, ov64_021E6EA8);
        return;
    }
    ManagedSprite_SetDrawFlag(work->sprites[0], 0);
    ManagedSprite_SetDrawFlag(work->sprites[1], 0);

    if (work->page != 0) {
        which = 1;
        base = 8;
    } else {
        which = 0;
        base = 0;
    }

    Save_HOF_GetMonStatsByIndexPair(work->hof, work->team, idx, &work->mon);
    gender = GetGenderBySpeciesAndPersonality(work->mon.species, work->mon.personality);
    ((void (*)(NARC *, s8 *, u16))sub_020729D8)(work->narc, &height, work->mon.species);
    picHeight = GetMonPicHeightBySpeciesGenderForm(work->mon.species, gender, 2, work->mon.form, work->mon.personality);
    ManagedSprite_SetPositionXYWithSubscreenOffset(work->sprites[which], 0x40, (picHeight + 0x40) - height, 0x200000);

    if (CalcShininessByOtIdAndPersonality(work->mon.otid, work->mon.personality) != 0) {
        shiny = 1;
    } else {
        shiny = 0;
    }
    buf = Heap_AllocAtEnd(HEAP_ID_59, 0xC80);
    pid = work->mon.personality;
    GetMonSpriteCharAndPlttNarcIdsEx(&tmpl, work->mon.species, GetGenderBySpeciesAndPersonality(work->mon.species, pid), 2, shiny, work->mon.form, pid);
    sub_02014510(tmpl.narcID, tmpl.charDataID, HEAP_ID_59, &rect, buf, work->mon.personality, 0, 2, work->mon.species);
    loc = NNS_G2dGetImageLocation(Sprite_GetImageProxy(*(Sprite **)work->sprites[which]), 2);
    ov64_021E5AC8(buf, loc, 0xC80);
    Heap_Free(buf);
    loc = NNS_G2dGetImagePaletteLocation(Sprite_GetPaletteProxy(*(Sprite **)work->sprites[which]), 2);
    GfGfxLoader_GXLoadPal(tmpl.narcID, tmpl.palDataID, 5, loc, 0x20, HEAP_ID_59);
    ManagedSprite_SetDrawFlag(work->sprites[which], 1);

    win = work->windows;
    for (i = 0; i < 7; i++) {
        FillWindowPixelBuffer(&win[base + i], 0);
    }
    AddTextPrinterParameterizedWithColor(&win[base], 0, work->mon.nickname, 0, 0, 0xFF, 0xF0200, NULL);
    ReadMsgDataIntoString(work->msgSpecies, work->mon.species, work->str1);
    AddTextPrinterParameterizedWithColor(&win[base + 1], 0, work->str1, 0, 0, 0xFF, 0xF0200, NULL);
    if (work->mon.species != 0x1D && work->mon.species != 0x20) {
        if (gender == 0) {
            ReadMsgDataIntoString(work->msgUi, 3, work->str2);
            width = FontID_String_GetWidth(0, work->str1, 0);
            AddTextPrinterParameterizedWithColor(&win[base + 1], 0, work->str2, width + 8, 0, 0xFF, 0xF0200, NULL);
        } else if (gender == 1) {
            ReadMsgDataIntoString(work->msgUi, 4, work->str2);
            width = FontID_String_GetWidth(0, work->str1, 0);
            AddTextPrinterParameterizedWithColor(&win[base + 1], 0, work->str2, width + 8, 0, 0xFF, 0xF0200, NULL);
        }
    }
    ReadMsgDataIntoString(work->msgUi, 1, work->str1);
    BufferIntegerAsString(work->msgFmt, 0, work->mon.level, 3, 0, 1);
    StringExpandPlaceholders(work->msgFmt, work->str2, work->str1);
    AddTextPrinterParameterizedWithColor(&win[base + 1], 0, work->str2, 0, 0x10, 0xFF, 0xF0200, NULL);
    ReadMsgDataIntoString(work->msgUi, 2, work->str1);
    AddTextPrinterParameterizedWithColor(&win[base + 2], 0, work->str1, 0, 0, 0xFF, 0xF0200, NULL);
    width = FontID_String_GetWidth(0, work->str1, 0);
    AddTextPrinterParameterizedWithColor(&win[base + 2], 0, work->mon.otname, width, 0, 0xFF, 0xF0200, NULL);
    for (i = 0; i < 4; i++) {
        if (work->mon.moves[i] != 0) {
            ReadMsgDataIntoString(work->msgMoves, work->mon.moves[i], work->str1);
            width = FontID_String_GetWidth(0, work->str1, 0);
            AddTextPrinterParameterizedWithColor(&win[base + 3 + i], 0, work->str1, 0x38 - (width >> 1), 0, 0xFF, 0xF0200, NULL);
        }
    }
    for (i = 0; i < 7; i++) {
        CopyWindowPixelsToVram_TextMode(&win[base + i]);
        ScheduleWindowCopyToVram(&win[base + i]);
    }
    work->page = work->page ^ 1;
}
