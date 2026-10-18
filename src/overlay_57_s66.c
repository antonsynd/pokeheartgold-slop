#include "global.h"

#include "filesystem.h"
#include "palette.h"
#include "sprite_system.h"

typedef struct CapsuleSprite {
    u8 filler_0[4];
    int animIdx;
    ManagedSprite *sprite;
} CapsuleSprite;

typedef struct CapsuleAppManager {
    u8 filler_000[0xDC];
    SpriteSystem *spriteSystem;
    SpriteManager *spriteManager;
    u8 filler_0E4[4];
    PaletteData *paletteData;
    u8 filler_0EC[0x1A0];
    CapsuleSprite capsuleSprites[12];
    ManagedSprite *cursor[2];
    u8 filler_324[0xC8];
    int capsuleIndex;
} CapsuleAppManager;

void ov57_0223927C(SpriteSystem *spriteSystem, SpriteManager *spriteManager, PaletteData *paletteData, int charId, int plttId, int cellId, int animId, int vram, int a8, int a9, NARC *narc);
void ov57_02238DAC(int index, s16 *x, s16 *y);

// Called as matched
#define ManagedSprite_SetDrawPriority(sprite, priority) ((void (*)(ManagedSprite *, int))ManagedSprite_SetDrawPriority)(sprite, priority)

void ov57_022392F4(CapsuleAppManager *appMan, NARC *narc) {
    ov57_0223927C(appMan->spriteSystem, appMan->spriteManager, appMan->paletteData, 17, 3, 19, 18, NNS_G2D_VRAM_TYPE_2DMAIN, 2, 1, narc);
    ov57_0223927C(appMan->spriteSystem, appMan->spriteManager, appMan->paletteData, 32, 5, 34, 33, NNS_G2D_VRAM_TYPE_2DMAIN, 2, 1, narc);
    ManagedSpriteTemplate spriteTemplate;

    for (int i = 0; i < 12; i++) {
        spriteTemplate.x = 0;
        spriteTemplate.y = 0;
        spriteTemplate.z = 0;
        spriteTemplate.animation = appMan->capsuleSprites[i].animIdx;
        spriteTemplate.drawPriority = 40 - i;
        spriteTemplate.pal = 0;
        spriteTemplate.vram = NNS_G2D_VRAM_TYPE_2DMAIN;
        spriteTemplate.bgPriority = 2;
        spriteTemplate.vramTransfer = FALSE;
        spriteTemplate.resIdList[0] = 11017;
        spriteTemplate.resIdList[1] = 11003;
        spriteTemplate.resIdList[2] = 11019;
        spriteTemplate.resIdList[3] = 11018;
        spriteTemplate.resIdList[4] = -1;
        spriteTemplate.resIdList[5] = -1;

        appMan->capsuleSprites[i].sprite = SpriteSystem_NewSprite(appMan->spriteSystem, appMan->spriteManager, &spriteTemplate);
        s16 x, y;

        ov57_02238DAC(i, &x, &y);
        ManagedSprite_SetPositionXY(appMan->capsuleSprites[i].sprite, x, y);
    }

    spriteTemplate.x = 0;
    spriteTemplate.y = 0;
    spriteTemplate.z = 0;
    spriteTemplate.animation = 0;
    spriteTemplate.drawPriority = 20;
    spriteTemplate.pal = 0;
    spriteTemplate.vram = NNS_G2D_VRAM_TYPE_2DMAIN;
    spriteTemplate.bgPriority = 2;
    spriteTemplate.vramTransfer = FALSE;
    spriteTemplate.resIdList[0] = 11032;
    spriteTemplate.resIdList[1] = 11005;
    spriteTemplate.resIdList[2] = 11034;
    spriteTemplate.resIdList[3] = 11033;
    spriteTemplate.resIdList[4] = -1;
    spriteTemplate.resIdList[5] = -1;

    appMan->cursor[0] = SpriteSystem_NewSprite(appMan->spriteSystem, appMan->spriteManager, &spriteTemplate);
    appMan->cursor[1] = SpriteSystem_NewSprite(appMan->spriteSystem, appMan->spriteManager, &spriteTemplate);

    s16 x, y;

    ov57_02238DAC(appMan->capsuleIndex, &x, &y);
    ManagedSprite_SetPositionXY(appMan->cursor[0], x, y);
    ManagedSprite_SetPositionXY(appMan->cursor[1], x, y);
    ManagedSprite_SetDrawPriority(appMan->cursor[1], 25);
    ManagedSprite_SetAnim(appMan->cursor[0], 0);
    ManagedSprite_SetAnim(appMan->cursor[1], 0);
}
