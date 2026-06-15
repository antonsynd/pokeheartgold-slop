#include "overlay_80_02239AF8.h"

#include "global.h"

#include "sprite.h"
#include "unk_0200A090.h"

static const ManagedSpriteTemplate ov80_0223DA54[] = {
    { 0, 0, 0, 0, 100, 0, NNS_G2D_VRAM_TYPE_2DMAIN, { 0x21, 0x3C, 0x23, 0x22, -1, -1 }, 1, 0 },
    { 0, 0, 0, 0, 100, 0, NNS_G2D_VRAM_TYPE_2DMAIN, { 0x21, 0x3C, 0x23, 0x22, -1, -1 }, 1, 0 },
    { 0, 0, 0, 0, 100, 0, NNS_G2D_VRAM_TYPE_2DMAIN, { 0x18, 0x3A, 0x1A, 0x19, -1, -1 }, 1, 0 },
    { 0, 0, 0, 0, 100, 0, NNS_G2D_VRAM_TYPE_2DMAIN, { 0x1B, 0x3B, 0x1D, 0x1C, -1, -1 }, 1, 0 },
};

void ov80_02239AF8(SpriteSystem *spriteSystem, SpriteManager *spriteManager, NARC *narc, PaletteData *plttData, u16 index) {
    const ManagedSpriteTemplate *template;
    GF_ASSERT(index < 4);
    template = &ov80_0223DA54[index];
    SpriteSystem_LoadCharResObjFromOpenNarc(spriteSystem, spriteManager, narc, template->resIdList[GF_GFX_RES_TYPE_CHAR], TRUE, 1, template->resIdList[GF_GFX_RES_TYPE_CHAR]);
    SpriteSystem_LoadPaletteBufferFromOpenNarc(plttData, PLTTBUF_MAIN_OBJ, spriteSystem, spriteManager, narc, template->resIdList[GF_GFX_RES_TYPE_PLTT], FALSE, 1, 1, template->resIdList[GF_GFX_RES_TYPE_PLTT]);
    SpriteSystem_LoadCellResObjFromOpenNarc(spriteSystem, spriteManager, narc, template->resIdList[GF_GFX_RES_TYPE_CELL], TRUE, template->resIdList[GF_GFX_RES_TYPE_CELL]);
    SpriteSystem_LoadAnimResObjFromOpenNarc(spriteSystem, spriteManager, narc, template->resIdList[GF_GFX_RES_TYPE_ANIM], TRUE, template->resIdList[GF_GFX_RES_TYPE_ANIM]);
}

void ov80_02239B7C(SpriteManager *spriteManager, u32 index) {
    const ManagedSpriteTemplate *template;
    GF_ASSERT(index < 4);
    template = &ov80_0223DA54[index];
    SpriteManager_UnloadCharObjById(spriteManager, template->resIdList[GF_GFX_RES_TYPE_CHAR]);
    SpriteManager_UnloadPlttObjById(spriteManager, template->resIdList[GF_GFX_RES_TYPE_PLTT]);
    SpriteManager_UnloadCellObjById(spriteManager, template->resIdList[GF_GFX_RES_TYPE_CELL]);
    SpriteManager_UnloadAnimObjById(spriteManager, template->resIdList[GF_GFX_RES_TYPE_ANIM]);
}

ManagedSprite *ov80_02239BB8(SpriteSystem *spriteSystem, SpriteManager *spriteManager, u32 index) {
    ManagedSprite *managedSprite;
    GF_ASSERT(index < 4);
    managedSprite = SpriteSystem_NewSprite(spriteSystem, spriteManager, &ov80_0223DA54[index]);
    Sprite_TickFrame(managedSprite->sprite);
    return managedSprite;
}

void ov80_02239BE8(ManagedSprite *managedSprite) {
    Sprite_DeleteAndFreeResources(managedSprite);
}
