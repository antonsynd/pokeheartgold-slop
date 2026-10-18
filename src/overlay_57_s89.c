#include "global.h"

#include "sprite_system.h"
#include "touchscreen.h"

typedef struct CapsulePageSprites {
    ManagedSprite *sprites[13];
} CapsulePageSprites;

typedef struct CapsuleAppManager {
    u8 filler_000[0xDC];
    SpriteSystem *spriteSystem;
    SpriteManager *spriteManager;
    u8 filler_0E4[0x10C];
    TouchscreenHitbox touchScreenRects[13];
    u8 filler_224[0x1F0];
    CapsulePageSprites pageSprites;
} CapsuleAppManager;

typedef struct CapsuleSpriteOffsets {
    s16 xy[13][2];
} CapsuleSpriteOffsets;

extern const CapsuleSpriteOffsets ov57_0223BE48;
extern const CapsuleSpriteOffsets ov57_0223BE7C;

void ov57_022385A4(TouchscreenHitbox *rect, ManagedSprite *sprite, s16 xOffset, s16 yOffset);

void ov57_02239EB4(CapsuleAppManager *appMan) {
    int i;
    CapsulePageSprites *pageSprites;
    ManagedSpriteTemplate spriteTemplate;
    SpriteSystem *spriteSystem = appMan->spriteSystem;
    SpriteManager *spriteManager = appMan->spriteManager;
    pageSprites = &appMan->pageSprites;

    spriteTemplate.x = 0;
    spriteTemplate.y = 0;
    spriteTemplate.z = 0;
    spriteTemplate.animation = 0;
    spriteTemplate.drawPriority = 60;
    spriteTemplate.vram = NNS_G2D_VRAM_TYPE_2DSUB;
    spriteTemplate.bgPriority = 1;
    spriteTemplate.vramTransfer = FALSE;
    spriteTemplate.resIdList[4] = -1;
    spriteTemplate.resIdList[5] = -1;

    i = 8;

    spriteTemplate.pal = 1;
    spriteTemplate.resIdList[0] = 25026;
    spriteTemplate.resIdList[1] = 26004;
    spriteTemplate.resIdList[2] = 27028;
    spriteTemplate.resIdList[3] = 28027;
    pageSprites->sprites[i++] = SpriteSystem_NewSprite(spriteSystem, spriteManager, &spriteTemplate);

    spriteTemplate.resIdList[0] = 25029;
    spriteTemplate.resIdList[1] = 26004;
    spriteTemplate.resIdList[2] = 27031;
    spriteTemplate.resIdList[3] = 28030;
    pageSprites->sprites[i++] = SpriteSystem_NewSprite(spriteSystem, spriteManager, &spriteTemplate);

    spriteTemplate.bgPriority = 1;
    spriteTemplate.pal = 1;
    spriteTemplate.resIdList[0] = 35023;
    spriteTemplate.resIdList[1] = 26004;
    spriteTemplate.resIdList[2] = 27025;
    spriteTemplate.resIdList[3] = 28024;
    pageSprites->sprites[i++] = SpriteSystem_NewSprite(spriteSystem, spriteManager, &spriteTemplate);

    spriteTemplate.bgPriority = 1;
    spriteTemplate.pal = 0;
    spriteTemplate.resIdList[0] = 25020;
    spriteTemplate.resIdList[1] = 26004;
    spriteTemplate.resIdList[2] = 27022;
    spriteTemplate.resIdList[3] = 28021;
    pageSprites->sprites[i++] = SpriteSystem_NewSprite(spriteSystem, spriteManager, &spriteTemplate);
    pageSprites->sprites[i++] = SpriteSystem_NewSprite(spriteSystem, spriteManager, &spriteTemplate);

    CapsuleSpriteOffsets xyPos = ov57_0223BE48;
    CapsuleSpriteOffsets xyOffset = ov57_0223BE7C;

    for (i = 8; i < 13; i++) {
        ManagedSprite_SetPositionXY(appMan->pageSprites.sprites[i], xyPos.xy[i][0], xyPos.xy[i][1]);
        ManagedSprite_TickFrame(appMan->pageSprites.sprites[i]);
        ManagedSprite_SetAnimationFrame(appMan->pageSprites.sprites[i], 0);
        ov57_022385A4(&appMan->touchScreenRects[i], appMan->pageSprites.sprites[i], xyOffset.xy[i][0], xyOffset.xy[i][1]);
    }
}
