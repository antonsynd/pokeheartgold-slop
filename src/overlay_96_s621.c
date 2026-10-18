#include "global.h"

#include "sprite_system.h"

typedef struct Ov96_021F85A0 {
    u8 filler_00[0x94];
    SpriteSystem *spriteSystem;
    SpriteManager *spriteManager;
    ManagedSprite *sprite;
} Ov96_021F85A0;

void ov96_021F85A0(Ov96_021F85A0 *a0) {
    ManagedSpriteTemplate template = { 0 };

    template.resIdList[GF_GFX_RES_TYPE_CHAR] = 1000;
    template.resIdList[GF_GFX_RES_TYPE_PLTT] = 1000;
    template.resIdList[GF_GFX_RES_TYPE_CELL] = 1000;
    template.resIdList[GF_GFX_RES_TYPE_ANIM] = 1000;
    template.vram = NNS_G2D_VRAM_TYPE_2DSUB;
    template.bgPriority = 1;
    template.x = 224;
    template.y = 112;
    a0->sprite = SpriteSystem_NewSprite(a0->spriteSystem, a0->spriteManager, &template);
}
