#include "global.h"
#include "sprite_system.h"

const ManagedSpriteTemplate ov112_021FF398 = {
    .x = 0,
    .y = 0,
    .z = 0,
    .animation = 0,
    .drawPriority = 0,
    .pal = 0xFFFF,
    .vram = (NNS_G2D_VRAM_TYPE)1,
    .resIdList = { 0, 0, 0, 0, 0, 0 },
    .bgPriority = 2,
    .vramTransfer = 0,
};

ManagedSprite *ov112_021F1AF4(SpriteSystem *spriteSystem, SpriteManager *spriteManager, int x, int y, u8 animation, u8 drawPriority) {
    ManagedSpriteTemplate tmpl = ov112_021FF398;
    ManagedSprite *sprite;

    tmpl.x = x;
    tmpl.y = y;
    tmpl.drawPriority = drawPriority;
    tmpl.animation = animation;
    sprite = SpriteSystem_NewSpriteWithYOffset(spriteSystem, spriteManager, &tmpl, 0x20C000);
    ManagedSprite_SetAnimateFlag(sprite, 1);
    return sprite;
}
