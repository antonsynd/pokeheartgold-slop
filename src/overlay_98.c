// text.h declares AddTextPrinterParameterizedWithColor with a u8 FontID, but
// ov98_0221EC3C passes its 32-bit fontId through with no narrowing, so this TU
// was matched against the wider prototype below (split-header discipline).
#define AddTextPrinterParameterizedWithColor AddTextPrinterParameterizedWithColor_UpstreamDecl

#include "overlay_98.h"

#include <nitro/gx/gx_vramcnt.h>

#include "global.h"

#include "constants/gx.h"

#include "msgdata/msg.naix"

#include "bg_window.h"
#include "filesystem.h"
#include "filesystem_files_def.h"
#include "font.h"
#include "gf_gfx_loader.h"
#include "gf_gfx_planes.h"
#include "heap.h"
#include "message_format.h"
#include "msgdata.h"
#include "palette.h"
#include "pm_string.h"
#include "pokemon.h"
#include "pokemon_icon_idx.h"
#include "screen_fade.h"
#include "sprite.h"
#include "sprite_system.h"
#include "string_util.h"
#include "system.h"
#include "text.h"
#include "touchscreen.h"
#include "unk_02013FDC.h"

#undef AddTextPrinterParameterizedWithColor
u8 AddTextPrinterParameterizedWithColor(Window *window, u32 fontId, String *string, u32 x, u32 y, u32 textSpeed, u32 color, PrinterCallback_t callback);

// NitroSDK MATH; declared locally like the other consumers (unk_02096C88.c).
extern int MATH_CountPopulation(u32 x);

#define OV98_MON_PIC_BUFFER_SIZE 0xC80
#define OV98_NUM_STATS           10
#define OV98_NUM_SPECIES         493

struct Ov98SpriteSys {
    enum HeapID heapId;           // 0x00
    SpriteSystem *spriteSystem;   // 0x04
    SpriteManager *spriteManager; // 0x08
    PaletteData *plttData;        // 0x0C
    NARC *narc;                   // 0x10
    s8 iconPlttSlot;              // 0x14
}; // size: 0x18

struct Ov98TextSys {
    enum HeapID heapId;     // 0x00
    Window *windows;        // 0x04
    MsgData *msgData;       // 0x08
    MsgData *commonMsgData; // 0x0C
    MessageFormat *msgFmt;  // 0x10
    String *string;         // 0x14
    int windowCount;        // 0x18
}; // size: 0x1C

static void ov98_0221E9FC(ManagedSprite *sprite, void *src, u32 size);
static void ov98_0221EA4C(ManagedSprite *sprite, NarcId narcId, s32 memberNo, BOOL isMain, BOOL grayscale, enum HeapID heapId);
static void *ov98_0221EAA8(Ov98SpriteSys *spriteSys, s32 memberNo, NNSG2dCharacterData **charData);
static void ov98_0221EC3C(Ov98TextSys *textSys, u32 windowIdx, u32 msgId, BOOL center, u8 x, u8 y, u32 fontId, u8 fill);
static void ov98_0221EF14(Ov98TextSys *textSys, u32 windowIdx);
static void ov98_0221F174(void);

// All of this overlay's .rodata as ONE const aggregate in retail address order
// (base 0x0221F194, span 0xDC). The retail layout is not size-sorted (a 4-byte
// hitbox sits after a 32-byte template), which separate const objects cannot
// reproduce under MWCC -- see the rodata-consolidate-one-struct-flip pattern.
typedef struct Ov98Rodata {
    u32 vramTypes[2];                      // _0221F194: NNS_G2D_VRAM_TYPE by screen index
    UnkStruct_02014E30 monPicRect;         // ov98_0221F19C
    OamCharTransferParam oamTransfer;      // ov98_0221F1AC
    OamManagerParam oamManager;            // ov98_0221F1C0
    TouchscreenHitbox hitbox;              // ov98_0221F1E0
    u32 powersOfTen[5];                    // ov98_0221F1E4
    u16 statThresholds[OV98_NUM_STATS][2]; // ov98_0221F1F8
    s32 rankThresholds[OV98_NUM_STATS];    // ov98_0221F220
    GraphicsBanks banks;                   // ov98_0221F248
} Ov98Rodata;

static const Ov98Rodata sRodata = {
    // vramTypes (_0221F194)
    { NNS_G2D_VRAM_TYPE_2DSUB, NNS_G2D_VRAM_TYPE_2DMAIN },
    // monPicRect (ov98_0221F19C)
    { 0, 0, 10, 10 },
    // oamTransfer (ov98_0221F1AC)
    {
     0,
     0x20000,
     0x4000,
     GX_OBJVRAMMODE_CHAR_1D_64K,
     GX_OBJVRAMMODE_CHAR_1D_64K,
     },
    // oamManager (ov98_0221F1C0)
    {
     0,
     128,
     0,
     32,
     0,
     128,
     0,
     32,
     },
    // hitbox (ov98_0221F1E0)
    { 0xA0, 0xC0, 0xC0, 0x00 },
    // powersOfTen (ov98_0221F1E4)
    { 1, 10, 100, 1000, 10000 },
    // statThresholds (ov98_0221F1F8)
    {
     { 3000, 2400 },
     { 35, 50 },
     { 40, 60 },
     { 80, 130 },
     { 40, 70 },
     { 350, 500 },
     { 0x3000, 0x4000 },
     { 70, 100 },
     { 30, 55 },
     { 3, 9 },
     },
    // rankThresholds (ov98_0221F220)
    { 200, 150, 100, 75, 50, 25, 10, 5, 2, 1 },
    // banks (ov98_0221F248)
    {
     GX_VRAM_BG_128_A,
     GX_VRAM_BGEXTPLTT_NONE,
     GX_VRAM_SUB_BG_128_C,
     GX_VRAM_SUB_BGEXTPLTT_NONE,
     GX_VRAM_OBJ_128_B,
     GX_VRAM_OBJEXTPLTT_NONE,
     GX_VRAM_SUB_OBJ_16_I,
     GX_VRAM_SUB_OBJEXTPLTT_NONE,
     GX_VRAM_TEX_NONE,
     GX_VRAM_TEXPLTT_NONE,
     },
};

SpriteSystem *ov98_0221E5C0(Ov98SpriteSys *spriteSys) {
    GF_ASSERT(spriteSys != NULL);
    return spriteSys->spriteSystem;
}

SpriteManager *ov98_0221E5D0(Ov98SpriteSys *spriteSys) {
    GF_ASSERT(spriteSys != NULL);
    return spriteSys->spriteManager;
}

Ov98SpriteSys *ov98_0221E5E0(enum HeapID heapId, SpriteResourceCountsListUnion *counts, int numSprites) {
    Ov98SpriteSys *spriteSys;
    OamManagerParam oamManager;
    OamCharTransferParam oamTransfer;

    spriteSys = Heap_Alloc(heapId, sizeof(Ov98SpriteSys));
    spriteSys->heapId = heapId;
    spriteSys->spriteSystem = SpriteSystem_Alloc(heapId);
    spriteSys->spriteManager = SpriteManager_New(spriteSys->spriteSystem);
    spriteSys->narc = NARC_New(NARC_poketool_icongra_poke_icon, spriteSys->heapId);
    spriteSys->iconPlttSlot = -1;

    oamManager = sRodata.oamManager;
    oamTransfer = sRodata.oamTransfer;
    oamTransfer.maxTasks = numSprites;
    SpriteSystem_Init(spriteSys->spriteSystem, &oamManager, &oamTransfer, 0x20);
    SpriteSystem_InitSprites(spriteSys->spriteSystem, spriteSys->spriteManager, numSprites);
    SpriteSystem_InitManagerWithCapacities(spriteSys->spriteSystem, spriteSys->spriteManager, counts);
    spriteSys->plttData = PaletteData_Init(spriteSys->heapId);

    GfGfx_EngineATogglePlanes(GX_PLANEMASK_OBJ, GF_PLANE_TOGGLE_ON);
    GfGfx_EngineBTogglePlanes(GX_PLANEMASK_OBJ, GF_PLANE_TOGGLE_ON);
    return spriteSys;
}

void ov98_0221E684(Ov98SpriteSys *spriteSys, ManagedSprite **sprites, u32 count) {
    u32 i;

    NARC_Delete(spriteSys->narc);
    PaletteData_Free(spriteSys->plttData);
    for (i = 0; i < count; i++) {
        if (sprites[i] != NULL) {
            Sprite_DeleteAndFreeResources(sprites[i]);
            sprites[i] = NULL;
        }
    }
    SpriteSystem_FreeResourcesAndManager(spriteSys->spriteSystem, spriteSys->spriteManager);
    SpriteSystem_Free(spriteSys->spriteSystem);
    Heap_Free(spriteSys);
}

void ov98_0221E6CC(Ov98SpriteSys *spriteSys) {
    GF_ASSERT(spriteSys != NULL);
    SpriteSystem_DrawSprites(spriteSys->spriteManager);
}

ManagedSprite *ov98_0221E6E0(Ov98SpriteSys *spriteSys, const ManagedSpriteTemplate *template) {
    return SpriteSystem_NewSprite(spriteSys->spriteSystem, spriteSys->spriteManager, template);
}

void ov98_0221E6F0(Ov98SpriteSys *spriteSys, ManagedSprite **sprites, const int *resIds, u32 count, int start, s16 x, s16 y, BOOL isMain) {
    ManagedSpriteTemplate template = { 0 };
    ManagedSprite *sprite;
    u32 i;
    int xPos;
    ManagedSprite **out;

    GF_ASSERT(count <= 10);
    xPos = x;
    out = &sprites[start];
    for (i = 0; i < 10; i++) {
        template.animation = (i < count) ? 1 : 0;
        template.resIdList[GF_GFX_RES_TYPE_CHAR] = resIds[GF_GFX_RES_TYPE_CHAR];
        template.resIdList[GF_GFX_RES_TYPE_PLTT] = resIds[GF_GFX_RES_TYPE_PLTT];
        template.resIdList[GF_GFX_RES_TYPE_CELL] = resIds[GF_GFX_RES_TYPE_CELL];
        template.resIdList[GF_GFX_RES_TYPE_ANIM] = resIds[GF_GFX_RES_TYPE_ANIM];
        template.vram = isMain ? NNS_G2D_VRAM_TYPE_2DMAIN : NNS_G2D_VRAM_TYPE_2DSUB;
        template.x = xPos;
        template.y = y;
        sprite = ov98_0221E6E0(spriteSys, &template);
        *out++ = sprite;
        ManagedSprite_SetAnimateFlag(sprite, TRUE);
        xPos += 0x10;
    }
}

void ov98_0221E784(SpriteSystem *spriteSystem, SpriteManager *spriteManager, const int *resIds, int vram) {
    SpriteSystem_LoadCharResObj(spriteSystem, spriteManager, NARC_a_0_0_8, 0x4C, FALSE, vram, resIds[GF_GFX_RES_TYPE_CHAR]);
    SpriteSystem_LoadPlttResObj(spriteSystem, spriteManager, NARC_a_0_0_8, 0x4B, FALSE, 1, vram, resIds[GF_GFX_RES_TYPE_PLTT]);
    SpriteSystem_LoadCellResObj(spriteSystem, spriteManager, NARC_a_0_0_8, 0x4D, FALSE, resIds[GF_GFX_RES_TYPE_CELL]);
    SpriteSystem_LoadAnimResObj(spriteSystem, spriteManager, NARC_a_0_0_8, 0x4E, FALSE, resIds[GF_GFX_RES_TYPE_ANIM]);
}

void ov98_0221E7E8(ManagedSprite *sprite, const Ov98MonInfo *mon, BOOL isMain, BOOL grayscale, enum HeapID heapId) {
    PokepicTemplate pokepic;
    UnkStruct_02014E30 rect;
    void *charBuf;

    if (mon->species == SPECIES_NONE) {
        ManagedSprite_SetDrawFlag(sprite, FALSE);
        return;
    }

    GetMonSpriteCharAndPlttNarcIdsEx(&pokepic, mon->species, mon->gender, MON_PIC_FACING_FRONT, mon->shiny, mon->form, mon->personality);
    rect = sRodata.monPicRect;
    charBuf = Heap_AllocAtEnd(heapId, OV98_MON_PIC_BUFFER_SIZE);
    sub_02014510((NarcId)pokepic.narcID, pokepic.charDataID, heapId, &rect, charBuf, mon->personality, FALSE, MON_PIC_FACING_FRONT, mon->species);
    ov98_0221E9FC(sprite, charBuf, OV98_MON_PIC_BUFFER_SIZE);
    ov98_0221EA4C(sprite, (NarcId)pokepic.narcID, pokepic.palDataID, isMain, grayscale, heapId);
    ManagedSprite_SetDrawFlag(sprite, TRUE);
    Heap_Free(charBuf);
}

void ov98_0221E8A8(Ov98SpriteSys *spriteSys, const int *resIds, int count, int screen, BOOL flag) {
    SpriteSystem *spriteSystem = spriteSys->spriteSystem;
    SpriteManager *spriteManager = spriteSys->spriteManager;
    int fileId;
    u32 cellFileId;
    u32 animFileId;
    int i;

    if (flag) {
        fileId = 0x1C;
    } else {
        fileId = 0x1D;
    }
    cellFileId = sub_0207449C();
    animFileId = sub_020744A8();
    for (i = 0; i < count; i++) {
        SpriteSystem_LoadCharResObj(spriteSystem, spriteManager, NARC_a_1_7_7, fileId, TRUE, sRodata.vramTypes[screen], resIds[GF_GFX_RES_TYPE_CHAR] + i);
    }
    SpriteSystem_LoadCellResObj(spriteSystem, spriteManager, NARC_poketool_icongra_poke_icon, cellFileId, FALSE, resIds[GF_GFX_RES_TYPE_CELL]);
    SpriteSystem_LoadAnimResObj(spriteSystem, spriteManager, NARC_poketool_icongra_poke_icon, animFileId, FALSE, resIds[GF_GFX_RES_TYPE_ANIM]);
    if (spriteSys->iconPlttSlot == -1) {
        spriteSys->iconPlttSlot = SpriteSystem_LoadPlttResObj(spriteSystem, spriteManager, NARC_poketool_icongra_poke_icon, sub_02074490(), FALSE, 3, sRodata.vramTypes[screen], resIds[GF_GFX_RES_TYPE_PLTT]);
    }
}

void ov98_0221E970(Ov98SpriteSys *spriteSys, ManagedSprite *sprite, const Ov98MonInfo *mon, BOOL isMain, BOOL animate) {
    NNSG2dCharacterData *charData;
    void *buf;
    u32 form;
    u32 species;
    u32 size;
    u8 pal;
    size = 0x200;
    if (animate) {
        size <<= 1;
    }
    species = mon->species;
    form = mon->form;
    buf = ov98_0221EAA8(spriteSys, GetMonIconNaixEx(species, FALSE, form), &charData);
    ov98_0221E9FC(sprite, charData->pRawData, size);
    Heap_Free(buf);
    ManagedSprite_SetDrawFlag(sprite, FALSE);
    pal = GetMonIconPaletteEx(species, form, FALSE);
    ManagedSprite_SetPaletteOverride(sprite, pal + spriteSys->iconPlttSlot);
    if (animate) {
        ManagedSprite_SetAnim(sprite, 1);
        ManagedSprite_SetAnimSpeed(sprite, FX32_ONE);
        ManagedSprite_SetAnimateFlag(sprite, TRUE);
    }
}

static void ov98_0221E9FC(ManagedSprite *sprite, void *src, u32 size) {
    NNS_G2D_VRAM_TYPE vramType;
    u32 location;

    vramType = Sprite_GetVramType(sprite->sprite);
    location = NNS_G2dGetImageLocation(Sprite_GetImageProxy(sprite->sprite), vramType);
    DC_FlushRange(src, size);
    switch (vramType) {
    case NNS_G2D_VRAM_TYPE_2DMAIN:
        GX_LoadOBJ(src, location, size);
        break;
    case NNS_G2D_VRAM_TYPE_2DSUB:
        GXS_LoadOBJ(src, location, size);
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }
}

static void ov98_0221EA4C(ManagedSprite *sprite, NarcId narcId, s32 memberNo, BOOL isMain, BOOL grayscale, enum HeapID heapId) {
    NNS_G2D_VRAM_TYPE vramType;
    enum GFPalLoadLocation location;
    u32 palLocation;

    if (isMain) {
        vramType = NNS_G2D_VRAM_TYPE_2DMAIN;
        location = GF_PAL_LOCATION_MAIN_OBJ;
    } else {
        vramType = NNS_G2D_VRAM_TYPE_2DSUB;
        location = GF_PAL_LOCATION_SUB_OBJ;
    }
    palLocation = NNS_G2dGetImagePaletteLocation(Sprite_GetPaletteProxy(sprite->sprite), vramType);
    GfGfxLoader_GXLoadPal(narcId, memberNo, location, (enum GFPalSlotOffset)palLocation, 0x20, heapId);
    if (grayscale) {
        u16 *palette;
        if (isMain) {
            palette = (u16 *)(HW_OBJ_PLTT + palLocation);
        } else {
            palette = (u16 *)(HW_DB_OBJ_PLTT + palLocation);
        }
        TintPalette_GrayScale(palette, 0x20);
    }
}

static void *ov98_0221EAA8(Ov98SpriteSys *spriteSys, s32 memberNo, NNSG2dCharacterData **charData) {
    return GfGfxLoader_GetCharDataFromOpenNarc(spriteSys->narc, memberNo, FALSE, charData, spriteSys->heapId);
}

Ov98TextSys *ov98_0221EABC(enum HeapID heapId, BgConfig *bgConfig, int windowCount, const WindowTemplate *templates, s32 msgBank) {
    Ov98TextSys *textSys;
    u32 windowsSize;
    int i;

    FontID_Alloc(4, heapId);
    textSys = Heap_Alloc(heapId, sizeof(Ov98TextSys));
    MI_CpuFill8(textSys, 0, sizeof(Ov98TextSys));
    windowsSize = windowCount * sizeof(Window);
    textSys->windows = Heap_Alloc(heapId, windowsSize);
    MI_CpuFill8(textSys->windows, 0, windowsSize);
    LoadFontPal0(GF_PAL_LOCATION_MAIN_BG, GF_PAL_SLOT_12_OFFSET, heapId);
    LoadFontPal0(GF_PAL_LOCATION_SUB_BG, GF_PAL_SLOT_12_OFFSET, heapId);
    for (i = 0; i < windowCount; i++) {
        AddWindow(bgConfig, &textSys->windows[i], &templates[i]);
        FillWindowPixelBuffer(&textSys->windows[i], 0);
        ClearWindowTilemap(&textSys->windows[i]);
    }
    textSys->commonMsgData = NewMsgDataFromNarc(MSGDATA_LOAD_LAZY, NARC_msgdata_msg, NARC_msg_msg_0237_bin, heapId);
    textSys->msgData = NewMsgDataFromNarc(MSGDATA_LOAD_LAZY, NARC_msgdata_msg, msgBank, heapId);
    textSys->msgFmt = MessageFormat_New(heapId);
    textSys->string = String_New(0x400, heapId);
    textSys->heapId = heapId;
    textSys->windowCount = windowCount;
    return textSys;
}

void ov98_0221EB84(Ov98TextSys *textSys, int windowCount) {
    int i;

    FontID_Release(4);
    String_Delete(textSys->string);
    MessageFormat_Delete(textSys->msgFmt);
    DestroyMsgData(textSys->commonMsgData);
    DestroyMsgData(textSys->msgData);
    for (i = 0; i < windowCount; i++) {
        ClearWindowTilemapAndCopyToVram(&textSys->windows[i]);
        RemoveWindow(&textSys->windows[i]);
    }
    Heap_Free(textSys->windows);
    Heap_Free(textSys);
}

void ov98_0221EBD8(Ov98TextSys *textSys, u32 windowIdx, u32 msgId, BOOL center) {
    ov98_0221EBEC(textSys, windowIdx, msgId, center, 0, 0);
}

void ov98_0221EBEC(Ov98TextSys *textSys, u32 windowIdx, u32 msgId, BOOL center, u8 y, u32 fontId) {
    ov98_0221EC3C(textSys, windowIdx, msgId, center, 0, y, fontId, 0);
}

void ov98_0221EC08(Ov98TextSys *textSys, u32 windowIdx, u32 msgId, u8 x, u8 y) {
    ov98_0221EC3C(textSys, windowIdx, msgId, FALSE, x, y, 0, 0);
}

void ov98_0221EC24(Ov98TextSys *textSys, u32 windowIdx, u32 msgId, u8 fill) {
    ov98_0221EC3C(textSys, windowIdx, msgId, TRUE, 0, 0, 0, fill);
}

static void ov98_0221EC3C(Ov98TextSys *textSys, u32 windowIdx, u32 msgId, BOOL center, u8 x, u8 y, u32 fontId, u8 fill) {
    u8 xOffset = 0;
    String *string;

    GF_ASSERT(windowIdx < textSys->windowCount);
    string = ReadMsgData_ExpandPlaceholders(textSys->msgFmt, textSys->msgData, msgId, textSys->heapId);
    if (center) {
        xOffset = GetWindowWidth(&textSys->windows[windowIdx]) * 8;
        xOffset -= FontID_String_GetWidthMultiline(fontId, string, 0);
        xOffset /= 2;
    }
    FillWindowPixelBuffer(&textSys->windows[windowIdx], fill);
    AddTextPrinterParameterizedWithColor(&textSys->windows[windowIdx], fontId, string, xOffset + x, y, TEXT_SPEED_NOTRANSFER, MAKE_TEXT_COLOR(1, 2, 0), NULL);
    ScheduleWindowCopyToVram(&textSys->windows[windowIdx]);
    String_Delete(string);
}

void ov98_0221ECD0(Ov98TextSys *textSys, u32 windowIdx, u32 msgId, s32 value, u32 numDigits, u32 bufIdx) {
    String *string;

    BufferIntegerAsString(textSys->msgFmt, bufIdx, value, numDigits, PRINTING_MODE_RIGHT_ALIGN, TRUE);
    string = NewString_ReadMsgData(textSys->msgData, msgId);
    StringExpandPlaceholders(textSys->msgFmt, textSys->string, string);
    ov98_0221EF14(textSys, windowIdx);
    AddTextPrinterParameterizedWithColor(&textSys->windows[windowIdx], 0, textSys->string, 0, 0, TEXT_SPEED_NOTRANSFER, MAKE_TEXT_COLOR(1, 2, 0), NULL);
    ScheduleWindowCopyToVram(&textSys->windows[windowIdx]);
    String_Delete(string);
}

void ov98_0221ED3C(Ov98TextSys *textSys, u32 windowIdx, u32 msgId) {
    ov98_0221ED48(textSys, windowIdx, msgId, 0, 0);
}

void ov98_0221ED48(Ov98TextSys *textSys, u32 windowIdx, u32 msgId, u32 x, u8 y) {
    String *string;

    string = NewString_ReadMsgData(textSys->msgData, msgId);
    StringExpandPlaceholders(textSys->msgFmt, textSys->string, string);
    ov98_0221EF14(textSys, windowIdx);
    AddTextPrinterParameterizedWithColor(&textSys->windows[windowIdx], 0, textSys->string, x, y, TEXT_SPEED_NOTRANSFER, MAKE_TEXT_COLOR(1, 2, 0), NULL);
    ScheduleWindowCopyToVram(&textSys->windows[windowIdx]);
    String_Delete(string);
}

void ov98_0221EDA4(Ov98TextSys *textSys, s32 value, u32 numDigits, u32 bufIdx) {
    BufferIntegerAsString(textSys->msgFmt, bufIdx, value, numDigits, PRINTING_MODE_RIGHT_ALIGN, TRUE);
}

void ov98_0221EDC4(Ov98TextSys *textSys, u32 windowIdx, u32 msgId, u32 bufIdx, PlayerProfile *profile) {
    String *string;

    BufferPlayersName(textSys->msgFmt, bufIdx, profile);
    string = NewString_ReadMsgData(textSys->msgData, msgId);
    StringExpandPlaceholders(textSys->msgFmt, textSys->string, string);
    ov98_0221EF14(textSys, windowIdx);
    AddTextPrinterParameterizedWithColor(&textSys->windows[windowIdx], 0, textSys->string, 0, 0, TEXT_SPEED_NOTRANSFER, MAKE_TEXT_COLOR(1, 2, 0), NULL);
    ScheduleWindowCopyToVram(&textSys->windows[windowIdx]);
    String_Delete(string);
}

void ov98_0221EE28(Ov98TextSys *textSys, u32 windowIdx, u32 msgId) {
    MsgData *msgData = textSys->commonMsgData;

    GF_ASSERT(msgId <= OV98_NUM_SPECIES);
    ReadMsgDataIntoString(msgData, msgId, textSys->string);
    FillWindowPixelBuffer(&textSys->windows[windowIdx], 0);
    AddTextPrinterParameterizedWithColor(&textSys->windows[windowIdx], 0, textSys->string, 0, 0, TEXT_SPEED_NOTRANSFER, MAKE_TEXT_COLOR(1, 2, 0), NULL);
    ScheduleWindowCopyToVram(&textSys->windows[windowIdx]);
}

void ov98_0221EE84(Ov98TextSys *textSys, u32 windowIdx) {
    ov98_0221EF14(textSys, windowIdx);
    ScheduleWindowCopyToVram(&textSys->windows[windowIdx]);
}

void ov98_0221EE9C(Ov98TextSys *textSys, u32 windowIdx, String *string, u32 x, u8 y) {
    ov98_0221EF14(textSys, windowIdx);
    AddTextPrinterParameterizedWithColor(&textSys->windows[windowIdx], 0, string, x, y, TEXT_SPEED_NOTRANSFER, MAKE_TEXT_COLOR(1, 2, 0), NULL);
    ScheduleWindowCopyToVram(&textSys->windows[windowIdx]);
}

void ov98_0221EEDC(Ov98TextSys *textSys, u32 windowIdx) {
    ClearWindowTilemapAndScheduleTransfer(&textSys->windows[windowIdx]);
}

void ov98_0221EEEC(Ov98TextSys *textSys, u32 windowIdx, u8 y) {
    SetWindowY(&textSys->windows[windowIdx], y);
}

MessageFormat *ov98_0221EEFC(Ov98TextSys *textSys) {
    GF_ASSERT(textSys != NULL);
    GF_ASSERT(textSys->msgFmt != NULL);
    return textSys->msgFmt;
}

static void ov98_0221EF14(Ov98TextSys *textSys, u32 windowIdx) {
    FillWindowPixelBuffer(&textSys->windows[windowIdx], 0);
}

// The 4-byte hitbox copy is MWCC's byte-copy path, which folds the source
// address as (sRodata + 0x40) + 12 rather than the exact member address the
// retail standalone symbol produced; no C spelling reaches the exact literal.
#ifdef NONMATCHING
BOOL ov98_0221EF24(void) {
    TouchscreenHitbox hitbox = sRodata.hitbox;
    BOOL result = FALSE;

    if (TouchscreenHitbox_TouchNewIsIn(&hitbox) || (gSystem.newKeys & PAD_BUTTON_B)) {
        result = TRUE;
    }
    return result;
}
#else
asm BOOL ov98_0221EF24(void) {
    // clang-format off
    push {r3, r4, lr}
    sub sp, #4
    ldr r2, =sRodata + 0x4C
    add r1, sp, #0
    ldrb r3, [r2, #0]
    add r0, sp, #0
    mov r4, #0
    strb r3, [r1, #0]
    ldrb r3, [r2, #1]
    strb r3, [r1, #1]
    ldrb r3, [r2, #2]
    ldrb r2, [r2, #3]
    strb r3, [r1, #2]
    strb r2, [r1, #3]
    bl TouchscreenHitbox_TouchNewIsIn
    cmp r0, #0
    bne _0221EF52
    ldr r0, =gSystem
    ldr r1, [r0, #0x48]
    mov r0, #2
    tst r0, r1
    beq _0221EF54
_0221EF52:
    mov r4, #1
_0221EF54:
    add r0, r4, #0
    add sp, #4
    pop {r3, r4, pc}
    // clang-format on
}
#endif

int ov98_0221EF64(u32 value) {
    if (value >= 450) {
        return 2;
    }
    if (value >= 420) {
        return 1;
    }
    return 0;
}

u8 ov98_0221EF80(int value) {
    const s32 *thresholds = sRodata.rankThresholds;
    u8 i;

    for (i = 0; i < OV98_NUM_STATS; i++) {
        if (thresholds[i] <= value) {
            break;
        }
    }
    return OV98_NUM_STATS - i;
}

u16 ov98_0221EFA4(u32 stat, u32 col) {
    return sRodata.statThresholds[stat][col];
}

BOOL ov98_0221EFB4(u32 stat, u32 col, u32 value) {
    u16 threshold = ov98_0221EFA4(stat, col);

    if (value == 0xFFFF) {
        return FALSE;
    }
    if (stat == 0) {
        if (value < threshold) {
            return TRUE;
        }
        return FALSE;
    } else {
        if (value > threshold) {
            return TRUE;
        }
        return FALSE;
    }
}

BOOL ov98_0221EFE8(u32 stat, u32 col, u32 value) {
    u16 threshold = ov98_0221EFA4(stat, col);

    if (value == 0xFFFF) {
        return FALSE;
    }
    if (stat == 0) {
        if (value <= threshold) {
            return TRUE;
        }
        return FALSE;
    } else {
        if (value >= threshold) {
            return TRUE;
        }
        return FALSE;
    }
}

u16 ov98_0221F01C(const Ov98Record *record, u32 idx) {
    return record->entries[idx].value;
}

u16 ov98_0221F024(const u8 *dexFlags) {
    int i;
    u16 count = 0;

    GF_ASSERT(dexFlags != NULL);
    for (i = 0; i < OV98_NUM_SPECIES; i++) {
        if (MATH_CountPopulation(dexFlags[i]) == 5) {
            count++;
        }
    }
    return count;
}

u8 ov98_0221F058(const Ov98Record *records) {
    u8 i;
    u8 count = 0;

    for (i = 0; i < OV98_NUM_STATS; i++) {
        u16 value = ov98_0221F01C(&records[i], 0);
        if (ov98_0221EFE8(i, 1, value)) {
            count++;
        }
    }
    return count;
}

void ov98_0221F090(void) {
    sub_0200FBF4(PM_LCD_TOP, RGB_BLACK);
    sub_0200FBF4(PM_LCD_BOTTOM, RGB_BLACK);
    Main_SetVBlankIntrCB(NULL, NULL);
    HBlankInterruptDisable();
    GfGfx_DisableEngineAPlanes();
    GfGfx_DisableEngineBPlanes();
    GX_SetVisiblePlane(GX_PLANEMASK_NONE);
    GXS_SetVisiblePlane(GX_PLANEMASK_NONE);
    GX_SetDispSelect(GX_DISP_SELECT_SUB_MAIN);
    ov98_0221F174();
}

void ov98_0221F0EC(void) {
    Main_SetVBlankIntrCB(NULL, NULL);
    HBlankInterruptDisable();
    GfGfx_DisableEngineAPlanes();
    GfGfx_DisableEngineBPlanes();
    GX_SetVisiblePlane(GX_PLANEMASK_NONE);
    GXS_SetVisiblePlane(GX_PLANEMASK_NONE);
}

u32 ov98_0221F120(u32 value, u32 scaleIdx) {
    u32 prevIdx;

    GF_ASSERT(scaleIdx != 0 && scaleIdx < 5);
    prevIdx = scaleIdx - 1;
    return (value % sRodata.powersOfTen[scaleIdx]) / sRodata.powersOfTen[prevIdx];
}

u8 ov98_0221F150(s32 value) {
    u8 count = 0;

    if (value == 0) {
        return 1;
    }
    while (TRUE) {
        if (value == 0) {
            break;
        }
        value /= 10;
        count++;
    }
    return count;
}

static void ov98_0221F174(void) {
    GraphicsBanks banks = sRodata.banks;
    GfGfx_SetBanks(&banks);
}
