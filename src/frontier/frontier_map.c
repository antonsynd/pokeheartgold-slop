#include "frontier/frontier_map.h"

#include <nitro/gx/g3x.h>
#include <nitro/gx/gx_load.h>
#include <nitro/mi/memory.h>
#include <nitro/os/interrupt.h>

#include "global.h"

#include "frontier/frontier.h"

#include "assert.h"
#include "bg_window.h"
#include "field_bgm.h"
#include "filesystem.h"
#include "gf_3d_vramman.h"
#include "gf_gfx_loader.h"
#include "gf_gfx_planes.h"
#include "heap.h"
#include "options.h"
#include "overlay_80_0222ACA0.h"
#include "palette.h"
#include "player_data.h"
#include "render_text.h"
#include "render_window.h"
#include "sprite_system.h"
#include "sys_task_api.h"
#include "system.h"
#include "unk_02009D48.h"
#include "unk_020210A0.h"
#include "unk_02026E30.h"
#include "unk_0203A3B0.h"
#include "vram_transfer_manager.h"

typedef struct FrontierMapSpriteParam {
    u16 unk0;
    u16 unk2;
    u16 unk4;
    s16 unk6;
    s16 unk8;
    u8 unkA;
    u8 unkB;
    u16 pad[9];
} FrontierMapSpriteParam;

typedef struct FrontierMapObjParam {
    s16 unk0;
    s16 unk2;
    u16 unk4;
    u16 unk6;
    u16 unk8;
    u16 unkA;
} FrontierMapObjParam;

typedef struct FrontierMapEntry {
    UnkStruct_ov42_02228110 *unk0;
    UnkStruct_ov42_0222903C *unk4;
    FrontierMapSpriteParam unk8;
    u8 pad26[0x12];
    u32 unk38;
} FrontierMapEntry;

typedef struct FrontierMapSceneEntry {
    u16 id;
    u8 val;
} FrontierMapSceneEntry;

typedef struct FrontierMapSavedSprite {
    s16 x;
    s16 y;
    u8 unk4;
    u8 unk5;
    u16 frame : 13;
    u16 flag13 : 1;
    u16 draw : 1;
    u16 valid : 1;
} FrontierMapSavedSprite;

typedef struct FrontierMapSaved {
    u16 ids[8];
    FrontierMapSavedSprite sprites[8];
} FrontierMapSaved;

typedef struct FrontierMapSpriteData {
    /* 0x00 */ ManagedSprite *sprites[8];
    /* 0x20 */ u16 ids[8];
    /* 0x30 */ u32 flags;
    /* 0x34 */ u16 resIds[8];
} FrontierMapSpriteData;

typedef struct FrontierMapInternal {
    /* 0x00 */ BgConfig *bgConfig;
    /* 0x04 */ PaletteData *paletteData;
    /* 0x08 */ void *work;
    /* 0x0C */ GF3DVramMan *vramMan;
    /* 0x10 */ void *particles;
    /* 0x14 */ UnkStruct_ov42_022280A8 *unk14;
    /* 0x18 */ UnkStruct_ov42_02227F68 *unk18;
    /* 0x1C */ UnkStruct_ov44_02232914 scroll;
    /* 0x20 */ UnkStruct_ov42_02228EDC *unk20;
    /* 0x24 */ UnkStruct_ov42_022293B8 *unk24;
    /* 0x28 */ UnkStruct_ov42_022293B8 *unk28;
    /* 0x2C */ UnkStruct_ov42_02229A40 *unk2C;
    /* 0x30 */ UnkStruct_ov42_022299C0 *unk30;
    /* 0x34 */ SpriteSystem *spriteSystem;
    /* 0x38 */ SpriteManager *spriteManager;
    /* 0x3C */ FrontierMapSpriteData spriteData;
    /* 0x80 */ ManagedSprite *unk80[4];
    /* 0x90 */ u8 unk90[4];
    /* 0x94 */ SysTask *unk94;
    /* 0x98 */ SysTask *unk98;
    /* 0x9C */ SysTask *unk9C;
    /* 0xA0 */ SysTask *unkA0;
    /* 0xA4 */ u8 unkA4[4];
    /* 0xA8 */ s16 unkA8;
    /* 0xAA */ s16 unkAA;
    /* 0xAC */ u8 padAC[0xC1 - 0xAC];
    /* 0xC1 */ u8 scene;
    /* 0xC2 */ u8 padC2[2];
} FrontierMapInternal;

typedef struct FrontierMapBgTemplates {
    BgTemplate t[3];
} FrontierMapBgTemplates;

typedef struct FrontierMapRodata {
    UnkTemplate_ov42_022293B8 ov80_0223D554;
    GraphicsModes ov80_0223D560;
    OamCharTransferParam ov80_0223D570;
    SpriteResourceCountsListUnion ov80_0223D584;
    BgTemplate ov80_0223D59C;
    OamManagerParam ov80_0223D5B8;
    GraphicsBanks ov80_0223D5D8;
    FrontierMapBgTemplates ov80_0223D600;
    u8 ov80_0223D654[0x400];
} FrontierMapRodata;

static const FrontierMapRodata sRodata = {
    { 0, 3, 0, 5, 0xC, 0, 3, 0, 0, 0, 1 },
    { GX_DISPMODE_GRAPHICS, GX_BGMODE_5, GX_BGMODE_0, GX_BG0_AS_3D },
    { 0x60, 0x10000, 0x4000, GX_OBJVRAMMODE_CHAR_1D_128K, GX_OBJVRAMMODE_CHAR_1D_32K },
    { { 0x60, 0x20, 0x40, 0x40, 8, 8 } },
    { 0, 0, 0x800, 0, 1, 0, 0xF, 0, 0, 3, 0, 0, 0 },
    { 0, 0x80, 0, 0x20, 0, 0x80, 0, 0x20 },
    {
     GX_VRAM_BG_256_BC,
     GX_VRAM_BGEXTPLTT_23_G,
     GX_VRAM_SUB_BG_32_H,
     GX_VRAM_SUB_BGEXTPLTT_NONE,
     GX_VRAM_OBJ_64_E,
     GX_VRAM_OBJEXTPLTT_NONE,
     GX_VRAM_SUB_OBJ_16_I,
     GX_VRAM_SUB_OBJEXTPLTT_NONE,
     GX_VRAM_TEX_0_A,
     GX_VRAM_TEXPLTT_0_F,
     },
    { {
        { 0, 0, 0x800, 0, 1, 0, 0, 2, 0, 0, 0, 0, 0 },
        { 0, 0, 0x2000, 0, 4, 1, 1, 8, 1, 1, 0, 0, 0 },
        { 0, 0, 0x2000, 0, 4, 1, 5, 0xC, 1, 3, 0, 0, 0 },
    } },
    { 0 },
};

extern void Sound_SetFieldBGM(u16 seqNo);
extern void *sub_02096864(void *work);
extern FrontierMapSaved *sub_02096878(void *work);
extern void *sub_02096868(void *work);
extern FrontierMapEntry *sub_0209686C(void *work, int index);
extern void sub_02096884(void *work);
extern s32 ov80_0222A7EC(PlayerProfile *profile);
extern void *ov80_02239960(enum HeapID heapId);
extern void ov80_02239980(void *manager);
extern BOOL ov80_02239A38(void);
extern void ov80_02239AF8(SpriteSystem *spriteSystem, SpriteManager *spriteManager, NARC *narc, PaletteData *paletteData, u32 id);
extern void ov80_02239B7C(SpriteManager *spriteManager, u32 id);
extern ManagedSprite *ov80_02239BB8(SpriteSystem *spriteSystem, SpriteManager *spriteManager, u32 a2);
extern void ov80_02239BE8(ManagedSprite *sprite);

FrontierMap *FrontierMap_Init(void *data);
void FrontierMap_Free(FrontierMap *map);
void ov80_022389C4(FrontierMap *map);
void ov80_02238A18(FrontierMap *map);
static void FrontierMap_VBlank(void *arg);
static void ov80_02238AAC(SysTask *task, void *arg);
static void ov80_02238AB0(SysTask *task, void *arg);
static void ov80_02238ABC(SysTask *task, void *arg);
static void FrontierMap_Update(SysTask *task, void *arg);
static void FrontierMap_Scroll(FrontierMapInternal *map);
static void ov80_02238B7C(FrontierMapInternal *map);
static void ov80_02238C78(FrontierMapInternal *map);
static void FrontierMap_SetVramBank(BgConfig *bgConfig, u8 scene);
static void FrontierMap_LoadPaletteData(FrontierMapInternal *map);
static void ov80_02238FA0(FrontierMapInternal *map);
static void ov80_02239004(FrontierMapInternal *map, u8 scene, PlayerProfile *profile);
static void ov80_0223927C(FrontierMapInternal *map);
static GF3DVramMan *ov80_022392DC(enum HeapID heapId);
static void ov80_022392F8(void);
static void ov80_0223937C(GF3DVramMan *vramMan);
static void ov80_02239384(FrontierMapInternal *map);
static void ov80_022393E8(FrontierMapInternal *map);
void ov80_0223947C(FrontierMapInternal *map, const FrontierMapSceneEntry *entry);
void ov80_022394D8(FrontierMapInternal *map, u32 id);
UnkStruct_ov42_02228110 *ov80_02239510(FrontierMapInternal *map, const FrontierMapSpriteParam *param, int slot);
void ov80_02239590(FrontierMapInternal *map, UnkStruct_ov42_02228110 *target);
void ov80_022395E8(FrontierMapInternal *map, u32 id, UnkStruct_ov42_02228110 **out0, UnkStruct_ov42_0222903C **out1);
void ov80_0223962C(FrontierMapInternal *map, u16 id);
void ov80_0223965C(FrontierMapInternal *map, u16 id);
ManagedSprite *ov80_0223968C(FrontierMapInternal *map, u16 slot, u16 a2);
void ov80_022396D8(FrontierMapInternal *map, u32 slot);
ManagedSprite *ov80_02239700(FrontierMapInternal *map, u32 slot);
void ov80_02239708(FrontierMapInternal *map, u16 slot, int on);
u32 ov80_02239734(FrontierMapInternal *map, u16 slot);
static void ov80_02239740(FrontierMapInternal *map);
static void ov80_02239828(FrontierMapInternal *map);
void ov80_022398E4(FrontierMapInternal *map, s16 *a, s16 *b);
static void ov80_02239900(FrontierMapEntry *entry, FrontierMapSpriteParam *out);
static void ov80_02239914(void *work, int slot, UnkStruct_ov42_02228110 *a, UnkStruct_ov42_0222903C *b, const FrontierMapSpriteParam *param);
UnkStruct_02239938 *ov80_02239938(void *work, u32 id);

FrontierMap *FrontierMap_Init(void *data) {
    FrontierMapInternal *map;
    FrontierLaunchArgs *args;
    PlayerProfile *profile;
    u8 scene;
    int i;

    args = Frontier_GetLaunchArgs(data);
    profile = Save_PlayerData_GetProfile(args->saveData);
    scene = args->unk20;
    Main_SetVBlankIntrCB(NULL, NULL);
    HBlankInterruptDisable();
    GfGfx_DisableEngineAPlanes();
    GfGfx_DisableEngineBPlanes();
    reg_GX_DISPCNT &= 0xFFFFE0FF;
    reg_GXS_DB_DISPCNT &= 0xFFFFE0FF;
    reg_GX_DISPCNT &= 0xFFFF1FFF;
    reg_GXS_DB_DISPCNT &= 0xFFFF1FFF;
    reg_G2_BLDCNT = 0;
    reg_G2S_DB_BLDCNT = 0;
    reg_GX_POWCNT |= REG_POWCNT_ADDR / 2048;
    Heap_Create(HEAP_ID_3, HEAP_ID_101, 0x90000);
    map = Heap_Alloc(HEAP_ID_101, sizeof(FrontierMapInternal));
    MI_CpuFill8(map, 0, sizeof(FrontierMapInternal));
    map->work = data;
    map->scene = scene;
    for (i = 0; i < 8; i++) {
        map->spriteData.resIds[i] = 0xFFFF;
    }
    map->vramMan = ov80_022392DC(HEAP_ID_101);
    map->paletteData = PaletteData_Init(HEAP_ID_101);
    PaletteData_SetAutoTransparent(map->paletteData, TRUE);
    PaletteData_AllocBuffers(map->paletteData, PLTTBUF_MAIN_BG, 0x200, HEAP_ID_101);
    PaletteData_AllocBuffers(map->paletteData, PLTTBUF_SUB_BG, 0x200, HEAP_ID_101);
    PaletteData_AllocBuffers(map->paletteData, PLTTBUF_MAIN_OBJ, 0x1C0, HEAP_ID_101);
    PaletteData_AllocBuffers(map->paletteData, PLTTBUF_SUB_OBJ, 0x200, HEAP_ID_101);
    map->bgConfig = BgConfig_Alloc(HEAP_ID_101);
    GF_CreateVramTransferManager(0x40, HEAP_ID_101);
    SetKeyRepeatTimers(4, 8);
    FrontierMap_SetVramBank(map->bgConfig, scene);
    FrontierMap_LoadPaletteData(map);
    ov80_02238FA0(map);
    sub_020210BC();
    sub_02021148(4);
    ov80_02239384(map);
    map->particles = ov80_02239960(HEAP_ID_101);
    ov80_02239004(map, scene, profile);
    map->unk94 = SysTask_CreateOnMainQueue(ov80_02238AB0, map, 0xEA60);
    map->unk98 = SysTask_CreateOnMainQueue(ov80_02238ABC, map, 0xEE48);
    map->unk9C = SysTask_CreateOnMainQueue(FrontierMap_Update, map, 0x13880);
    GfGfx_BothDispOn();
    GfGfx_EngineATogglePlanes(0x10, 1);
    GfGfx_EngineBTogglePlanes(0x10, 1);
    Sound_SetFieldBGM(ov80_0222ACA0(scene, 3));
    sub_02055198(NULL, ov80_0222ACA0(scene, 3));
    TextFlags_SetAutoScrollParam(1);
    TextFlags_SetCanABSpeedUpPrint(0);
    TextFlags_SetCanTouchSpeedUpPrint(0);
    Main_SetVBlankIntrCB(FrontierMap_VBlank, map);
    map->unkA0 = SysTask_CreateOnVBlankQueue(ov80_02238AAC, map, 0xA);
    ov80_0222AD9C(map, map->unk90, map->scene);
    sub_0203A880();
    return (FrontierMap *)map;
}

void FrontierMap_Free(FrontierMap *arg) {
    FrontierMapInternal *map = (FrontierMapInternal *)arg;

    Frontier_GetLaunchArgs(map->work);
    ov80_0222ADB4(map, map->unk90, map->scene);
    ov80_0223927C(map);
    GfGfx_EngineATogglePlanes(1, 0);
    GfGfx_EngineATogglePlanes(2, 0);
    FreeBgTilemapBuffer(map->bgConfig, 1);
    FreeBgTilemapBuffer(map->bgConfig, 2);
    FreeBgTilemapBuffer(map->bgConfig, 3);
    ToggleBgLayer(4, 0);
    FreeBgTilemapBuffer(map->bgConfig, 4);
    ov80_022393E8(map);
    ov80_02239980(map->particles);
    GF_DestroyVramTransferManager();
    PaletteData_FreeBuffers(map->paletteData, PLTTBUF_MAIN_BG);
    PaletteData_FreeBuffers(map->paletteData, PLTTBUF_SUB_BG);
    PaletteData_FreeBuffers(map->paletteData, PLTTBUF_MAIN_OBJ);
    PaletteData_FreeBuffers(map->paletteData, PLTTBUF_SUB_OBJ);
    PaletteData_Free(map->paletteData);
    Heap_Free(map->bgConfig);
    SysTask_Destroy(map->unk94);
    SysTask_Destroy(map->unk98);
    SysTask_Destroy(map->unk9C);
    SysTask_Destroy(map->unkA0);
    ov80_0223937C(map->vramMan);
    sub_02021238();
    Heap_Free(map);
    reg_GX_DISPCNT &= 0xFFFF1FFF;
    reg_GXS_DB_DISPCNT &= 0xFFFF1FFF;
    Main_SetVBlankIntrCB(NULL, NULL);
    HBlankInterruptDisable();
    Heap_Destroy(HEAP_ID_101);
    TextFlags_SetCanABSpeedUpPrint(0);
    TextFlags_SetAutoScrollParam(0);
    TextFlags_SetCanTouchSpeedUpPrint(0);
    sub_0203A914();
    MI_CpuFill16((void *)0x05000000, 0x7FFF, 0x200);
    MI_CpuFill16((void *)0x05000200, 0x7FFF, 0x200);
    MI_CpuFill16((void *)0x05000400, 0x7FFF, 0x200);
    MI_CpuFill16((void *)0x05000600, 0x7FFF, 0x200);
    reg_G2_BLDCNT = 0;
    reg_G2S_DB_BLDCNT = 0;
}

void ov80_022389C4(FrontierMap *arg) {
    FrontierMapInternal *map = (FrontierMapInternal *)arg;
    int i;
    FrontierMapEntry *entry;

    for (i = 0; i < 0x20; i++) {
        entry = sub_0209686C(map->work, i);
        if (entry->unk0 != NULL) {
            entry->unk8.unkA = ov42_02228188(entry->unk0, 6);
            entry->unk8.unk2 = ov42_02228188(entry->unk0, 5);
            entry->unk8.unk6 = ov42_02228188(entry->unk0, 0);
            entry->unk8.unk8 = ov42_02228188(entry->unk0, 1);
            entry->unk8.unkB = ov42_022291F4(entry->unk4);
        }
    }
    ov80_02239740(map);
}

void ov80_02238A18(FrontierMap *arg) {
    FrontierMapInternal *map = (FrontierMapInternal *)arg;
    FrontierMapSpriteParam param;
    FrontierMapSceneEntry *table;
    int i;

    table = sub_02096864(map->work);
    for (i = 0; i < 0x18; i++) {
        if (table[i].id != 0xFFFF) {
            ov42_02228FE0(map->unk20, table[i].id, table[i].val, HEAP_ID_101);
        }
    }
    for (i = 0; i < 0x20; i++) {
        FrontierMapEntry *entry = sub_0209686C(map->work, i);
        if (entry->unk8.unk4 != 0xFFFF) {
            ov80_02239900(entry, &param);
            ov80_02239510(map, &param, i);
        }
    }
    ov80_02239828(map);
}

static void FrontierMap_VBlank(void *arg) {
    FrontierMapInternal *map = arg;

    GF_RunVramTransferTasks();
    SpriteSystem_TransferOam();
    PaletteData_PushTransparentBuffers(map->paletteData);
    DoScheduledBgGpuUpdates(map->bgConfig);
    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}

static void ov80_02238AAC(SysTask *task, void *arg) {
}

static void ov80_02238AB0(SysTask *task, void *arg) {
    FrontierMapInternal *map = arg;

    ov42_0222807C(map->unk14);
}

static void ov80_02238ABC(SysTask *task, void *arg) {
    ov80_02238C78(arg);
}

static void FrontierMap_Update(SysTask *task, void *arg) {
    FrontierMapInternal *map = arg;
    FrontierMapEntry *entry;
    u32 flags;
    int i;

    entry = sub_0209686C(map->work, 0x1F);
    if (entry->unk0 != NULL) {
        ov42_02229358(&map->scroll, entry->unk0);
    }
    FrontierMap_Scroll(map);
    ov42_022290DC(map->unk20);
    flags = map->spriteData.flags;
    for (i = 0; i < 8; i++) {
        if (map->spriteData.sprites[i] != NULL && (flags & 1)) {
            ManagedSprite_TickFrame(map->spriteData.sprites[i]);
        }
        flags >>= 1;
    }
    SpriteSystem_DrawSprites(map->spriteManager);
    SpriteSystem_UpdateTransfer();
    ov80_02239A38();
    RequestSwap3DBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_Z);
}

static void FrontierMap_Scroll(FrontierMapInternal *map) {
    FrontierLaunchArgs *args = Frontier_GetLaunchArgs(map->work);
    s32 mode = ov80_0222ACA0(args->unk20, 0xC);

    switch (mode) {
    case 0:
    default:
        if (map->unk24 != NULL) {
            ov42_02229420(map->unk24, &map->scroll);
        }
        if (map->unk28 != NULL) {
            if (ov80_0222ACA0(args->unk20, 0xD) == 1) {
                ov42_02229420(map->unk28, &map->scroll);
            }
        }
        break;
    case 1:
        ov80_02238B7C(map);
        break;
    }
}

static void ov80_02238B7C(FrontierMapInternal *map) {
    FrontierLaunchArgs *args;
    s16 x;
    s16 y;
    float fy;
    float fx;
    G2dRenderer *renderer;
    fx32 ix;

    args = Frontier_GetLaunchArgs(map->work);
    y = ov42_022293A8(&map->scroll) + map->unkAA;
    x = ov42_022293B0(&map->scroll) + map->unkA8;
    if (y > 0) {
        fy = (float)(y << 12) + 0.5f;
    } else {
        fy = (float)(y << 12) - 0.5f;
    }
    if (x > 0) {
        fx = (float)(x << 12) + 0.5f;
    } else {
        fx = (float)(x << 12) - 0.5f;
    }
    renderer = SpriteSystem_GetRenderer(map->spriteSystem);
    ix = (fx32)fx;
    G2dRenderer_SetMainSurfaceCoords(renderer, ix, (fx32)fy);
    ScheduleSetBgPosText(map->bgConfig, 3, BG_POS_OP_SET_X, x);
    ScheduleSetBgPosText(map->bgConfig, 3, BG_POS_OP_SET_Y, y);
    if (ov80_0222ACA0(args->unk20, 9) != 0xFFFF) {
        if (ov80_0222ACA0(args->unk20, 0xD) == 1) {
            ScheduleSetBgPosText(map->bgConfig, 2, BG_POS_OP_SET_X, x);
            ScheduleSetBgPosText(map->bgConfig, 2, BG_POS_OP_SET_Y, y);
        }
    }
}

static void ov80_02238C78(FrontierMapInternal *map) {
    UnkStruct_ov42_02228CDC b;
    UnkStruct_ov42_02228EB0 a;

    if (ov42_02229A08(map->unk30, (UnkStruct_ov44_02232031 *)&a) == 1) {
        do {
            ov42_02228068(map->unk14, &a);
        } while (ov42_02229A08(map->unk30, (UnkStruct_ov44_02232031 *)&a) == 1);
    }
    if (ov42_02229AC8(map->unk2C, &b) == 1) {
        do {
            if (ov42_02228C80(map->unk18, map->unk14, &b, &a) == 1) {
                ov42_02228068(map->unk14, &a);
            }
        } while (ov42_02229AC8(map->unk2C, &b) == 1);
    }
}

static void FrontierMap_SetVramBank(BgConfig *bgConfig, u8 scene) {
    GraphicsBanks banks;
    GraphicsModes modes;
    FrontierMapBgTemplates templates;
    BgTemplate bgTemplate4;
    int bgMode;
    u16 size;

    bgMode = ov80_0222ACA0(scene, 0);
    GfGfx_DisableEngineAPlanes();
    banks = sRodata.ov80_0223D5D8;
    GfGfx_SetBanks(&banks);
    MI_CpuClear32((void *)0x06000000, 0x80000);
    MI_CpuClear32((void *)0x06200000, 0x20000);
    MI_CpuClear32((void *)0x06400000, 0x40000);
    MI_CpuClear32((void *)0x06600000, 0x20000);
    modes = sRodata.ov80_0223D560;
    modes.bgMode = (GXBGMode)bgMode;
    SetBothScreensModesAndDisable(&modes);
    templates = sRodata.ov80_0223D600;
    if (bgMode == 0) {
        templates.t[1].colorMode = 0;
        templates.t[2].colorMode = 0;
        templates.t[1].bgExtPltt = 0;
        templates.t[2].bgExtPltt = 0;
    }
    size = ov80_0222ACA0(scene, 4);
    templates.t[2].size = size;
    if (ov80_0222ACA0(scene, 9) != 0xFFFF) {
        templates.t[1].size = size;
    }
    if (bgMode == 0) {
        InitBgFromTemplate(bgConfig, 1, &templates.t[0], 0);
        BgClearTilemapBufferAndCommit(bgConfig, 1);
        BgSetPosTextAndCommit(bgConfig, 1, BG_POS_OP_SET_X, 0);
        BgSetPosTextAndCommit(bgConfig, 1, BG_POS_OP_SET_Y, 0);
        InitBgFromTemplate(bgConfig, 2, &templates.t[1], 0);
        BgClearTilemapBufferAndCommit(bgConfig, 2);
        BgSetPosTextAndCommit(bgConfig, 2, BG_POS_OP_SET_X, 0);
        BgSetPosTextAndCommit(bgConfig, 2, BG_POS_OP_SET_Y, 0);
        InitBgFromTemplate(bgConfig, 3, &templates.t[2], 0);
        BgClearTilemapBufferAndCommit(bgConfig, 3);
        BgSetPosTextAndCommit(bgConfig, 3, BG_POS_OP_SET_X, 0);
        BgSetPosTextAndCommit(bgConfig, 3, BG_POS_OP_SET_Y, 0);
    } else {
        InitBgFromTemplate(bgConfig, 1, &templates.t[0], 0);
        BgClearTilemapBufferAndCommit(bgConfig, 1);
        BgSetPosTextAndCommit(bgConfig, 1, BG_POS_OP_SET_X, 0);
        BgSetPosTextAndCommit(bgConfig, 1, BG_POS_OP_SET_Y, 0);
        InitBgFromTemplate(bgConfig, 2, &templates.t[1], 2);
        BgClearTilemapBufferAndCommit(bgConfig, 2);
        BgSetPosTextAndCommit(bgConfig, 2, BG_POS_OP_SET_X, 0);
        BgSetPosTextAndCommit(bgConfig, 2, BG_POS_OP_SET_Y, 0);
        InitBgFromTemplate(bgConfig, 3, &templates.t[2], 2);
        BgClearTilemapBufferAndCommit(bgConfig, 3);
        BgSetPosTextAndCommit(bgConfig, 3, BG_POS_OP_SET_X, 0);
        BgSetPosTextAndCommit(bgConfig, 3, BG_POS_OP_SET_Y, 0);
    }
    G2_SetBG0Priority(0);
    GfGfx_EngineATogglePlanes(1, 1);
    bgTemplate4 = sRodata.ov80_0223D59C;
    InitBgFromTemplate(bgConfig, 4, &bgTemplate4, 0);
    BgClearTilemapBufferAndCommit(bgConfig, 4);
    BgSetPosTextAndCommit(bgConfig, 4, BG_POS_OP_SET_X, 0);
    BgSetPosTextAndCommit(bgConfig, 4, BG_POS_OP_SET_Y, 0);
}

static void FrontierMap_LoadPaletteData(FrontierMapInternal *map) {
    FrontierLaunchArgs *args;

    PaletteData_LoadNarc(map->paletteData, NARC_graphic_font, 7, HEAP_ID_101, PLTTBUF_MAIN_BG, 0x20, 0xE0);
    PaletteData_LoadNarc(map->paletteData, NARC_graphic_font, 8, HEAP_ID_101, PLTTBUF_MAIN_BG, 0x20, 0xD0);
    args = Frontier_GetLaunchArgs(map->work);
    LoadUserFrameGfx2(map->bgConfig, GF_BG_LYR_MAIN_1, 0x3E2, 0xB, Options_GetFrame(args->options), HEAP_ID_101);
    PaletteData_LoadPaletteSlotFromHardware(map->paletteData, PLTTBUF_MAIN_BG, 0xB0, 0x20);
    LoadUserFrameGfx1(map->bgConfig, GF_BG_LYR_MAIN_1, 0x3D9, 0xC, 0, HEAP_ID_101);
    PaletteData_LoadPaletteSlotFromHardware(map->paletteData, PLTTBUF_MAIN_BG, 0xC0, 0x20);
}

static void ov80_02238FA0(FrontierMapInternal *map) {
    NARC *narc = NARC_New(NARC_a_1_8_3, HEAP_ID_101);

    GfGfxLoader_LoadCharDataFromOpenNarc(narc, 0x81, map->bgConfig, GF_BG_LYR_SUB_0, 0, 0, TRUE, HEAP_ID_101);
    GfGfxLoader_LoadScrnDataFromOpenNarc(narc, 0x82, map->bgConfig, GF_BG_LYR_SUB_0, 0, 0, TRUE, HEAP_ID_101);
    PaletteData_LoadNarc(map->paletteData, NARC_a_1_8_3, 0xBE, HEAP_ID_101, PLTTBUF_SUB_BG, 0x20, 0);
    NARC_Delete(narc);
}

static void ov80_02239004(FrontierMapInternal *map, u8 scene, PlayerProfile *profile) {
    UnkTemplate_ov42_022293B8 tmpl;
    SpriteList *spriteList;
    s32 variant;
    s32 hasSub;
    NarcId narcId;
    NARC *narc;

    map->unk14 = ov42_02228010(0x20, HEAP_ID_101);
    map->unk18 = ov42_02227EE0(0x10, 0x10, HEAP_ID_101);
    ov42_02229394(&map->scroll);
    spriteList = SpriteManager_GetSpriteList(map->spriteManager);
    map->unk20 = ov42_02228F24(spriteList, map->paletteData, 0x20, ov80_0222A7EC(profile), 0, 1, HEAP_ID_101);
    tmpl = sRodata.ov80_0223D554;
    tmpl.narcId = (NarcId)ov80_0222ACA0(scene, 5);
    tmpl.fileId = ov80_0222ACA0(scene, 6);
    hasSub = ov80_0222ACA0(scene, 0xC);
    if (hasSub == 0) {
        map->unk24 = ov42_022293B8(SpriteSystem_GetRenderer(map->spriteSystem), map->bgConfig, &tmpl, HEAP_ID_101);
    }
    if (ov80_0222ACA0(scene, 9) != 0xFFFF) {
        tmpl.fileId = ov80_0222ACA0(scene, 9);
        tmpl.unk_1 = 2;
        tmpl.screenBase = 1;
        tmpl.charBase = 8;
        tmpl.priority = 1;
        if (hasSub == 0) {
            map->unk28 = ov42_022293B8(SpriteSystem_GetRenderer(map->spriteSystem), map->bgConfig, &tmpl, HEAP_ID_101);
        }
    }
    map->unk2C = ov42_02229A40(0x80, HEAP_ID_101);
    map->unk30 = (UnkStruct_ov42_022299C0 *)ov42_02229974(0x80, HEAP_ID_101);
    ov42_02227F48(map->unk18, sRodata.ov80_0223D654);
    variant = ov80_0222ACA0(scene, 0);
    narcId = (NarcId)ov80_0222ACA0(scene, 5);
    narc = NARC_New(narcId, HEAP_ID_101);
    GfGfxLoader_LoadCharDataFromOpenNarc(narc, ov80_0222ACA0(scene, 7), map->bgConfig, GF_BG_LYR_MAIN_3, 0, 0, TRUE, HEAP_ID_101);
    if (variant == 0) {
        PaletteData_LoadNarc(map->paletteData, narcId, ov80_0222ACA0(scene, 8), HEAP_ID_101, PLTTBUF_MAIN_BG, 0x160, 0);
    } else {
        NNSG2dPaletteData *plttData;
        void *buf = GfGfxLoader_GetPlttDataFromOpenNarc(narc, ov80_0222ACA0(scene, 8), &plttData, HEAP_ID_101);
        DC_FlushRange(plttData->pRawData, plttData->szByte);
        GX_BeginLoadBGExtPltt();
        GX_LoadBGExtPltt(plttData->pRawData, 0x6000, 0x2000);
        GX_EndLoadBGExtPltt();
        Heap_Free(buf);
    }
    PaletteData_FillPaletteInBuffer(map->paletteData, PLTTBUF_MAIN_BG, PLTTSEL_BOTH, 0, 0, 1);
    GfGfxLoader_LoadScrnDataFromOpenNarc(narc, ov80_0222ACA0(scene, 6), map->bgConfig, GF_BG_LYR_MAIN_3, 0, 0, TRUE, HEAP_ID_101);
    if (ov80_0222ACA0(scene, 9) != 0xFFFF) {
        GfGfxLoader_LoadCharDataFromOpenNarc(narc, ov80_0222ACA0(scene, 0xA), map->bgConfig, GF_BG_LYR_MAIN_2, 0, 0, TRUE, HEAP_ID_101);
        GfGfxLoader_LoadScrnDataFromOpenNarc(narc, ov80_0222ACA0(scene, 9), map->bgConfig, GF_BG_LYR_MAIN_2, 0, 0, TRUE, HEAP_ID_101);
        if (variant != 0) {
            NNSG2dPaletteData *plttData;
            void *buf = GfGfxLoader_GetPlttDataFromOpenNarc(narc, ov80_0222ACA0(scene, 0xB), &plttData, HEAP_ID_101);
            DC_FlushRange(plttData->pRawData, plttData->szByte);
            GX_BeginLoadBGExtPltt();
            GX_LoadBGExtPltt(plttData->pRawData, 0x4000, 0x2000);
            GX_EndLoadBGExtPltt();
            Heap_Free(buf);
        }
    }
    ScheduleBgTilemapBufferTransfer(map->bgConfig, 3);
    NARC_Delete(narc);
}

static void ov80_0223927C(FrontierMapInternal *map) {
    int i;
    FrontierMapEntry *entry;

    entry = sub_02096868(map->work);
    for (i = 0; i < 0x20; i++, entry++) {
        if (entry->unk0 != NULL) {
            ov42_02228100(entry->unk0);
            GF_ASSERT(entry->unk38 == 0);
        }
    }
    ov42_02228050(map->unk14);
    ov42_02227F28(map->unk18);
    ov42_02228F94(map->unk20);
    if (map->unk24 != NULL) {
        ov42_0222940C(map->unk24);
    }
    if (map->unk28 != NULL) {
        ov42_0222940C(map->unk28);
    }
    ov42_02229A78(map->unk2C);
    ov42_022299AC((u32 *)map->unk30);
}

static GF3DVramMan *ov80_022392DC(enum HeapID heapId) {
    return GF_3DVramMan_Create(heapId, 0, 1, 0, 1, ov80_022392F8);
}

static void ov80_022392F8(void) {
    GfGfx_EngineATogglePlanes(1, 1);
    reg_G2_BG0CNT = (reg_G2_BG0CNT & ~3) | 1;
    reg_G3X_DISP3DCNT &= 0xFFFFCFFD;
    reg_G3X_DISP3DCNT = (reg_G3X_DISP3DCNT & 0xFFFFCFFF) | 0x10;
    reg_G3X_DISP3DCNT &= 0x0000CFFB;
    reg_G3X_DISP3DCNT = (reg_G3X_DISP3DCNT & 0xFFFFCFFF) | 8;
    reg_G3X_DISP3DCNT &= 0x0000CFDF;
    G3X_SetFog(FALSE, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
    G3X_SetClearColor(0, 0, 0x7FFF, 0x3F, 0);
    *(vu32 *)0x04000580 = 0xBFFF0000;
}

static void ov80_0223937C(GF3DVramMan *vramMan) {
    GF_3DVramMan_Delete(vramMan);
}

static void ov80_02239384(FrontierMapInternal *map) {
    map->spriteSystem = SpriteSystem_Alloc(HEAP_ID_101);
    SpriteSystem_Init(map->spriteSystem, &sRodata.ov80_0223D5B8, &sRodata.ov80_0223D570, 0x20);
    G2dRenderer_SetObjCharTransferReservedRegion(NNS_G2D_VRAM_TYPE_2DMAIN, GX_OBJVRAMMODE_CHAR_1D_128K);
    G2dRenderer_SetPlttTransferReservedRegion(NNS_G2D_VRAM_TYPE_2DMAIN);
    map->spriteManager = SpriteManager_New(map->spriteSystem);
    SpriteSystem_InitSprites(map->spriteSystem, map->spriteManager, 0x80);
    SpriteSystem_InitManagerWithCapacities(map->spriteSystem, map->spriteManager, (SpriteResourceCountsListUnion *)&sRodata.ov80_0223D584);
    G2dRenderer_SetSubSurfaceCoords(SpriteSystem_GetRenderer(map->spriteSystem), 0, 0x200000);
}

#ifdef NONMATCHING
static void ov80_022393E8(FrontierMapInternal *map) {
    int i;

    for (i = 0; i < 8; i++) {
        if (map->spriteData.sprites[i] != NULL) {
            ov80_02239BE8(map->spriteData.sprites[i]);
        }
    }
    for (i = 0; i < 8; i++) {
        if (map->spriteData.resIds[i] != 0xFFFF) {
            ov80_02239B7C(map->spriteManager, map->spriteData.resIds[i]);
        }
    }
    for (i = 0; i < 4; i++) {
        if (map->unk80[i] != NULL) {
            Sprite_DeleteAndFreeResources(map->unk80[i]);
            SpriteManager_UnloadCharObjById(map->spriteManager, 0xC350 + i);
            SpriteManager_UnloadPlttObjById(map->spriteManager, 0xC350 + i);
            SpriteManager_UnloadCellObjById(map->spriteManager, 0xC350 + i);
            SpriteManager_UnloadAnimObjById(map->spriteManager, 0xC350 + i);
        }
    }
    SpriteSystem_FreeResourcesAndManager(map->spriteSystem, map->spriteManager);
    SpriteSystem_Free(map->spriteSystem);
}
#else
// clang-format off
// NONMATCHING: retail reloads 0xC350 from the pool for three of the four
// Unload*ObjById ids and keeps it in r7 only for the last; MWCC hoists one
// shared copy for all four. Transcribed asm.
static asm void ov80_022393E8(FrontierMapInternal *map) {
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r6, #0
	add r4, r5, #0
_022393F0:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _022393FA
	bl ov80_02239BE8
_022393FA:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #8
	blt _022393F0
	ldr r7, =0x0000FFFF
	mov r6, #0
	add r4, r5, #0
_02239408:
	add r0, r4, #0
	add r0, #0x70
	ldrh r1, [r0, #0]
	cmp r1, r7
	beq _02239418
	ldr r0, [r5, #0x38]
	bl ov80_02239B7C
_02239418:
	add r6, r6, #1
	add r4, r4, #2
	cmp r6, #8
	blt _02239408
	ldr r7, =0x0000C350
	mov r4, #0
	add r6, r5, #0
_02239426:
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0223945A
	bl Sprite_DeleteAndFreeResources
	ldr r1, =0x0000C350
	ldr r0, [r5, #0x38]
	add r1, r4, r1
	bl SpriteManager_UnloadCharObjById
	ldr r1, =0x0000C350
	ldr r0, [r5, #0x38]
	add r1, r4, r1
	bl SpriteManager_UnloadPlttObjById
	ldr r1, =0x0000C350
	ldr r0, [r5, #0x38]
	add r1, r4, r1
	bl SpriteManager_UnloadCellObjById
	ldr r0, [r5, #0x38]
	add r1, r4, r7
	bl SpriteManager_UnloadAnimObjById
_0223945A:
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #4
	blt _02239426
	ldr r0, [r5, #0x34]
	ldr r1, [r5, #0x38]
	bl SpriteSystem_FreeResourcesAndManager
	ldr r0, [r5, #0x34]
	bl SpriteSystem_Free
	pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on
#endif

void ov80_0223947C(FrontierMapInternal *map, const FrontierMapSceneEntry *entry) {
    FrontierMapSceneEntry *table;
    int i;

    table = sub_02096864(map->work);
    for (i = 0; i < 0x18; i++) {
        if (entry->id == table[i].id) {
            return;
        }
    }
    for (i = 0; i < 0x18; i++) {
        if (table[i].id == 0xFFFF) {
            break;
        }
    }
    GF_ASSERT(i != 0x18);
    table[i] = *entry;
    ov42_02228FE0(map->unk20, entry->id, entry->val, HEAP_ID_101);
}

void ov80_022394D8(FrontierMapInternal *map, u32 id) {
    FrontierMapSceneEntry *table;
    int i;

    table = sub_02096864(map->work);
    for (i = 0; i < 0x18; i++) {
        if (id == table[i].id) {
            ov42_02229004(map->unk20, id);
            table[i].id = 0xFFFF;
            return;
        }
    }
}

UnkStruct_ov42_02228110 *ov80_02239510(FrontierMapInternal *map, const FrontierMapSpriteParam *param, int slot) {
    FrontierMapObjParam objParam;
    UnkStruct_ov42_02228110 *obj;
    UnkStruct_ov42_0222903C *view;
    FrontierMapEntry *entries;

    entries = sub_02096868(map->work);
    if (slot == -1) {
        slot = 0;
        for (; slot < 0x20; slot++, entries++) {
            if (entries->unk0 == NULL) {
                break;
            }
        }
        GF_ASSERT(slot != 0x20);
    }
    objParam.unk0 = param->unk6;
    objParam.unk2 = param->unk8;
    objParam.unk4 = param->unk4;
    objParam.unk6 = param->unk2;
    objParam.unk8 = param->unkA;
    objParam.unkA = param->unk0;
    obj = ov42_022280B8(map->unk14, (UnkStruct_ov42_02122667 *)&objParam);
    view = ov42_0222903C(map->unk20, obj, 0, HEAP_ID_101);
    ov42_02229200(view, param->unkB);
    ov80_02239914(map->work, slot, obj, view, param);
    return obj;
}

void ov80_02239590(FrontierMapInternal *map, UnkStruct_ov42_02228110 *target) {
    FrontierMapEntry *entries;
    int i;

    entries = sub_02096868(map->work);
    for (i = 0; i < 0x20; i++) {
        if (entries[i].unk0 == target) {
            ov42_02228100(entries[i].unk0);
            ov42_022290C4(entries[i].unk4);
            GF_ASSERT(entries[i].unk38 == 0);
            MI_CpuFill8(&entries[i], 0, sizeof(FrontierMapEntry));
            entries[i].unk8.unk4 = 0xFFFF;
            return;
        }
    }
}

void ov80_022395E8(FrontierMapInternal *map, u32 id, UnkStruct_ov42_02228110 **out0, UnkStruct_ov42_0222903C **out1) {
    FrontierMapEntry *entries;
    int i;

    entries = sub_02096868(map->work);
    for (i = 0; i < 0x20; i++) {
        if (id == entries[i].unk8.unk4) {
            if (out0 != NULL) {
                *out0 = entries[i].unk0;
            }
            if (out1 != NULL) {
                *out1 = entries[i].unk4;
            }
            return;
        }
    }
    GF_ASSERT(FALSE);
}

void ov80_0223962C(FrontierMapInternal *map, u16 id) {
    int i;

    for (i = 0; i < 8; i++) {
        if (map->spriteData.resIds[i] == 0xFFFF) {
            map->spriteData.resIds[i] = id;
            return;
        }
    }
    GF_ASSERT(FALSE);
}

void ov80_0223965C(FrontierMapInternal *map, u16 id) {
    int i;

    for (i = 0; i < 8; i++) {
        if (id == map->spriteData.resIds[i]) {
            map->spriteData.resIds[i] = 0xFFFF;
            return;
        }
    }
}

ManagedSprite *ov80_0223968C(FrontierMapInternal *map, u16 slot, u16 a2) {
    ManagedSprite *sprite;

    GF_ASSERT(slot < 8);
    GF_ASSERT(map->spriteData.sprites[slot] == NULL);
    sprite = ov80_02239BB8(map->spriteSystem, map->spriteManager, a2);
    map->spriteData.sprites[slot] = sprite;
    map->spriteData.ids[slot] = a2;
    ov80_02239708(map, slot, 0);
    return sprite;
}

void ov80_022396D8(FrontierMapInternal *map, u32 slot) {
    GF_ASSERT(slot < 8);
    GF_ASSERT(map->spriteData.sprites[slot] != NULL);
    ov80_02239BE8(map->spriteData.sprites[slot]);
    map->spriteData.sprites[slot] = NULL;
}

ManagedSprite *ov80_02239700(FrontierMapInternal *map, u32 slot) {
    return map->spriteData.sprites[slot];
}

void ov80_02239708(FrontierMapInternal *map, u16 slot, int on) {
    if (on == 1) {
        map->spriteData.flags |= 1 << slot;
    } else {
        map->spriteData.flags &= (1 << slot) ^ 0xFFFFFFFF;
    }
}

u32 ov80_02239734(FrontierMapInternal *map, u16 slot) {
    return (map->spriteData.flags >> slot) & 1;
}

static void ov80_02239740(FrontierMapInternal *map) {
    int i;
    FrontierMapSaved *saved = sub_02096878(map->work);
    FrontierMapSpriteData *spriteData = &map->spriteData;

    for (i = 0; i < 8; i++) {
        if (spriteData->resIds[i] != 0xFFFF) {
            saved->ids[i] = spriteData->resIds[i];
            i++;
        }
    }

    i = 0;

    for (i = 0; i < 8; i++) {
        if (spriteData->sprites[i] != NULL) {
            saved->sprites[i].unk5 = ManagedSprite_GetActiveAnim(spriteData->sprites[i]);
            saved->sprites[i].frame = ManagedSprite_GetAnimationFrame(spriteData->sprites[i]);
            saved->sprites[i].flag13 = ov80_02239734(map, i);
            saved->sprites[i].draw = ManagedSprite_GetDrawFlag(spriteData->sprites[i]);
            saved->sprites[i].unk4 = spriteData->ids[i];
            ManagedSprite_GetPositionXY(spriteData->sprites[i], &saved->sprites[i].x, &saved->sprites[i].y);
            saved->sprites[i].valid = 1;
        }
    }
}

static void ov80_02239828(FrontierMapInternal *map) {
    FrontierMapSaved *saved;
    NARC *narc;
    ManagedSprite *sprite;
    int i;

    saved = sub_02096878(map->work);
    narc = NARC_New(NARC_a_1_8_4, HEAP_ID_101);
    for (i = 0; i < 8; i++) {
        if (saved->ids[i] != 0xFFFF) {
            ov80_02239AF8(map->spriteSystem, map->spriteManager, narc, map->paletteData, saved->ids[i]);
            ov80_0223962C(map, saved->ids[i]);
        }
    }
    for (i = 0; i < 8; i++) {
        if (saved->sprites[i].valid == 1) {
            sprite = ov80_0223968C(map, i, saved->sprites[i].unk4);
            ManagedSprite_SetPositionXY(sprite, saved->sprites[i].x, saved->sprites[i].y);
            ManagedSprite_SetDrawFlag(sprite, saved->sprites[i].draw);
            ov80_02239708(map, i, saved->sprites[i].flag13);
            ManagedSprite_SetAnim(sprite, saved->sprites[i].unk5);
            ManagedSprite_SetAnimationFrame(sprite, saved->sprites[i].frame);
        }
    }
    NARC_Delete(narc);
    sub_02096884(map->work);
}

void ov80_022398E4(FrontierMapInternal *map, s16 *a, s16 *b) {
    *b = ov42_022293A8(&map->scroll);
    *a = ov42_022293B0(&map->scroll);
}

static void ov80_02239900(FrontierMapEntry *entry, FrontierMapSpriteParam *out) {
    *out = entry->unk8;
}

static void ov80_02239914(void *work, int slot, UnkStruct_ov42_02228110 *a, UnkStruct_ov42_0222903C *b, const FrontierMapSpriteParam *param) {
    FrontierMapEntry *entry = sub_0209686C(work, slot);

    entry->unk0 = a;
    entry->unk4 = b;
    entry->unk8 = *param;
}

UnkStruct_02239938 *ov80_02239938(void *work, u32 id) {
    FrontierMapEntry *entry;
    int i;

    entry = sub_02096868(work);
    for (i = 0; i < 0x20; i++, entry++) {
        if (entry->unk0 != NULL && entry->unk8.unk4 == id) {
            return (UnkStruct_02239938 *)entry;
        }
    }
    GF_ASSERT(FALSE);
    return NULL;
}
