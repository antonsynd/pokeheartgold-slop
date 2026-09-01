// text.h declares AddTextPrinterParameterizedWithColor with a u8 FontID, but
// ov18_021F95FC passes its 32-bit fontId through with no narrowing, so this TU
// was matched against the wider prototype below (split-header discipline).
#define AddTextPrinterParameterizedWithColor AddTextPrinterParameterizedWithColor_UpstreamDecl

#include "overlay_18_021F8AB8.h"

#include <nitro/gx/gx.h>

#include "global.h"

#include "constants/gx.h"
#include "constants/pokemon.h"

#include "graphic/zukan_gra.naix"
#include "msgdata/msg.naix"

#include "bg_window.h"
#include "dex_mon_measures.h"
#include "filesystem.h"
#include "filesystem_files_def.h"
#include "font.h"
#include "gf_gfx_loader.h"
#include "gf_gfx_planes.h"
#include "heap.h"
#include "message_format.h"
#include "msgdata.h"
#include "obj_char_transfer.h"
#include "palette.h"
#include "pm_string.h"
#include "pokedex_util.h"
#include "pokemon.h"
#include "pokepic.h"
#include "sprite.h"
#include "sprite_transfer.h"
#include "string_util.h"
#include "text.h"
#include "unk_02009D48.h"
#include "unk_0200A090.h"

#undef AddTextPrinterParameterizedWithColor
u8 AddTextPrinterParameterizedWithColor(Window *window, u32 fontId, String *string, u32 x, u32 y, u32 textSpeed, u32 color, PrinterCallback_t callback);

// src/poketool/pokefoot.c has no header; it declares these locally too.
NarcId ov18_021E5900(void);
int ov18_021E5904(int species);
int ov18_021E5908(void);

// application/pokedex/pokedex_internal.h declares these with a u16 species,
// but this TU passes the u32 species field through with no narrowing, so it
// was matched against the wider prototypes below.
String *ov18_021E590C(int species, int language, enum HeapID heapId);
String *ov18_021E595C(int species, int language, enum HeapID heapId);
String *ov18_021E59A8(int species, int language, int a2, enum HeapID heapId);

typedef struct PokedexEntryPopupRodata {
    ObjCharTransferTemplate objCharTransferTemplate; // 0x021FBD50
    BgTemplate bgTemplate2;                          // 0x021FBD60
    BgTemplate bgTemplate1;                          // 0x021FBD7C
    BgTemplate bgTemplate3;                          // 0x021FBD98
    WindowTemplate windowTemplates[9];               // 0x021FBDB4
    u8 typePalIndex[20];                             // 0x021FBDFC
    u32 typeIconCharId[18];                          // 0x021FBE10
} PokedexEntryPopupRodata;

static void ov18_021F8F28(PokedexEntryPopup *popup);
static void ov18_021F8F58(void);
static void ov18_021F8F60(PokedexEntryPopup *popup);
static void ov18_021F8F84(PokedexEntryPopup *popup);
static void ov18_021F8FF8(PokedexEntryPopup *popup);
static void ov18_021F9054(PokedexEntryPopup *popup);
static void ov18_021F9068(PokedexEntryPopup *popup);
static void ov18_021F9108(PokedexEntryPopup *popup);
static void ov18_021F9150(PokedexEntryPopup *popup);
static void ov18_021F91DC(PokedexEntryPopup *popup);
static void ov18_021F922C(SpriteResource **res, GF_2DGfxResMan **resMan, enum HeapID heapId, NARC *narc, int charFileId, int plttFileId, int cellFileId, int animFileId, int plttNum, int charResId, int plttResId, int cellResId, int animResId);
static SpriteResource *ov18_021F92AC(GF_2DGfxResMan *resMan, enum HeapID heapId, NARC *narc, int fileId, int plttNum, int resId);
static void ov18_021F92DC(SpriteResource **res, GF_2DGfxResMan **resMan);
static void ov18_021F9310(SpriteResource **res, GF_2DGfxResMan **resMan, SpriteResourcesHeader *header, int priority);
static void ov18_021F9370(PokedexEntryPopup *popup);
static void ov18_021F94A0(PokedexEntryPopup *popup);
static void ov18_021F94BC(PokedexEntryPopup *popup);
static void ov18_021F9508(PokedexEntryPopup *popup);
static void ov18_021F9518(PokedexEntryPopup *popup);
static void ov18_021F959C(PokedexEntryPopup *popup);

// All rodata lives in one struct so MWCC keeps the retail address order.
static const PokedexEntryPopupRodata sRodata = {
    // objCharTransferTemplate
    {
     .maxTasks = 0x20,
     .sizeMain = 0x10000,
     .sizeSub = 0x4000,
     .heapID = HEAP_ID_DEFAULT,
     },
    // bgTemplate2
    {
     .x = 0,
     .y = 0,
     .bufferSize = 0x800,
     .baseTile = 0,
     .size = GF_BG_SCR_SIZE_256x256,
     .colorMode = GX_BG_COLORMODE_16,
     .screenBase = GX_BG_SCRBASE_0xf000,
     .charBase = GX_BG_CHARBASE_0x10000,
     .bgExtPltt = GX_BG_EXTPLTT_01,
     .priority = 2,
     .areaOver = GX_BG_AREAOVER_XLU,
     .dummy = 0,
     .mosaic = FALSE,
     },
    // bgTemplate1
    {
     .x = 0,
     .y = 0,
     .bufferSize = 0x800,
     .baseTile = 0,
     .size = GF_BG_SCR_SIZE_256x256,
     .colorMode = GX_BG_COLORMODE_16,
     .screenBase = GX_BG_SCRBASE_0xf800,
     .charBase = GX_BG_CHARBASE_0x00000,
     .bgExtPltt = GX_BG_EXTPLTT_01,
     .priority = 1,
     .areaOver = GX_BG_AREAOVER_XLU,
     .dummy = 0,
     .mosaic = FALSE,
     },
    // bgTemplate3
    {
     .x = 0,
     .y = 0,
     .bufferSize = 0x800,
     .baseTile = 0,
     .size = GF_BG_SCR_SIZE_256x256,
     .colorMode = GX_BG_COLORMODE_16,
     .screenBase = GX_BG_SCRBASE_0xe800,
     .charBase = GX_BG_CHARBASE_0x10000,
     .bgExtPltt = GX_BG_EXTPLTT_01,
     .priority = 3,
     .areaOver = GX_BG_AREAOVER_XLU,
     .dummy = 0,
     .mosaic = FALSE,
     },
    // windowTemplates: dex number / category / name / type (right aligned) /
    // flavor text / height label / height / weight label / weight
    {
     { GF_BG_LYR_MAIN_1, 2, 0, 28, 2, 2, 0x3C8 },
     { GF_BG_LYR_MAIN_1, 15, 3, 4, 2, 0, 0x3C0 },
     { GF_BG_LYR_MAIN_1, 19, 3, 9, 2, 0, 0x3AE },
     { GF_BG_LYR_MAIN_1, 13, 5, 18, 2, 0, 0x38A },
     { GF_BG_LYR_MAIN_1, 2, 17, 28, 6, 1, 0x2E2 },
     { GF_BG_LYR_MAIN_1, 18, 11, 5, 2, 1, 0x2D8 },
     { GF_BG_LYR_MAIN_1, 23, 11, 8, 2, 1, 0x2C8 },
     { GF_BG_LYR_MAIN_1, 18, 13, 5, 2, 1, 0x2BE },
     { GF_BG_LYR_MAIN_1, 23, 13, 8, 2, 1, 0x2AE },
     },
    // typePalIndex
    { 0, 2, 0, 3, 1, 1, 3, 2, 0, 0, 2, 2, 1, 1, 1, 0, 2, 3, 0, 0 },
    // typeIconCharId
    {
     NARC_zukan_gra_zukan_gra_00000036_NCGR_lz,
     NARC_zukan_gra_zukan_gra_00000042_NCGR_lz,
     NARC_zukan_gra_zukan_gra_00000050_NCGR_lz,
     NARC_zukan_gra_zukan_gra_00000046_NCGR_lz,
     NARC_zukan_gra_zukan_gra_00000044_NCGR_lz,
     NARC_zukan_gra_zukan_gra_00000041_NCGR_lz,
     NARC_zukan_gra_zukan_gra_00000047_NCGR_lz,
     NARC_zukan_gra_zukan_gra_00000043_NCGR_lz,
     NARC_zukan_gra_zukan_gra_00000045_NCGR_lz,
     NARC_zukan_gra_zukan_gra_00000036_NCGR_lz,
     NARC_zukan_gra_zukan_gra_00000037_NCGR_lz,
     NARC_zukan_gra_zukan_gra_00000039_NCGR_lz,
     NARC_zukan_gra_zukan_gra_00000038_NCGR_lz,
     NARC_zukan_gra_zukan_gra_00000040_NCGR_lz,
     NARC_zukan_gra_zukan_gra_00000051_NCGR_lz,
     NARC_zukan_gra_zukan_gra_00000049_NCGR_lz,
     NARC_zukan_gra_zukan_gra_00000052_NCGR_lz,
     NARC_zukan_gra_zukan_gra_00000048_NCGR_lz,
     },
};

void ov18_021F8AB8(PokedexEntryPopup *popup) {
    BOOL decrypted = AcquireMonLock(popup->mon);
    popup->species = GetMonData(popup->mon, MON_DATA_SPECIES, NULL);
    popup->form = GetMonData(popup->mon, MON_DATA_FORM, NULL);
    popup->type1 = GetMonData(popup->mon, MON_DATA_TYPE_1, NULL);
    popup->type2 = GetMonData(popup->mon, MON_DATA_TYPE_2, NULL);
    ReleaseMonLock(popup->mon, decrypted);
}

void ov18_021F8B10(PokedexEntryPopup *popup) {
    SetBgPriority(GF_BG_LYR_MAIN_0, 0);
    GfGfx_EngineATogglePlanes(GX_PLANEMASK_BG0, GF_PLANE_TOGGLE_ON);

    {
        BgTemplate template = sRodata.bgTemplate1;
        InitBgFromTemplate(popup->bgConfig, GF_BG_LYR_MAIN_1, &template, GF_BG_TYPE_TEXT);
        BG_ClearCharDataRange(GF_BG_LYR_MAIN_1, 0x20, 0, popup->heapId);
    }
    {
        BgTemplate template = sRodata.bgTemplate2;
        InitBgFromTemplate(popup->bgConfig, GF_BG_LYR_MAIN_2, &template, GF_BG_TYPE_TEXT);
    }
    {
        BgTemplate template = sRodata.bgTemplate3;
        InitBgFromTemplate(popup->bgConfig, GF_BG_LYR_MAIN_3, &template, GF_BG_TYPE_TEXT);
    }

    GfGfxLoader_LoadCharDataFromOpenNarc(popup->gfxNarc, NARC_zukan_gra_zukan_gra_00000019_NCGR_lz, popup->bgConfig, GF_BG_LYR_MAIN_2, 0, 0, TRUE, popup->heapId);
    GfGfxLoader_LoadScrnDataFromOpenNarc(popup->gfxNarc, NARC_zukan_gra_zukan_gra_00000020_NSCR_lz, popup->bgConfig, GF_BG_LYR_MAIN_2, 0, 0, TRUE, popup->heapId);
    PaletteData_LoadOpenNarc(popup->paletteData, popup->gfxNarc, NARC_zukan_gra_zukan_gra_00000018_NCLR, popup->heapId, PLTTBUF_MAIN_BG, 0, 0);
}

void ov18_021F8BEC(PokedexEntryPopup *popup) {
    FreeBgTilemapBuffer(popup->bgConfig, GF_BG_LYR_MAIN_3);
    FreeBgTilemapBuffer(popup->bgConfig, GF_BG_LYR_MAIN_2);
    FreeBgTilemapBuffer(popup->bgConfig, GF_BG_LYR_MAIN_1);
}

void ov18_021F8C0C(PokedexEntryPopup *popup) {
    PaletteData_BeginPaletteFade(popup->paletteData, PLTTBUF_MAIN_BG_F | PLTTBUF_MAIN_OBJ_F, 0xFFFF, 1, 16, 0, RGB_BLACK);
    Pokepic_StartPaletteFade(popup->pokepic, 16, 0, 0, RGB_BLACK);
    PaletteData_SetAutoTransparent(popup->paletteData, FALSE);
}

BOOL ov18_021F8C48(PokedexEntryPopup *popup) {
    if (PaletteData_GetSelectedBuffersBitmask(popup->paletteData) == 0 && Pokepic_ResumePaletteFade(popup->pokepic) == 0) {
        return TRUE;
    }
    return FALSE;
}

void ov18_021F8C68(PokedexEntryPopup *popup) {
    popup->palFlashTimer++;
    if (popup->palFlashTimer == 16) {
        BgTilemapRectChangePalette(popup->bgConfig, GF_BG_LYR_MAIN_2, 0, 0, 32, 2, 7);
        ScheduleBgTilemapBufferTransfer(popup->bgConfig, GF_BG_LYR_MAIN_2);
    } else if (popup->palFlashTimer == 32) {
        BgTilemapRectChangePalette(popup->bgConfig, GF_BG_LYR_MAIN_2, 0, 0, 32, 2, 0);
        ScheduleBgTilemapBufferTransfer(popup->bgConfig, GF_BG_LYR_MAIN_2);
        popup->palFlashTimer = 0;
    }
}

void ov18_021F8CCC(PokedexEntryPopup *popup) {
    MsgData *msgData;
    MessageFormat *msgFormat;
    String *strbuf;
    String *string;
    u32 i;
    int x;
    for (i = 0; i < NELEMS(popup->windows); i++) {
        AddWindow(popup->bgConfig, &popup->windows[i], &sRodata.windowTemplates[i]);
        FillWindowPixelBuffer(&popup->windows[i], 0);
    }

    msgData = NewMsgDataFromNarc(MSGDATA_LOAD_DIRECT, NARC_msgdata_msg, NARC_msg_msg_0802_bin, popup->heapId);
    msgFormat = MessageFormat_New(popup->heapId);
    strbuf = String_New(0x400, popup->heapId);

    ov18_021F9648(&popup->windows[0], msgData, 0x90, 0x70, 0, 4, MAKE_TEXT_COLOR(2, 1, 0), 2);

    BufferIntegerAsString(msgFormat, 0, Pokedex_ConvertToCurrentDexNo(popup->natDexEnabled, popup->species), 3, PRINTING_MODE_LEADING_ZEROS, TRUE);
    string = NewString_ReadMsgData(msgData, 9);
    StringExpandPlaceholders(msgFormat, strbuf, string);
    ov18_021F95FC(&popup->windows[1], strbuf, 1, 0, 4, MAKE_TEXT_COLOR(2, 1, 0), 0);
    String_Delete(string);

    string = ov18_021E590C(popup->species, 2, popup->heapId);
    ov18_021F95FC(&popup->windows[2], string, 0, 0, 4, MAKE_TEXT_COLOR(2, 1, 0), 0);
    String_Delete(string);

    string = ov18_021E595C(popup->species, 2, popup->heapId);
    x = GetWindowWidth(&popup->windows[3]) * 8 - 4;
    ov18_021F95FC(&popup->windows[3], string, x, 0, 4, MAKE_TEXT_COLOR(2, 1, 0), 1);
    String_Delete(string);

    string = ov18_021E59A8(popup->species, 2, 0, popup->heapId);
    x = (GetWindowWidth(&popup->windows[4]) * 8 - FontID_String_GetWidthMultiline(0, string, 0)) / 2;
    ov18_021F95FC(&popup->windows[4], string, x, 0, 0, MAKE_TEXT_COLOR(2, 1, 0), 0);
    String_Delete(string);

    ov18_021F9648(&popup->windows[5], msgData, 0xA, 0x14, 0, 0, MAKE_TEXT_COLOR(2, 1, 0), 2);
    ov18_021F9648(&popup->windows[7], msgData, 0xB, 0x14, 0, 0, MAKE_TEXT_COLOR(2, 1, 0), 2);

    MessageFormat_Delete(msgFormat);
    DestroyMsgData(msgData);

    msgData = NewMsgDataFromNarc(MSGDATA_LOAD_DIRECT, NARC_msgdata_msg, GetDexHeightMsgBank(), popup->heapId);
    ov18_021F9648(&popup->windows[6], msgData, popup->species, 4, 0, 0, MAKE_TEXT_COLOR(2, 1, 0), 0);
    DestroyMsgData(msgData);

    msgData = NewMsgDataFromNarc(MSGDATA_LOAD_DIRECT, NARC_msgdata_msg, GetDexWeightMsgBank(), popup->heapId);
    ov18_021F9648(&popup->windows[8], msgData, popup->species, 4, 0, 0, MAKE_TEXT_COLOR(2, 1, 0), 0);
    DestroyMsgData(msgData);

    String_Delete(strbuf);

    for (i = 0; i < NELEMS(popup->windows); i++) {
        ScheduleWindowCopyToVram(&popup->windows[i]);
    }
}

void ov18_021F8F10(PokedexEntryPopup *popup) {
    u32 i;

    for (i = 0; i < NELEMS(popup->windows); i++) {
        RemoveWindow(&popup->windows[i]);
    }
}

static void ov18_021F8F28(PokedexEntryPopup *popup) {
    ObjCharTransferTemplate template = sRodata.objCharTransferTemplate;
    template.heapID = popup->heapId;
    ObjCharTransfer_InitEx(&template, GX_OBJVRAMMODE_CHAR_1D_64K, GX_OBJVRAMMODE_CHAR_1D_32K);
}

static void ov18_021F8F58(void) {
    ObjCharTransfer_Destroy();
}

static void ov18_021F8F60(PokedexEntryPopup *popup) {
    int i;

    for (i = 0; i < 4; i++) {
        popup->resMan[i] = Create2DGfxResObjMan(8, (GfGfxResType)i, popup->heapId);
    }
}

static void ov18_021F8F84(PokedexEntryPopup *popup) {
    int i;

    for (i = 0; i < 4; i++) {
        Destroy2DGfxResObjMan(popup->resMan[i]);
    }
}

void ov18_021F8FA0(PokedexEntryPopup *popup) {
    popup->spriteList = G2dRenderer_Init(0x20, &popup->renderer, popup->heapId);
    ClearMainOAM(popup->heapId);
    ov18_021F8F28(popup);
    ov18_021F8F60(popup);
    ov18_021F8FF8(popup);
    ov18_021F9068(popup);
    ov18_021F9150(popup);
    ov18_021F94BC(popup);
    ov18_021F9370(popup);
    ov18_021F9518(popup);
    GfGfx_EngineBTogglePlanes(GX_PLANEMASK_OBJ, GF_PLANE_TOGGLE_ON);
}

// Pokeball sprite resources
static void ov18_021F8FF8(PokedexEntryPopup *popup) {
    ov18_021F922C(popup->objs[0].res, popup->resMan, popup->heapId, popup->gfxNarc, NARC_zukan_gra_zukan_gra_00000029_NCGR_lz, NARC_zukan_gra_zukan_gra_00000032_NCLR, NARC_zukan_gra_zukan_gra_00000030_NCER_lz, NARC_zukan_gra_zukan_gra_00000031_NANR_lz, 2, 0xC618, 0xC618, 0xC618, 0xC618);
    PaletteData_LoadPaletteSlotFromHardware(popup->paletteData, PLTTBUF_MAIN_OBJ, SpriteTransfer_GetPlttOffset(popup->objs[0].res[GF_GFX_RES_TYPE_PLTT], NNS_G2D_VRAM_TYPE_2DMAIN) * 16, 0x40);
}

static void ov18_021F9054(PokedexEntryPopup *popup) {
    ov18_021F92DC(popup->objs[0].res, popup->resMan);
}

// Type icon sprite resources (the second icon shares the first one's palette)
static void ov18_021F9068(PokedexEntryPopup *popup) {
    ov18_021F922C(popup->objs[1].res, popup->resMan, popup->heapId, popup->gfxNarc, ov18_021F967C(popup->type1), NARC_zukan_gra_zukan_gra_00000035_NCLR, NARC_zukan_gra_zukan_gra_00000033_NCER_lz, NARC_zukan_gra_zukan_gra_00000034_NANR_lz, 4, 0xC619, 0xC619, 0xC619, 0xC619);
    ov18_021F922C(popup->objs[2].res, popup->resMan, popup->heapId, popup->gfxNarc, ov18_021F967C(popup->type2), -1, NARC_zukan_gra_zukan_gra_00000033_NCER_lz, NARC_zukan_gra_zukan_gra_00000034_NANR_lz, 4, 0xC61A, 0xC61A, 0xC61A, 0xC61A);
    PaletteData_LoadPaletteSlotFromHardware(popup->paletteData, PLTTBUF_MAIN_OBJ, SpriteTransfer_GetPlttOffset(popup->objs[1].res[GF_GFX_RES_TYPE_PLTT], NNS_G2D_VRAM_TYPE_2DMAIN) * 16, 0x80);
}

static void ov18_021F9108(PokedexEntryPopup *popup) {
    ov18_021F92DC(popup->objs[1].res, popup->resMan);
    SpriteTransfer_DeleteCharTransferTask(popup->objs[2].res[GF_GFX_RES_TYPE_CHAR]);
    DestroySingle2DGfxResObj(popup->resMan[GF_GFX_RES_TYPE_CHAR], popup->objs[2].res[GF_GFX_RES_TYPE_CHAR]);
    DestroySingle2DGfxResObj(popup->resMan[GF_GFX_RES_TYPE_CELL], popup->objs[2].res[GF_GFX_RES_TYPE_CELL]);
    DestroySingle2DGfxResObj(popup->resMan[GF_GFX_RES_TYPE_ANIM], popup->objs[2].res[GF_GFX_RES_TYPE_ANIM]);
}

// Footprint sprite resources (palette comes from the pokefoot narc)
static void ov18_021F9150(PokedexEntryPopup *popup) {
    NARC *narc = NARC_New(ov18_021E5900(), popup->heapId);
    ov18_021F922C(popup->objs[3].res, popup->resMan, popup->heapId, popup->gfxNarc, NARC_zukan_gra_zukan_gra_00000077_NCGR_lz, -1, NARC_zukan_gra_zukan_gra_00000078_NCER_lz, NARC_zukan_gra_zukan_gra_00000079_NANR_lz, 1, 0xC61B, 0xC61B, 0xC61B, 0xC61B);
    popup->objs[3].res[GF_GFX_RES_TYPE_PLTT] = ov18_021F92AC(popup->resMan[GF_GFX_RES_TYPE_PLTT], popup->heapId, narc, ov18_021E5908(), 1, 0xC61B);
    PaletteData_LoadPaletteSlotFromHardware(popup->paletteData, PLTTBUF_MAIN_OBJ, SpriteTransfer_GetPlttOffset(popup->objs[3].res[GF_GFX_RES_TYPE_PLTT], NNS_G2D_VRAM_TYPE_2DMAIN) * 16, 0x20);
    NARC_Delete(narc);
}

static void ov18_021F91DC(PokedexEntryPopup *popup) {
    ov18_021F92DC(popup->objs[3].res, popup->resMan);
}

void ov18_021F91F0(PokedexEntryPopup *popup) {
    ov18_021F959C(popup);
    ov18_021F94A0(popup);
    ov18_021F9508(popup);
    ov18_021F91DC(popup);
    ov18_021F9108(popup);
    ov18_021F9054(popup);
    ov18_021F8F84(popup);
    ov18_021F8F58();
    SpriteList_Delete(popup->spriteList);
}

static void ov18_021F922C(SpriteResource **res, GF_2DGfxResMan **resMan, enum HeapID heapId, NARC *narc, int charFileId, int plttFileId, int cellFileId, int animFileId, int plttNum, int charResId, int plttResId, int cellResId, int animResId) {
    res[GF_GFX_RES_TYPE_CHAR] = AddCharResObjFromOpenNarc(resMan[GF_GFX_RES_TYPE_CHAR], narc, charFileId, TRUE, charResId, NNS_G2D_VRAM_TYPE_2DMAIN, heapId);
    SpriteTransfer_CreateCharTransferTask_AllocAtEnd(res[GF_GFX_RES_TYPE_CHAR]);
    sub_0200A740(res[GF_GFX_RES_TYPE_CHAR]);

    if (plttFileId != -1) {
        res[GF_GFX_RES_TYPE_PLTT] = ov18_021F92AC(resMan[GF_GFX_RES_TYPE_PLTT], heapId, narc, plttFileId, plttNum, plttResId);
    }

    res[GF_GFX_RES_TYPE_CELL] = AddCellOrAnimResObjFromOpenNarc(resMan[GF_GFX_RES_TYPE_CELL], narc, cellFileId, TRUE, cellResId, GF_GFX_RES_TYPE_CELL, heapId);
    res[GF_GFX_RES_TYPE_ANIM] = AddCellOrAnimResObjFromOpenNarc(resMan[GF_GFX_RES_TYPE_ANIM], narc, animFileId, TRUE, animResId, GF_GFX_RES_TYPE_ANIM, heapId);
}

static SpriteResource *ov18_021F92AC(GF_2DGfxResMan *resMan, enum HeapID heapId, NARC *narc, int fileId, int plttNum, int resId) {
    SpriteResource *res = AddPlttResObjFromOpenNarc(resMan, narc, fileId, FALSE, resId, NNS_G2D_VRAM_TYPE_2DMAIN, plttNum, heapId);
    SpriteTransfer_CreatePlttTransferTask(res);
    sub_0200A740(res);
    return res;
}

static void ov18_021F92DC(SpriteResource **res, GF_2DGfxResMan **resMan) {
    SpriteTransfer_DeleteCharTransferTask(res[GF_GFX_RES_TYPE_CHAR]);
    SpriteTransfer_DeletePlttTransferTask(res[GF_GFX_RES_TYPE_PLTT]);
    DestroySingle2DGfxResObj(resMan[GF_GFX_RES_TYPE_CHAR], res[GF_GFX_RES_TYPE_CHAR]);
    DestroySingle2DGfxResObj(resMan[GF_GFX_RES_TYPE_PLTT], res[GF_GFX_RES_TYPE_PLTT]);
    DestroySingle2DGfxResObj(resMan[GF_GFX_RES_TYPE_CELL], res[GF_GFX_RES_TYPE_CELL]);
    DestroySingle2DGfxResObj(resMan[GF_GFX_RES_TYPE_ANIM], res[GF_GFX_RES_TYPE_ANIM]);
}

static void ov18_021F9310(SpriteResource **res, GF_2DGfxResMan **resMan, SpriteResourcesHeader *header, int priority) {
    CreateSpriteResourcesHeader(header, GF2DGfxResObj_GetResID(res[GF_GFX_RES_TYPE_CHAR]), GF2DGfxResObj_GetResID(res[GF_GFX_RES_TYPE_PLTT]), GF2DGfxResObj_GetResID(res[GF_GFX_RES_TYPE_CELL]), GF2DGfxResObj_GetResID(res[GF_GFX_RES_TYPE_ANIM]), -1, -1, 0, priority, resMan[GF_GFX_RES_TYPE_CHAR], resMan[GF_GFX_RES_TYPE_PLTT], resMan[GF_GFX_RES_TYPE_CELL], resMan[GF_GFX_RES_TYPE_ANIM], NULL, NULL);
}

// Type icon sprites
static void ov18_021F9370(PokedexEntryPopup *popup) {
    SimpleSpriteTemplate template;
    SpriteResourcesHeader header;

    ov18_021F9310(popup->objs[1].res, popup->resMan, &header, 1);
    template.spriteList = popup->spriteList;
    template.header = &header;
    template.whichScreen = NNS_G2D_VRAM_TYPE_2DMAIN;
    template.priority = 0;
    template.heapID = popup->heapId;
    template.position.x = 168 * FX32_ONE;
    template.position.y = 72 * FX32_ONE;
    popup->objs[1].sprite = Sprite_Create(&template);
    Sprite_SetPalIndexRespectVramOffset(popup->objs[1].sprite, ov18_021F9688(popup->type1));

    // The second icon uses the first icon's palette.
    CreateSpriteResourcesHeader(&header, GF2DGfxResObj_GetResID(popup->objs[2].res[GF_GFX_RES_TYPE_CHAR]), GF2DGfxResObj_GetResID(popup->objs[1].res[GF_GFX_RES_TYPE_PLTT]), GF2DGfxResObj_GetResID(popup->objs[2].res[GF_GFX_RES_TYPE_CELL]), GF2DGfxResObj_GetResID(popup->objs[2].res[GF_GFX_RES_TYPE_ANIM]), -1, -1, 0, 1, popup->resMan[GF_GFX_RES_TYPE_CHAR], popup->resMan[GF_GFX_RES_TYPE_PLTT], popup->resMan[GF_GFX_RES_TYPE_CELL], popup->resMan[GF_GFX_RES_TYPE_ANIM], NULL, NULL);
    template.spriteList = popup->spriteList;
    template.header = &header;
    template.whichScreen = NNS_G2D_VRAM_TYPE_2DMAIN;
    template.priority = 0;
    template.heapID = popup->heapId;
    template.position.x = 217 * FX32_ONE;
    template.position.y = 72 * FX32_ONE;
    popup->objs[2].sprite = Sprite_Create(&template);
    if (popup->type2 == 0 || popup->type1 == popup->type2) {
        Sprite_SetDrawFlag(popup->objs[2].sprite, FALSE);
    } else {
        Sprite_SetPalIndexRespectVramOffset(popup->objs[2].sprite, ov18_021F9688(popup->type2));
    }
}

static void ov18_021F94A0(PokedexEntryPopup *popup) {
    Sprite_Delete(popup->objs[1].sprite);
    Sprite_Delete(popup->objs[2].sprite);
}

// Pokeball sprite
static void ov18_021F94BC(PokedexEntryPopup *popup) {
    SimpleSpriteTemplate template;
    SpriteResourcesHeader header;

    ov18_021F9310(popup->objs[0].res, popup->resMan, &header, 1);
    template.spriteList = popup->spriteList;
    template.header = &header;
    template.whichScreen = NNS_G2D_VRAM_TYPE_2DMAIN;
    template.priority = 0;
    template.heapID = popup->heapId;
    template.position.x = 112 * FX32_ONE;
    template.position.y = 32 * FX32_ONE;
    popup->objs[0].sprite = Sprite_Create(&template);
}

static void ov18_021F9508(PokedexEntryPopup *popup) {
    Sprite_Delete(popup->objs[0].sprite);
}

// Footprint sprite
static void ov18_021F9518(PokedexEntryPopup *popup) {
    SimpleSpriteTemplate template;
    SpriteResourcesHeader header;
    void *footprint;
    u32 location;

    ov18_021F9310(popup->objs[3].res, popup->resMan, &header, 1);
    template.spriteList = popup->spriteList;
    template.header = &header;
    template.whichScreen = NNS_G2D_VRAM_TYPE_2DMAIN;
    template.priority = 0;
    template.heapID = popup->heapId;
    template.position.x = 120 * FX32_ONE;
    template.position.y = 80 * FX32_ONE;
    popup->objs[3].sprite = Sprite_Create(&template);

    footprint = ov18_021F9694(popup->species, popup->heapId);
    location = NNS_G2dGetImageLocation(Sprite_GetImageProxy(popup->objs[3].sprite), NNS_G2D_VRAM_TYPE_2DMAIN);
    DC_FlushRange(footprint, 0x80);
    GX_LoadOBJ(footprint, location, 0x80);
    Heap_Free(footprint);
}

static void ov18_021F959C(PokedexEntryPopup *popup) {
    Sprite_Delete(popup->objs[3].sprite);
}

void ov18_021F95AC(PokedexEntryPopup *popup) {
    u32 i;

    for (i = 0; i < NELEMS(popup->objs); i++) {
        Sprite_SetDrawFlag(popup->objs[i].sprite, FALSE);
    }
}

void ov18_021F95CC(PokedexEntryPopup *popup) {
    PokepicTemplate template;

    GetPokemonSpriteCharAndPlttNarcIds(&template, popup->mon, 2);
    popup->pokepic = PokepicManager_CreatePokepic(popup->pokepicManager, &template, 0x30, 0x48, 0, 0, NULL, NULL);
}

Pokepic *ov18_021F95F8(PokedexEntryPopup *popup) {
    return popup->pokepic;
}

// align: 0 = left, 1 = right, 2 = center
void ov18_021F95FC(Window *window, String *string, int x, int y, u32 fontId, u32 color, int align) {
    if (align == 1) {
        x -= FontID_String_GetWidth(fontId, string, 0);
    } else if (align == 2) {
        x -= FontID_String_GetWidth(fontId, string, 0) / 2;
    }
    AddTextPrinterParameterizedWithColor(window, fontId, string, x, y, TEXT_SPEED_NOTRANSFER, color, NULL);
}

void ov18_021F9648(Window *window, MsgData *msgData, int msgId, int x, int y, u32 fontId, u32 color, int align) {
    String *string = NewString_ReadMsgData(msgData, msgId);
    ov18_021F95FC(window, string, x, y, fontId, color, align);
    String_Delete(string);
}

u32 ov18_021F967C(int type) {
    return sRodata.typeIconCharId[type];
}

u8 ov18_021F9688(int type) {
    return sRodata.typePalIndex[type];
}

// Builds a 0x80-byte footprint tile block: the 8x8 tiles of the source
// character data are swapped so the top and bottom rows trade places.
void *ov18_021F9694(u32 species, enum HeapID heapId) {
    NNSG2dCharacterData *charData;
    void *rawData;
    u8 *pixels;
    u8 *buffer;

    rawData = GfGfxLoader_GetCharData(ov18_021E5900(), ov18_021E5904(species), TRUE, &charData, heapId);
    pixels = charData->pRawData;
    buffer = Heap_AllocAtEnd(heapId, 0x80);
    memset(buffer, 0, 0x80);
    memcpy(buffer, pixels + 0x80, 0x40);
    memcpy(buffer + 0x40, pixels, 0x40);
    Heap_Free(rawData);
    return buffer;
}
