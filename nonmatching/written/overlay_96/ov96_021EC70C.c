#include "global.h"
#include "sprite_system.h"

#define RD32(base, off) (*(u32 *)((u8 *)(base) + (off)))
#define RD8(base, off)  (*(u8 *)((u8 *)(base) + (off)))

void ov96_021EC70C(u8 *param0) {
    ManagedSpriteTemplate tmpl;
    int i;
    u32 *words = (u32 *)&tmpl;
    ManagedSprite *sprite;

    for (i = 0; i < 13; i++) {
        words[i] = 0;
    }
    for (i = 0; i < 2; i++) {
        tmpl.resIdList[0] = i + 0x6b;
        tmpl.resIdList[1] = i + 0x6b;
        tmpl.resIdList[2] = 0x67;
        tmpl.resIdList[3] = 0x67;
        tmpl.vram = (NNS_G2D_VRAM_TYPE)1;
        tmpl.bgPriority = 0;
        tmpl.drawPriority = 2;
        tmpl.x = 0x60 + i * 0x40;
        tmpl.y = 0x38;
        if (RD8(param0, 0xb1) < 5) {
            tmpl.x = 0x80;
        }
        sprite = SpriteSystem_NewSpriteWithYOffset((SpriteSystem *)RD32(param0, 0x18), (SpriteManager *)RD32(param0, 0x1c), &tmpl, 0x20c000);
        RD32(param0, (i + 0x18) * 4 + 0x20) = (u32)sprite;
        ManagedSprite_SetAnimateFlag(sprite, 1);
        ManagedSprite_SetDrawFlag((ManagedSprite *)RD32(param0, (i + 0x18) * 4 + 0x20), 0);
    }
}
