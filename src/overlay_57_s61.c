#include "global.h"

#include "sprite_system.h"

typedef struct Ov57SpritePos {
    int x;
    int y;
    int flip;
} Ov57SpritePos;

typedef struct Ov57SpritePositions {
    Ov57SpritePos pos[4];
} Ov57SpritePositions;

typedef struct Ov57_02239184 {
    u8 filler_000[0xDC];
    SpriteSystem *spriteSystem;
    SpriteManager *spriteManager;
    u8 filler_0E4[0x258];
    ManagedSprite *sprites[4];
} Ov57_02239184;

extern const Ov57SpritePositions ov57_0223BE18;

// Called as matched: this file passed the flip mode as an int.
#define ManagedSprite_SetFlipMode(sprite, mode) ((void (*)(ManagedSprite *, int))ManagedSprite_SetFlipMode)(sprite, mode)

void ov57_02239184(Ov57_02239184 *a0) {
    ManagedSpriteTemplate template;
    Ov57SpritePositions positions = ov57_0223BE18;
    int i;

    for (i = 0; i < 4; i++) {
        template.x = positions.pos[i].x;
        template.y = positions.pos[i].y;
        template.z = 0;
        template.animation = 0;
        template.drawPriority = 40;
        template.pal = 2;
        template.vram = NNS_G2D_VRAM_TYPE_2DSUB;
        template.bgPriority = 1;
        template.vramTransfer = FALSE;
        template.resIdList[GF_GFX_RES_TYPE_CHAR] = 45000;
        template.resIdList[GF_GFX_RES_TYPE_PLTT] = 26004;
        template.resIdList[GF_GFX_RES_TYPE_CELL] = 47000;
        template.resIdList[GF_GFX_RES_TYPE_ANIM] = 48000;
        template.resIdList[GF_GFX_RES_TYPE_MCEL] = -1;
        template.resIdList[GF_GFX_RES_TYPE_MANM] = -1;
        a0->sprites[i] = SpriteSystem_NewSprite(a0->spriteSystem, a0->spriteManager, &template);
        ManagedSprite_SetFlipMode(a0->sprites[i], positions.pos[i].flip);
    }
}
