#include "global.h"

#include "constants/sndseq.h"

#include "bg_window.h"
#include "filesystem.h"
#include "font.h"
#include "gf_gfx_loader.h"
#include "gf_gfx_planes.h"
#include "heap.h"
#include "item.h"
#include "message_format.h"
#include "obj_char_transfer.h"
#include "obj_pltt_transfer.h"
#include "party.h"
#include "party_menu.h"
#include "player_avatar.h"
#include "pokemon.h"
#include "pokemon_icon_idx.h"
#include "render_window.h"
#include "sprite.h"
#include "sprite_transfer.h"
#include "unk_02005D10.h"
#include "unk_02009D48.h"
#include "unk_0200A090.h"
#include "unk_0200B150.h"
#include "unk_02013FDC.h"
#include "unk_02030A98.h"
#include "unk_02034354.h"
#include "unk_0205BFF0.h"
#include "vram_transfer_manager.h"
#include "yes_no_prompt.h"

typedef struct UnkStruct_ov83_02246E08 {
    SpriteList *spriteList;
    G2dRenderer renderer;
    GF_2DGfxResMan *resourceMan[4];
    SpriteResource *resourceObj[14][4];
} UnkStruct_ov83_02246E08;

typedef struct UnkStruct_ov83_02247454 {
    s16 x;
    s16 y;
    Sprite *sprite;
} UnkStruct_ov83_02247454;

typedef struct UnkStruct_ov83_02247844 {
    YesNoPrompt *prompt;
    BOOL active;
    BgConfig *bgConfig;
} UnkStruct_ov83_02247844;

typedef struct UnkStruct_ov83_0224819C {
    const WindowTemplate *templates;
    u32 count;
} UnkStruct_ov83_0224819C;

u16 sub_0203769C(void);
u8 AddTextPrinterParameterizedWithColor(Window *window, u32 fontId, String *string, u32 x, u32 y, u32 textSpeed, u32 color, PrinterCallback_t callback);
void ov80_0222A3D4(Sprite *sprite, int seq);
void ov80_0222A400(Sprite *sprite, int x, int y, int flag);

void ov83_02246E08(UnkStruct_ov83_02246E08 *ctx, Party *party, int flag);
Sprite *ov83_0224714C(UnkStruct_ov83_02246E08 *ctx, u32 chara, u32 pal, u32 cell, u32 anim, u32 drawPriority, int priority, u8 display);
void ov83_022471FC(UnkStruct_ov83_02246E08 *ctx);
void ov83_02247264(UnkStruct_ov83_02246E08 *ctx, u32 resId, u16 itemId);
void ov83_022472A0(UnkStruct_ov83_02246E08 *ctx, u32 resId, u16 itemId);
void ov83_022472DC(void);
void ov83_02247314(UnkStruct_ov83_02246E08 *ctx);
void ov83_022473BC(UnkStruct_ov83_02246E08 *ctx);
UnkStruct_ov83_02247454 *ov83_02247454(UnkStruct_ov83_02246E08 *ctx, u32 chara, u32 pal, u32 cell, u32 anim, s16 x, s16 y, int priority, int unused);
UnkStruct_ov83_02247454 *ov83_022474C4(UnkStruct_ov83_02246E08 *ctx, u32 chara, u32 pal, u32 cell, u32 anim, s16 x, s16 y, int priority, int unused);
void *ov83_0224753C(UnkStruct_ov83_02247454 *obj);
void ov83_0224755C(UnkStruct_ov83_02247454 *obj, BOOL flag);
void ov83_02247568(UnkStruct_ov83_02247454 *obj, int x, int y);
void ov83_0224759C(UnkStruct_ov83_02247454 *obj, int x, int y);
void ov83_022475D4(UnkStruct_ov83_02247454 *obj, int seq);
void ov83_022475EC(UnkStruct_ov83_02247454 *obj, Pokemon *mon);
void ov83_02247600(UnkStruct_ov83_02247454 *obj, int seq);
void ov83_0224760C(UnkStruct_ov83_02247454 *obj, int flag);
BOOL ov83_02247624(UnkStruct_ov83_02247454 *obj);
void ov83_02247630(UnkStruct_ov83_02247454 *obj, int x, int y);
void ov83_02247668(UnkStruct_ov83_02247454 *obj, BoxPokemon *boxMon, int species, u32 personality);
void ov83_0224773C(UnkStruct_ov83_02247454 **objs, u32 count, int mode);
int ov83_02247768(int a0, int a1);
u8 ov83_0224776C(u8 a0, u8 a1);
u8 ov83_0224777C(SaveData *saveData, u8 a1, u8 a2);
void ov83_022477B0(int a0, u16 seqNo);
void ov83_022477C4(MessageFormat *msgFmt, u32 idx);
void ov83_022477E4(u32 *flags);
void ov83_022477EC(int idx, int val, u32 *flags);
void ov83_0224780C(u32 *flags);
void ov83_02247844(UnkStruct_ov83_02247844 *yesNo);
void ov83_02247858(UnkStruct_ov83_02247844 *yesNo);
void ov83_02247864(UnkStruct_ov83_02247844 *yesNo, BgConfig *bgConfig);
void ov83_022478B4(UnkStruct_ov83_02247844 *yesNo);
void ov83_022478D4(BgConfig *bgConfig, Window *windows, int idx);
void ov83_0224791C(Window *windows, int idx);
void ov83_02247944(Window *window, int frame);
void ov83_02247988(u16 *tileStart, u16 *unused);
void ov83_02247998(Window *window, String *str, int x, int y, u32 fontId, u32 color, int align);

static const u8 ov83_02248178[4] = { 14, 14, 14, 14 };

static const WindowTemplate ov83_022481AC[35];
static const WindowTemplate ov83_022482C4[70];

// MWCC emits these three equal-size (0x10) const objects in reverse definition order.
static const UnkStruct_ov83_0224819C ov83_0224819C[2] = {
    { ov83_022482C4, NELEMS(ov83_022482C4) },
    { ov83_022481AC, NELEMS(ov83_022481AC) },
};

static const UnkStruct_02014E30 ov83_0224818C = { 0, 0, 10, 10 };

static const ObjCharTransferTemplate ov83_0224817C = { 32, 0x400, 0x400, HEAP_ID_107 };

static const WindowTemplate ov83_022481AC[35] = {
    { 1, 1,  1,  30, 2,  14, 0x1   },
    { 1, 26, 19, 4,  3,  14, 0x3D  },
    { 1, 0,  4,  32, 2,  14, 0x49  },
    { 1, 0,  9,  32, 2,  14, 0x89  },
    { 0, 4,  10, 26, 14, 14, 0x1   },
    { 0, 23, 15, 8,  8,  14, 0x1   },
    { 0, 22, 9,  9,  8,  14, 0x16D },
    { 0, 2,  19, 27, 4,  13, 0x1B5 },
    { 0, 2,  19, 20, 4,  13, 0x221 },
    { 0, 2,  19, 17, 4,  13, 0x271 },
    { 0, 24, 13, 7,  4,  14, 0x2B5 },
    { 0, 24, 11, 7,  6,  14, 0x2D1 },
    { 5, 13, 1,  8,  2,  15, 0x3F0 },
    { 5, 21, 1,  1,  2,  15, 0x3EE },
    { 5, 23, 1,  3,  2,  15, 0x3E8 },
    { 5, 26, 1,  3,  2,  15, 0x3E2 },
    { 5, 13, 4,  7,  2,  15, 0x3D4 },
    { 5, 20, 4,  11, 2,  15, 0x3BE },
    { 5, 13, 7,  6,  2,  15, 0x3B2 },
    { 5, 20, 7,  8,  2,  15, 0x3A2 },
    { 5, 13, 10, 6,  2,  15, 0x396 },
    { 5, 19, 10, 12, 2,  15, 0x37E },
    { 5, 1,  11, 2,  2,  15, 0x37A },
    { 5, 4,  11, 7,  2,  15, 0x36C },
    { 5, 1,  13, 6,  2,  15, 0x358 },
    { 5, 8,  13, 3,  2,  15, 0x352 },
    { 5, 1,  17, 7,  2,  15, 0x344 },
    { 5, 8,  17, 3,  2,  15, 0x33E },
    { 5, 1,  15, 6,  2,  15, 0x332 },
    { 5, 8,  15, 3,  2,  15, 0x32C },
    { 5, 1,  19, 7,  2,  15, 0x31E },
    { 5, 8,  19, 3,  2,  15, 0x318 },
    { 5, 1,  21, 6,  2,  15, 0x30C },
    { 5, 8,  21, 3,  2,  15, 0x306 },
    { 5, 13, 14, 18, 8,  15, 0x276 },
};

static const WindowTemplate ov83_022482C4[70] = {
    { 1, 1,  1,  30, 2,  14, 0x1   },
    { 1, 26, 19, 4,  3,  14, 0x3D  },
    { 1, 0,  4,  32, 2,  14, 0x49  },
    { 1, 0,  9,  32, 2,  14, 0x89  },
    { 0, 5,  10, 24, 14, 14, 0x1   },
    { 0, 12, 2,  19, 12, 14, 0x1   },
    { 0, 2,  19, 27, 4,  13, 0x1EF },
    { 0, 2,  19, 20, 4,  13, 0x25B },
    { 0, 2,  19, 17, 4,  13, 0x2AB },
    { 0, 23, 17, 8,  6,  14, 0x2EF },
    { 0, 20, 7,  11, 10, 14, 0x31F },
    { 0, 22, 9,  9,  8,  14, 0x31F },
    { 0, 7,  17, 23, 6,  13, 0x25B },
    { 0, 24, 13, 7,  4,  14, 0x2E5 },
    { 0, 24, 11, 7,  6,  14, 0x301 },
    { 0, 1,  1,  8,  4,  14, 0x32B },
    { 0, 1,  7,  10, 2,  14, 0x34B },
    { 0, 1,  13, 11, 2,  14, 0x35F },
    { 5, 13, 1,  8,  2,  15, 0x3F0 },
    { 5, 21, 1,  1,  2,  15, 0x3EE },
    { 5, 23, 1,  3,  2,  15, 0x3E8 },
    { 5, 26, 1,  3,  2,  15, 0x3E2 },
    { 5, 13, 4,  7,  2,  15, 0x3D4 },
    { 5, 20, 4,  11, 2,  15, 0x3BE },
    { 5, 13, 7,  6,  2,  15, 0x3B2 },
    { 5, 20, 7,  8,  2,  15, 0x3A2 },
    { 5, 13, 10, 6,  2,  15, 0x396 },
    { 5, 19, 10, 12, 2,  15, 0x37E },
    { 5, 1,  11, 2,  2,  15, 0x37A },
    { 5, 4,  11, 7,  2,  15, 0x36C },
    { 5, 1,  13, 6,  2,  15, 0x358 },
    { 5, 8,  13, 3,  2,  15, 0x352 },
    { 5, 1,  17, 7,  2,  15, 0x344 },
    { 5, 8,  17, 3,  2,  15, 0x33E },
    { 5, 1,  15, 6,  2,  15, 0x332 },
    { 5, 8,  15, 3,  2,  15, 0x32C },
    { 5, 1,  19, 7,  2,  15, 0x31E },
    { 5, 8,  19, 3,  2,  15, 0x318 },
    { 5, 1,  21, 7,  2,  15, 0x30A },
    { 5, 8,  21, 3,  2,  15, 0x304 },
    { 5, 13, 14, 11, 2,  15, 0x2EE },
    { 5, 13, 16, 11, 2,  15, 0x2D8 },
    { 5, 13, 18, 11, 2,  15, 0x2C2 },
    { 5, 13, 20, 11, 2,  15, 0x2AC },
    { 5, 26, 14, 5,  2,  15, 0x2A2 },
    { 5, 26, 16, 5,  2,  15, 0x298 },
    { 5, 26, 18, 5,  2,  15, 0x28E },
    { 5, 26, 20, 5,  2,  15, 0x284 },
    { 0, 3,  4,  13, 5,  14, 0x1   },
    { 0, 19, 4,  13, 5,  14, 0x42  },
    { 0, 3,  9,  13, 5,  14, 0x83  },
    { 0, 19, 9,  13, 5,  14, 0xC4  },
    { 0, 3,  14, 13, 5,  14, 0x105 },
    { 0, 19, 14, 13, 5,  14, 0x146 },
    { 0, 10, 8,  12, 2,  14, 0x187 },
    { 0, 22, 8,  5,  2,  14, 0x19F },
    { 0, 14, 21, 4,  2,  14, 0x1A9 },
    { 0, 26, 21, 5,  2,  14, 0x1B1 },
    { 0, 2,  1,  12, 2,  14, 0x1BB },
    { 0, 16, 1,  8,  2,  14, 0x1D3 },
    { 0, 24, 1,  6,  2,  14, 0x1E3 },
    { 7, 4,  17, 27, 6,  15, 0x35E },
    { 7, 13, 5,  8,  2,  15, 0x34E },
    { 7, 21, 5,  1,  2,  15, 0x34C },
    { 7, 23, 5,  3,  2,  15, 0x346 },
    { 7, 26, 5,  3,  2,  15, 0x340 },
    { 7, 13, 8,  2,  2,  15, 0x33C },
    { 7, 16, 8,  8,  2,  15, 0x32C },
    { 7, 13, 11, 6,  2,  15, 0x320 },
    { 7, 19, 11, 12, 2,  15, 0x308 },
};

void ov83_02246E08(UnkStruct_ov83_02246E08 *ctx, Party *party, int flag) {
    int i;
    NARC *narc;
    Pokemon *mon;

    GF_CreateVramTransferManager(32, HEAP_ID_107);
    ov83_022472DC();
    NNS_G2dInitOamManagerModule();
    OamManager_Create(0, 128, 0, 32, 0, 128, 0, 32, HEAP_ID_107);
    ctx->spriteList = G2dRenderer_Init(40, &ctx->renderer, HEAP_ID_107);
    for (i = 0; i < 4; i++) {
        ctx->resourceMan[i] = Create2DGfxResObjMan(ov83_02248178[i], (GfGfxResType)i, HEAP_ID_107);
    }

    ov83_022473BC(ctx);

    ctx->resourceObj[0][GF_GFX_RES_TYPE_CHAR] = AddCharResObjFromNarc(ctx->resourceMan[GF_GFX_RES_TYPE_CHAR], NARC_a_1_8_4, 15, TRUE, 0, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_107);
    ctx->resourceObj[0][GF_GFX_RES_TYPE_PLTT] = AddPlttResObjFromNarc(ctx->resourceMan[GF_GFX_RES_TYPE_PLTT], NARC_a_1_8_4, 55, FALSE, 0, NNS_G2D_VRAM_TYPE_2DMAIN, 4, HEAP_ID_107);
    ctx->resourceObj[0][GF_GFX_RES_TYPE_CELL] = AddCellOrAnimResObjFromNarc(ctx->resourceMan[GF_GFX_RES_TYPE_CELL], NARC_a_1_8_4, 17, TRUE, 0, GF_GFX_RES_TYPE_CELL, HEAP_ID_107);
    ctx->resourceObj[0][GF_GFX_RES_TYPE_ANIM] = AddCellOrAnimResObjFromNarc(ctx->resourceMan[GF_GFX_RES_TYPE_ANIM], NARC_a_1_8_4, 16, TRUE, 0, GF_GFX_RES_TYPE_ANIM, HEAP_ID_107);

    narc = NARC_New(NARC_itemtool_itemdata_item_icon, HEAP_ID_107);
    for (i = 4; i <= 9; i++) {
        ctx->resourceObj[i][GF_GFX_RES_TYPE_CHAR] = AddCharResObjFromOpenNarc(ctx->resourceMan[GF_GFX_RES_TYPE_CHAR], narc, GetItemIndexMapping(ITEM_NONE, 1), FALSE, i, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_107);
        ctx->resourceObj[i][GF_GFX_RES_TYPE_PLTT] = AddPlttResObjFromNarc(ctx->resourceMan[GF_GFX_RES_TYPE_PLTT], NARC_itemtool_itemdata_item_icon, GetItemIndexMapping(ITEM_NONE, 2), FALSE, i, NNS_G2D_VRAM_TYPE_2DMAIN, 1, HEAP_ID_107);
    }
    ctx->resourceObj[4][GF_GFX_RES_TYPE_CELL] = AddCellOrAnimResObjFromOpenNarc(ctx->resourceMan[GF_GFX_RES_TYPE_CELL], narc, GetItemIconCell(), FALSE, 4, GF_GFX_RES_TYPE_CELL, HEAP_ID_107);
    ctx->resourceObj[4][GF_GFX_RES_TYPE_ANIM] = AddCellOrAnimResObjFromOpenNarc(ctx->resourceMan[GF_GFX_RES_TYPE_ANIM], narc, GetItemIconAnim(), FALSE, 4, GF_GFX_RES_TYPE_ANIM, HEAP_ID_107);
    ctx->resourceObj[3][GF_GFX_RES_TYPE_PLTT] = AddPlttResObjFromNarc(ctx->resourceMan[GF_GFX_RES_TYPE_PLTT], NARC_itemtool_itemdata_item_icon, GetItemIndexMapping(ITEM_NONE, 2), FALSE, 3, NNS_G2D_VRAM_TYPE_2DSUB, 1, HEAP_ID_107);
    NARC_Delete(narc);

    ctx->resourceObj[3][GF_GFX_RES_TYPE_CHAR] = AddCharResObjFromNarc(ctx->resourceMan[GF_GFX_RES_TYPE_CHAR], NARC_a_1_8_4, 36, TRUE, 3, NNS_G2D_VRAM_TYPE_2DSUB, HEAP_ID_107);
    ctx->resourceObj[3][GF_GFX_RES_TYPE_CELL] = AddCellOrAnimResObjFromNarc(ctx->resourceMan[GF_GFX_RES_TYPE_CELL], NARC_a_1_8_4, 38, TRUE, 3, GF_GFX_RES_TYPE_CELL, HEAP_ID_107);
    ctx->resourceObj[3][GF_GFX_RES_TYPE_ANIM] = AddCellOrAnimResObjFromNarc(ctx->resourceMan[GF_GFX_RES_TYPE_ANIM], NARC_a_1_8_4, 37, TRUE, 3, GF_GFX_RES_TYPE_ANIM, HEAP_ID_107);

    ov83_02247314(ctx);

    narc = NARC_New(NARC_poketool_icongra_poke_icon, HEAP_ID_107);
    ctx->resourceObj[10][GF_GFX_RES_TYPE_PLTT] = AddPlttResObjFromNarc(ctx->resourceMan[GF_GFX_RES_TYPE_PLTT], NARC_poketool_icongra_poke_icon, sub_02074490(), FALSE, 10, NNS_G2D_VRAM_TYPE_2DMAIN, 3, HEAP_ID_107);
    ctx->resourceObj[10][GF_GFX_RES_TYPE_CELL] = AddCellOrAnimResObjFromOpenNarc(ctx->resourceMan[GF_GFX_RES_TYPE_CELL], narc, sub_02074498(), FALSE, 5, GF_GFX_RES_TYPE_CELL, HEAP_ID_107);
    ctx->resourceObj[10][GF_GFX_RES_TYPE_ANIM] = AddCellOrAnimResObjFromOpenNarc(ctx->resourceMan[GF_GFX_RES_TYPE_ANIM], narc, sub_020744A4(), FALSE, 5, GF_GFX_RES_TYPE_ANIM, HEAP_ID_107);

    for (i = 0; i < 4; i++) {
        if (i == 3) {
            if (flag == FALSE) {
                mon = Party_GetMonByIndex(party, 0);
            } else {
                mon = Party_GetMonByIndex(party, i);
            }
        } else {
            mon = Party_GetMonByIndex(party, i);
        }
        ctx->resourceObj[10 + i][GF_GFX_RES_TYPE_CHAR] = AddCharResObjFromOpenNarc(ctx->resourceMan[GF_GFX_RES_TYPE_CHAR], narc, Pokemon_GetIconNaix(mon), FALSE, 10 + i, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_107);
    }
    NARC_Delete(narc);

    for (i = 0; i < 14; i++) {
        SpriteTransfer_CreateCharTransferTask(ctx->resourceObj[i][GF_GFX_RES_TYPE_CHAR]);
    }
    for (i = 0; i < 11; i++) {
        SpriteTransfer_CreateExtPlttTransferTask(ctx->resourceObj[i][GF_GFX_RES_TYPE_PLTT]);
    }
    GfGfx_EngineBTogglePlanes(GX_PLANEMASK_OBJ, GF_PLANE_TOGGLE_ON);
    GfGfx_EngineATogglePlanes(GX_PLANEMASK_OBJ, GF_PLANE_TOGGLE_ON);
}

Sprite *ov83_0224714C(UnkStruct_ov83_02246E08 *ctx, u32 chara, u32 pal, u32 cell, u32 anim, u32 drawPriority, int priority, u8 display) {
    SpriteResourcesHeader resourceHeader;
    SpriteTemplate template;
    Sprite *sprite;

    CreateSpriteResourcesHeader(&resourceHeader, chara, pal, cell, cell, -1, -1, 0, priority, ctx->resourceMan[0], ctx->resourceMan[1], ctx->resourceMan[2], ctx->resourceMan[3], NULL, NULL);

    template.spriteList = ctx->spriteList;
    template.header = &resourceHeader;
    template.position.x = 0;
    template.position.y = 0;
    template.position.z = 0;
    template.scale.x = FX32_ONE;
    template.scale.y = FX32_ONE;
    template.scale.z = FX32_ONE;
    template.rotation = 0;
    template.drawPriority = drawPriority;
    if (display == 0) {
        template.whichScreen = NNS_G2D_VRAM_TYPE_2DMAIN;
    } else {
        template.whichScreen = NNS_G2D_VRAM_TYPE_2DSUB;
    }
    template.heapID = HEAP_ID_107;
    if (display == 1) {
        template.position.y += GX_LCD_SIZE_Y * FX32_ONE;
    }

    sprite = Sprite_CreateAffine(&template);
    Sprite_SetAnimActiveFlag(sprite, TRUE);
    Sprite_SetAnimSpeed(sprite, FX32_ONE);
    Sprite_SetAnimCtrlSeq(sprite, anim);
    return sprite;
}

void ov83_022471FC(UnkStruct_ov83_02246E08 *ctx) {
    u8 i;

    for (i = 0; i < 14; i++) {
        SpriteTransfer_DeleteCharTransferTask(ctx->resourceObj[i][GF_GFX_RES_TYPE_CHAR]);
    }
    for (i = 0; i < 11; i++) {
        SpriteTransfer_DeletePlttTransferTask(ctx->resourceObj[i][GF_GFX_RES_TYPE_PLTT]);
    }
    for (i = 0; i < 4; i++) {
        Destroy2DGfxResObjMan(ctx->resourceMan[i]);
    }
    SpriteList_Delete(ctx->spriteList);
    OamManager_Free();
    ObjCharTransfer_Destroy();
    ObjPlttTransfer_Destroy();
}

void ov83_02247264(UnkStruct_ov83_02246E08 *ctx, u32 resId, u16 itemId) {
    SpriteResource *res = SpriteResourceCollection_Find(ctx->resourceMan[GF_GFX_RES_TYPE_CHAR], resId);
    ReplaceCharResObjFromNarc(ctx->resourceMan[GF_GFX_RES_TYPE_CHAR], res, NARC_itemtool_itemdata_item_icon, GetItemIndexMapping(itemId, 1), FALSE, HEAP_ID_107);
    SpriteTransfer_ReplaceCharData(res);
}

void ov83_022472A0(UnkStruct_ov83_02246E08 *ctx, u32 resId, u16 itemId) {
    SpriteResource *res = SpriteResourceCollection_Find(ctx->resourceMan[GF_GFX_RES_TYPE_PLTT], resId);
    ReplacePlttResObjFromNarc(ctx->resourceMan[GF_GFX_RES_TYPE_PLTT], res, NARC_itemtool_itemdata_item_icon, GetItemIndexMapping(itemId, 2), FALSE, HEAP_ID_107);
    SpriteTransfer_ReplacePlttData(res);
}

void ov83_022472DC(void) {
    ObjCharTransferTemplate template = ov83_0224817C;
    ObjCharTransfer_InitEx(&template, GX_OBJVRAMMODE_CHAR_1D_32K, GX_OBJVRAMMODE_CHAR_1D_64K);
    ObjPlttTransfer_Init(32, HEAP_ID_107);
    ObjCharTransfer_ClearBuffers();
    ObjPlttTransfer_Reset();
}

void ov83_02247314(UnkStruct_ov83_02246E08 *ctx) {
    NARC *narc = NARC_New(NARC_graphic_plist_gra, HEAP_ID_107);

    ctx->resourceObj[1][GF_GFX_RES_TYPE_CHAR] = AddCharResObjFromOpenNarc(ctx->resourceMan[GF_GFX_RES_TYPE_CHAR], narc, sub_0207CA9C(), FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, HEAP_ID_107);
    ctx->resourceObj[1][GF_GFX_RES_TYPE_PLTT] = AddPlttResObjFromNarc(ctx->resourceMan[GF_GFX_RES_TYPE_PLTT], NARC_graphic_plist_gra, sub_0207CAA0(), FALSE, 1, NNS_G2D_VRAM_TYPE_2DMAIN, 1, HEAP_ID_107);
    ctx->resourceObj[1][GF_GFX_RES_TYPE_CELL] = AddCellOrAnimResObjFromOpenNarc(ctx->resourceMan[GF_GFX_RES_TYPE_CELL], narc, sub_0207CAA4(), FALSE, 1, GF_GFX_RES_TYPE_CELL, HEAP_ID_107);
    ctx->resourceObj[1][GF_GFX_RES_TYPE_ANIM] = AddCellOrAnimResObjFromOpenNarc(ctx->resourceMan[GF_GFX_RES_TYPE_ANIM], narc, sub_0207CAA8(), FALSE, 1, GF_GFX_RES_TYPE_ANIM, HEAP_ID_107);
    NARC_Delete(narc);
}

void ov83_022473BC(UnkStruct_ov83_02246E08 *ctx) {
    NARC *narc = NARC_New(NARC_a_0_0_8, HEAP_ID_107);

    ctx->resourceObj[2][GF_GFX_RES_TYPE_CHAR] = AddCharResObjFromOpenNarc(ctx->resourceMan[GF_GFX_RES_TYPE_CHAR], narc, 76, FALSE, 2, NNS_G2D_VRAM_TYPE_2DSUB, HEAP_ID_107);
    ctx->resourceObj[2][GF_GFX_RES_TYPE_PLTT] = AddPlttResObjFromOpenNarc(ctx->resourceMan[GF_GFX_RES_TYPE_PLTT], narc, 75, FALSE, 2, NNS_G2D_VRAM_TYPE_2DSUB, 1, HEAP_ID_107);
    ctx->resourceObj[2][GF_GFX_RES_TYPE_CELL] = AddCellOrAnimResObjFromOpenNarc(ctx->resourceMan[GF_GFX_RES_TYPE_CELL], narc, 77, FALSE, 2, GF_GFX_RES_TYPE_CELL, HEAP_ID_107);
    ctx->resourceObj[2][GF_GFX_RES_TYPE_ANIM] = AddCellOrAnimResObjFromOpenNarc(ctx->resourceMan[GF_GFX_RES_TYPE_ANIM], narc, 78, FALSE, 2, GF_GFX_RES_TYPE_ANIM, HEAP_ID_107);
    NARC_Delete(narc);
}

UnkStruct_ov83_02247454 *ov83_02247454(UnkStruct_ov83_02246E08 *ctx, u32 chara, u32 pal, u32 cell, u32 anim, s16 x, s16 y, int priority, int unused) {
    UnkStruct_ov83_02247454 *obj;
    VecFx32 vec;

    obj = Heap_Alloc(HEAP_ID_107, sizeof(UnkStruct_ov83_02247454));
    memset(obj, 0, sizeof(UnkStruct_ov83_02247454));
    obj->x = x;
    obj->y = y;
    obj->sprite = ov83_0224714C(ctx, chara, pal, cell, anim, 0, priority, 0);
    vec.x = x * FX32_ONE;
    vec.y = y * FX32_ONE;
    Sprite_SetMatrix(obj->sprite, &vec);
    return obj;
}

UnkStruct_ov83_02247454 *ov83_022474C4(UnkStruct_ov83_02246E08 *ctx, u32 chara, u32 pal, u32 cell, u32 anim, s16 x, s16 y, int priority, int unused) {
    UnkStruct_ov83_02247454 *obj;
    VecFx32 vec;

    obj = Heap_Alloc(HEAP_ID_107, sizeof(UnkStruct_ov83_02247454));
    memset(obj, 0, sizeof(UnkStruct_ov83_02247454));
    obj->x = x;
    obj->y = y;
    obj->sprite = ov83_0224714C(ctx, chara, pal, cell, anim, 0, priority, 1);
    vec.x = x * FX32_ONE;
    vec.y = y * FX32_ONE + GX_LCD_SIZE_Y * FX32_ONE;
    Sprite_SetMatrix(obj->sprite, &vec);
    return obj;
}

void *ov83_0224753C(UnkStruct_ov83_02247454 *obj) {
    if (obj == NULL) {
        GF_ASSERT(FALSE);
        return NULL;
    }
    Sprite_Delete(obj->sprite);
    Heap_Free(obj);
    return NULL;
}

void ov83_0224755C(UnkStruct_ov83_02247454 *obj, BOOL flag) {
    Sprite_SetDrawFlag(obj->sprite, flag);
}

void ov83_02247568(UnkStruct_ov83_02247454 *obj, int x, int y) {
    VecFx32 vec = *Sprite_GetMatrixPtr(obj->sprite);
    vec.x = x * FX32_ONE;
    vec.y = y * FX32_ONE;
    Sprite_SetMatrix(obj->sprite, &vec);
}

void ov83_0224759C(UnkStruct_ov83_02247454 *obj, int x, int y) {
    VecFx32 vec = *Sprite_GetMatrixPtr(obj->sprite);
    vec.x = x * FX32_ONE;
    vec.y = y * FX32_ONE + GX_LCD_SIZE_Y * FX32_ONE;
    Sprite_SetMatrix(obj->sprite, &vec);
}

void ov83_022475D4(UnkStruct_ov83_02247454 *obj, int seq) {
    Sprite_SetAnimationFrame(obj->sprite, 0);
    Sprite_SetAnimCtrlSeq(obj->sprite, seq);
}

void ov83_022475EC(UnkStruct_ov83_02247454 *obj, Pokemon *mon) {
    Sprite_SetPalOffsetRespectVramOffset(obj->sprite, Pokemon_GetIconPalette(mon));
}

void ov83_02247600(UnkStruct_ov83_02247454 *obj, int seq) {
    ov80_0222A3D4(obj->sprite, seq);
}

void ov83_0224760C(UnkStruct_ov83_02247454 *obj, int flag) {
    ov80_0222A400(obj->sprite, obj->x, obj->y, flag);
}

BOOL ov83_02247624(UnkStruct_ov83_02247454 *obj) {
    return Sprite_IsAnimated(obj->sprite);
}

void ov83_02247630(UnkStruct_ov83_02247454 *obj, int x, int y) {
    ov83_022475D4(obj, 11);
    ov83_02247568(obj, x, y);
    ov83_0224755C(obj, TRUE);
    PlaySE(SEQ_SE_DP_PIRORIRO2);
    PlaySE(SEQ_SE_DP_DANSA4);
}

void ov83_02247668(UnkStruct_ov83_02247454 *obj, BoxPokemon *boxMon, int species, u32 personality) {
    NNSG2dCharacterData *charData;
    PokepicTemplate pokepicTemplate;
    UnkStruct_02014E30 rect = ov83_0224818C;
    u32 location;
    void *buf;
    void *data;
    u32 narcId;
    u32 palId;

    buf = Heap_AllocAtEnd(HEAP_ID_107, 0xC80);
    if (species != SPECIES_NONE) {
        GetBoxmonSpriteCharAndPlttNarcIds(&pokepicTemplate, boxMon, 2, FALSE);
        sub_02014510((NarcId)pokepicTemplate.narcID, pokepicTemplate.charDataID, HEAP_ID_107, &rect, buf, personality, FALSE, 2, species);
        narcId = pokepicTemplate.narcID;
        palId = pokepicTemplate.palDataID;
    } else {
        data = GfGfxLoader_GetCharData(NARC_a_1_8_4, 39, TRUE, &charData, HEAP_ID_107);
        MI_CpuCopy32(charData->pRawData, buf, 0xC80);
        Heap_Free(data);
        narcId = NARC_a_1_8_4;
        palId = 61;
    }
    location = NNS_G2dGetImageLocation(Sprite_GetImageProxy(obj->sprite), NNS_G2D_VRAM_TYPE_2DSUB);
    DC_FlushRange(buf, 0xC80);
    GXS_LoadOBJ(buf, location, 0xC80);
    GfGfxLoader_GXLoadPal((NarcId)narcId, palId, GF_PAL_LOCATION_SUB_OBJ, (enum GFPalSlotOffset)NNS_G2dGetImagePaletteLocation(Sprite_GetPaletteProxy(obj->sprite), NNS_G2D_VRAM_TYPE_2DSUB), 0x20, HEAP_ID_107);
    Heap_Free(buf);
}

void ov83_0224773C(UnkStruct_ov83_02247454 **objs, u32 count, int mode) {
    GXOamMode oamMode;
    u32 i;

    if (mode == 1) {
        oamMode = GX_OAM_MODE_XLU;
    } else {
        oamMode = GX_OAM_MODE_NORMAL;
    }
    for (i = 0; i < count; i++) {
        Sprite_SetOamMode(objs[i]->sprite, oamMode);
    }
}

int ov83_02247768(int a0, int a1) {
    return a1;
}

u8 ov83_0224776C(u8 a0, u8 a1) {
    if (a1 >= a0) {
        a1 -= a0;
    }
    return a1;
}

u8 ov83_0224777C(SaveData *saveData, u8 a1, u8 a2) {
    FrontierSave *frontierSave = Save_Frontier_GetStatic(saveData);
    return FrontierSave_GetStat(frontierSave, sub_0205C174(a1, a2), sub_0205C268(sub_0205C174(a1, a2)));
}

void ov83_022477B0(int a0, u16 seqNo) {
    if (a0 != -1) {
        PlaySE(seqNo);
    }
}

void ov83_022477C4(MessageFormat *msgFmt, u32 idx) {
    BufferPlayersName(msgFmt, idx, sub_02034818(sub_0203769C() ^ 1));
}

void ov83_022477E4(u32 *flags) {
    *flags = 0;
}

void ov83_022477EC(int idx, int val, u32 *flags) {
    int shift = idx * 4;
    u32 value = (val + 1) << shift;
    u32 mask = 0xF << shift;
    *flags = (*flags & (mask ^ 0xFFFFFFFF)) | value;
}

void ov83_0224780C(u32 *flags) {
    u16 i;
    u16 val;

    for (i = 0; i <= 7; i++) {
        val = (*flags >> (i * 4)) & 0xF;
        if (val != 0) {
            ToggleBgLayer(i, val - 1);
        }
    }
    ov83_022477E4(flags);
}

void ov83_02247844(UnkStruct_ov83_02247844 *yesNo) {
    yesNo->prompt = YesNoPrompt_Create(HEAP_ID_107);
    yesNo->active = FALSE;
}

void ov83_02247858(UnkStruct_ov83_02247844 *yesNo) {
    YesNoPrompt_Destroy(yesNo->prompt);
}

void ov83_02247864(UnkStruct_ov83_02247844 *yesNo, BgConfig *bgConfig) {
    u16 tileStart;
    u16 unused;
    YesNoPromptTemplate template;

    yesNo->bgConfig = bgConfig;
    ov83_02247988(&tileStart, &unused);
    template.bgConfig = bgConfig;
    template.bgId = 0;
    template.tileStart = tileStart;
    template.plttSlot = 11;
    template.x = 25;
    template.y = 10;
    template.ignoreTouchFlag = 0;
    template.initialCursorPos = 0;
    template.shapeParam = 0;
    YesNoPrompt_InitFromTemplate(yesNo->prompt, &template);
    yesNo->active = TRUE;
}

void ov83_022478B4(UnkStruct_ov83_02247844 *yesNo) {
    if (yesNo->active) {
        YesNoPrompt_Reset(yesNo->prompt);
        BgCommitTilemapBufferToVram(yesNo->bgConfig, GF_BG_LYR_MAIN_0);
        yesNo->active = FALSE;
    }
}

void ov83_022478D4(BgConfig *bgConfig, Window *windows, int idx) {
    const WindowTemplate *templates = ov83_0224819C[idx].templates;
    u32 count = ov83_0224819C[idx].count;
    u8 i;

    for (i = 0; i < count; i++) {
        AddWindow(bgConfig, &windows[i], &templates[i]);
        FillWindowPixelBuffer(&windows[i], 0);
    }
}

void ov83_0224791C(Window *windows, int idx) {
    u16 i;
    u32 count = ov83_0224819C[idx].count;

    for (i = 0; i < count; i++) {
        RemoveWindow(&windows[i]);
    }
}

void ov83_02247944(Window *window, int frame) {
    LoadUserFrameGfx2(window->bgConfig, (GFBgLayer)GetWindowBgId(window), 0x3D9, 10, frame, HEAP_ID_107);
    FillWindowPixelBuffer(window, 15);
    DrawFrameAndWindow2(window, TRUE, 0x3D9, 10);
    ScheduleWindowCopyToVram(window);
}

void ov83_02247988(u16 *tileStart, u16 *unused) {
    *unused = 0xF0;
    *tileStart = 0x2E9;
}

void ov83_02247998(Window *window, String *str, int x, int y, u32 fontId, u32 color, int align) {
    if (align == 1) {
        x -= FontID_String_GetWidth(fontId, str, 0);
    } else if (align == 2) {
        x -= FontID_String_GetWidth(fontId, str, 0) / 2;
    }
    AddTextPrinterParameterizedWithColor(window, fontId, str, x, y, 0xFF, color, NULL);
}
