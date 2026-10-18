#include "global.h"

#include "sprite_system.h"

typedef struct Ov96_021EC70C {
    u8 filler_00[0x18];
    SpriteSystem *spriteSystem;
    SpriteManager *spriteManager;
    ManagedSprite *sprites[26];
    u8 filler_88[0x29];
    u8 unkB1;
} Ov96_021EC70C;

void ov96_021EC70C(Ov96_021EC70C *a0) {
    int i;
    ManagedSpriteTemplate template = { 0 };

    for (i = 0; i < 2; i++) {
        int idx = i + 24;

        template.resIdList[GF_GFX_RES_TYPE_CHAR] = i + 0x6B;
        template.resIdList[GF_GFX_RES_TYPE_PLTT] = i + 0x6B;
        template.resIdList[GF_GFX_RES_TYPE_CELL] = 0x67;
        template.resIdList[GF_GFX_RES_TYPE_ANIM] = 0x67;
        template.vram = NNS_G2D_VRAM_TYPE_2DMAIN;
        template.bgPriority = 0;
        template.drawPriority = 2;
        template.x = i * 64 + 96;
        template.y = 56;
        if (a0->unkB1 < 5) {
            template.x = 128;
        }
        a0->sprites[idx] = SpriteSystem_NewSpriteWithYOffset(a0->spriteSystem, a0->spriteManager, &template, FX32_CONST(524));
        ManagedSprite_SetAnimateFlag(a0->sprites[idx], TRUE);
        ManagedSprite_SetDrawFlag(a0->sprites[idx], FALSE);
    }
}
