#include "global.h"

#include "sprite_system.h"

typedef struct Ov18_021F1FDC {
    u8 filler_000[0x668];
    SpriteSystem *spriteSystem;
    SpriteManager *spriteManager;
    ManagedSprite *sprites[1];
    ManagedSprite *spritesB[1];
    ManagedSprite *spritesC[1];
    ManagedSprite *spritesD[1];
} Ov18_021F1FDC;

extern const ManagedSpriteTemplate ov18_021FA41C;

void ov18_021F1FDC(Ov18_021F1FDC *a0, int idx) {
    ManagedSpriteTemplate template = ov18_021FA41C;

    a0->sprites[idx] = SpriteSystem_NewSpriteWithYOffset(a0->spriteSystem, a0->spriteManager, &template, FX32_CONST(512));
    template.resIdList[GF_GFX_RES_TYPE_CHAR] = 0xC595;
    a0->spritesC[idx] = SpriteSystem_NewSpriteWithYOffset(a0->spriteSystem, a0->spriteManager, &template, FX32_CONST(512));
    template.x += 49;
    template.resIdList[GF_GFX_RES_TYPE_CHAR] = 0xC594;
    a0->spritesB[idx] = SpriteSystem_NewSpriteWithYOffset(a0->spriteSystem, a0->spriteManager, &template, FX32_CONST(512));
    template.resIdList[GF_GFX_RES_TYPE_CHAR] = 0xC596;
    a0->spritesD[idx] = SpriteSystem_NewSpriteWithYOffset(a0->spriteSystem, a0->spriteManager, &template, FX32_CONST(512));
}
