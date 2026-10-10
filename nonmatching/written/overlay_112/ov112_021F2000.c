#include "global.h"
#include "sprite_system.h"

const ManagedSpriteTemplate ov112_021FF400 = {
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

extern ManagedSprite *ov112_021F1AF4(SpriteSystem *spriteSystem, SpriteManager *spriteManager, int x, int y, u8 animation, u8 drawPriority);

void ov112_021F2000(u8 *work, SpriteSystem *spriteSystem, SpriteManager *spriteManager, int x, int y, u8 animation, int resBase) {
    ManagedSpriteTemplate tmpl = ov112_021FF400;
    ManagedSprite **sprites = (ManagedSprite **)(work + 8);
    int i;

    for (i = 0; i < 2; i++) {
        tmpl.x = x;
        tmpl.y = y;
        tmpl.drawPriority = 3;
        tmpl.animation = animation;
        tmpl.resIdList[1] = resBase + 2;
        tmpl.resIdList[2] = i + 2;
        tmpl.resIdList[3] = i + 2;
        tmpl.resIdList[0] = resBase + 2 + 2 * i;
        sprites[i] = SpriteSystem_NewSpriteWithYOffset(spriteSystem, spriteManager, &tmpl, 0x20C000);
        ManagedSprite_SetAnimateFlag(sprites[i], 1);
        ManagedSprite_SetDrawFlag(sprites[i], 0);
    }
    *(ManagedSprite **)(work + 0x10) = ov112_021F1AF4(spriteSystem, spriteManager, x, y, 0x17, 4);
}
