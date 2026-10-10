#include "global.h"
#include "sprite_system.h"

#define RD32(base, off) (*(u32 *)((u8 *)(base) + (off)))

void ov96_021EC68C(u8 *param0) {
    ManagedSpriteTemplate tmpl;
    int palOverride;
    int i;
    u32 *words = (u32 *)&tmpl;
    ManagedSprite *sprite;

    for (i = 0; i < 13; i++) {
        words[i] = 0;
    }
    palOverride = 2;
    for (i = 0; i < 3; i++) {
        tmpl.resIdList[0] = i + 0x6d;
        tmpl.resIdList[1] = 0x6a;
        tmpl.resIdList[2] = 0x68;
        tmpl.resIdList[3] = 0x68;
        tmpl.vram = (NNS_G2D_VRAM_TYPE)1;
        tmpl.x = 0x30 + i * 0x50;
        tmpl.y = 0x70;
        tmpl.bgPriority = 0;
        tmpl.drawPriority = 1;
        sprite = SpriteSystem_NewSpriteWithYOffset((SpriteSystem *)RD32(param0, 0x18), (SpriteManager *)RD32(param0, 0x1c), &tmpl, 0x20c000);
        RD32(param0, (i + 0x15) * 4 + 0x20) = (u32)sprite;
        ManagedSprite_SetPaletteOverride(sprite, palOverride);
        ManagedSprite_SetDrawFlag((ManagedSprite *)RD32(param0, (i + 0x15) * 4 + 0x20), 0);
        palOverride += 3;
    }
}
