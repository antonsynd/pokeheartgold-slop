#include "global.h"
#include "error_handling.h"
#include "filesystem.h"
#include "heap.h"
#include "obj_pltt_transfer.h"
#include "palette.h"
#include "pokemon.h"
#include "sprite.h"
#include "sprite_system.h"
#include "unk_02013FDC.h"

typedef struct UnkStruct_ov80_0222F030_Gfx {
    u8 filler_00[4];
    PaletteData *plttData;
    u8 filler_08[0x34 - 0x08];
    SpriteSystem *spriteSystem;
    SpriteManager *spriteManager;
    u8 filler_3C[0x80 - 0x3C];
    void *sprites[1];
} UnkStruct_ov80_0222F030_Gfx;

typedef struct UnkStruct_ov80_0222F030_Sprite {
    Sprite *sprite;
} UnkStruct_ov80_0222F030_Sprite;

typedef struct UnkStruct_ov80_0222F030_Template {
    s16 x;
    s16 y;
    s16 z;
    s16 animIdx;
    int priority;
    int plttIdx;
    int vramType;
    int resources[6];
    int bgPriority;
    int vramTransfer;
} UnkStruct_ov80_0222F030_Template;

void ov80_0222F030(UnkStruct_ov80_0222F030_Gfx *gfx, Pokemon *mon, enum HeapID heapID, int resId, int x, int y, int priority, int bgPriority, int blend, u16 blendTarget) {
    SpriteSystem *spriteSystem = gfx->spriteSystem;
    SpriteManager *spriteManager = gfx->spriteManager;
    PaletteData *plttData = gfx->plttData;
    PokepicTemplate pokepic;
    void *buffer;
    ManagedSprite *sprite;
    NARC *narc;
    UnkStruct_ov80_0222F030_Template tmpl;
    int i;
    u32 personality, species;
    NNSG2dImageProxy *imageProxy;
    NNSG2dImagePaletteProxy *paletteProxy;
    int paletteOffset;

    narc = NARC_New((NarcId)8, heapID);
    SpriteSystem_LoadCharResObjFromOpenNarc(spriteSystem, spriteManager, narc, 0x70, FALSE, 1, resId);
    SpriteSystem_LoadPaletteBufferFromOpenNarc(plttData, (PaletteBufferId)2, spriteSystem, spriteManager, narc, 0x6F, FALSE, 1, 1, resId);
    SpriteSystem_LoadCellResObjFromOpenNarc(spriteSystem, spriteManager, narc, 0x71, FALSE, resId);
    SpriteSystem_LoadAnimResObjFromOpenNarc(spriteSystem, spriteManager, narc, 0x72, FALSE, resId);
    NARC_Delete(narc);

    MI_CpuFill8(&tmpl, 0, sizeof(tmpl));
    tmpl.x = x;
    tmpl.y = y;
    tmpl.z = 0;
    tmpl.animIdx = 0;
    tmpl.priority = priority;
    tmpl.plttIdx = 0;
    tmpl.vramType = 1;
    tmpl.bgPriority = bgPriority;
    tmpl.vramTransfer = 0;
    for (i = 0; i < 6; i++) {
        tmpl.resources[i] = resId;
    }
    sprite = SpriteSystem_NewSprite(spriteSystem, spriteManager, (const ManagedSpriteTemplate *)&tmpl);
    ManagedSprite_TickFrame(sprite);

    buffer = Heap_Alloc(heapID, 0xC80);
    personality = GetMonData(mon, 0, NULL);
    species = GetMonData(mon, 5, NULL);
    GetPokemonSpriteCharAndPlttNarcIds(&pokepic, mon, 2);
    sub_02014494((NarcId)pokepic.narcID, pokepic.charDataID, heapID, 0, 0, 10, 10, buffer, personality, FALSE, 2, species);

    imageProxy = Sprite_GetImageProxy(((UnkStruct_ov80_0222F030_Sprite *)sprite)->sprite);
    DC_FlushRange(buffer, 4);
    GX_LoadOBJ(buffer, *(u32 *)((u8 *)imageProxy + 4), 0xC80);

    paletteProxy = Sprite_GetPaletteProxy(((UnkStruct_ov80_0222F030_Sprite *)sprite)->sprite);
    paletteOffset = ObjPlttTransfer_GetPaletteVramOffset(paletteProxy, (NNS_G2D_VRAM_TYPE)1) << 4;
    PaletteData_LoadNarc(plttData, (NarcId)pokepic.narcID, pokepic.palDataID, heapID, (PaletteBufferId)2, 0x20, paletteOffset);

    if (blend > 0) {
        PaletteData_BlendPalette(plttData, (PaletteBufferId)2, paletteOffset, 0x10, blend, blendTarget);
    }

    Heap_Free(buffer);

    if (gfx->sprites[resId - 50000] != NULL) {
        GF_AssertFail();
    }
    gfx->sprites[resId - 50000] = sprite;
}
