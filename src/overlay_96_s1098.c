#include "global.h"

#include "sprite_system.h"

typedef struct Ov96_0220EB3C {
    u8 filler_00[0xC];
    SpriteSystem *spriteSystem;
    SpriteManager *spriteManager;
} Ov96_0220EB3C;

void ov96_0220EB3C(Ov96_0220EB3C *a0) {
    SpriteSystem *spriteSystem = a0->spriteSystem;
    SpriteManager *spriteManager = a0->spriteManager;
    NNS_G2D_VRAM_TYPE vram;

    GF_ASSERT(spriteSystem != NULL);
    GF_ASSERT(spriteManager != NULL);

    vram = NNS_G2D_VRAM_TYPE_2DMAIN;
    SpriteSystem_LoadCharResObj(spriteSystem, spriteManager, NARC_a_2_3_5, 22, TRUE, vram, 10000);
    SpriteSystem_LoadPlttResObj(spriteSystem, spriteManager, NARC_a_2_3_5, 19, FALSE, 2, vram, 10000);
    SpriteSystem_LoadCellResObj(spriteSystem, spriteManager, NARC_a_2_3_5, 21, TRUE, 10000);
    SpriteSystem_LoadAnimResObj(spriteSystem, spriteManager, NARC_a_2_3_5, 20, TRUE, 10000);

    vram = NNS_G2D_VRAM_TYPE_2DSUB;
    SpriteSystem_LoadCharResObj(spriteSystem, spriteManager, NARC_a_2_3_5, 26, TRUE, vram, 10001);
    SpriteSystem_LoadPlttResObj(spriteSystem, spriteManager, NARC_a_2_3_5, 23, FALSE, 4, vram, 10001);
    SpriteSystem_LoadCellResObj(spriteSystem, spriteManager, NARC_a_2_3_5, 25, TRUE, 10001);
    SpriteSystem_LoadAnimResObj(spriteSystem, spriteManager, NARC_a_2_3_5, 24, TRUE, 10001);

    vram = NNS_G2D_VRAM_TYPE_2DMAIN;
    SpriteSystem_LoadCharResObj(spriteSystem, spriteManager, NARC_a_2_3_5, 18, TRUE, vram, 10002);
    SpriteSystem_LoadPlttResObj(spriteSystem, spriteManager, NARC_a_2_3_5, 15, FALSE, 1, vram, 10002);

    vram = NNS_G2D_VRAM_TYPE_2DSUB;
    SpriteSystem_LoadCharResObj(spriteSystem, spriteManager, NARC_a_2_3_5, 18, TRUE, vram, 10003);
    SpriteSystem_LoadPlttResObj(spriteSystem, spriteManager, NARC_a_2_3_5, 15, FALSE, 1, vram, 10003);
    SpriteSystem_LoadCellResObj(spriteSystem, spriteManager, NARC_a_2_3_5, 17, TRUE, 10002);
    SpriteSystem_LoadAnimResObj(spriteSystem, spriteManager, NARC_a_2_3_5, 16, TRUE, 10002);
}
