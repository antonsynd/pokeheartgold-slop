#include "global.h"

#include "sprite_system.h"

typedef struct Ov96_02219C30 {
    void *unk00;
    void *unk04;
    SpriteSystem *spriteSystem;
    SpriteManager *spriteManager;
    u8 filler_10[0x12];
    u8 course;
    u8 filler_23[0x3D];
    ManagedSprite *banner;
    u8 filler_64[4];
    ManagedSprite *icons[4];
    ManagedSprite *markers[4];
    ManagedSprite *arrows[4];
    ManagedSprite *bars[2];
    ManagedSprite *labels[2];
} Ov96_02219C30;

ManagedSprite *ov96_022199A8(SpriteSystem *spriteSystem, SpriteManager *spriteManager, s16 x, s16 y, u16 animation, u16 priority);
void ov96_02219DD0(Ov96_02219C30 *a0, u8 player, int index);
void ov96_02219DA8(void *a0, void *a1, ManagedSprite *sprite, u8 course, u8 a4);
void ov96_02219E60(Ov96_02219C30 *a0);

void ov96_02219C30(Ov96_02219C30 *a0) {
    ManagedSpriteTemplate template = { 0 };
    int i;

    a0->banner = ov96_022199A8(a0->spriteSystem, a0->spriteManager, 134, 160, a0->course + 12, 6);
    ManagedSprite_SetPaletteOverride(a0->banner, 1);

    for (i = 0; i < 4; i++) {
        s16 x = 120 + i * 32;

        a0->icons[i] = ov96_022199A8(a0->spriteSystem, a0->spriteManager, x, 36, i + 1, 5);
        ov96_02219DD0(a0, i, 0);
        a0->markers[i] = ov96_022199A8(a0->spriteSystem, a0->spriteManager, x, 36, 10, 4);
        ManagedSprite_SetDrawFlag(a0->markers[i], FALSE);
        a0->arrows[i] = ov96_022199A8(a0->spriteSystem, a0->spriteManager, 120 + i * 32, 24, 6, 0);
        ManagedSprite_SetDrawFlag(a0->arrows[i], FALSE);
    }

    for (i = 0; i < 2; i++) {
        template.resIdList[0] = 10002 + i;
        template.resIdList[1] = 10002 + i;
        template.resIdList[2] = 10002;
        template.resIdList[3] = 10002;
        template.vram = NNS_G2D_VRAM_TYPE_2DSUB;
        template.x = 40;
        template.y = 48 + i * 88;
        template.drawPriority = i + 2;
        template.bgPriority = 2;
        a0->bars[i] = SpriteSystem_NewSpriteWithYOffset(a0->spriteSystem, a0->spriteManager, &template, FX32_CONST(480));
        ManagedSprite_SetAnimateFlag(a0->bars[i], TRUE);
    }

    for (i = 0; i < 2; i++) {
        ov96_02219DA8(a0->unk00, a0->unk04, a0->bars[i], a0->course, 2 - i);
        a0->labels[i] = ov96_022199A8(a0->spriteSystem, a0->spriteManager, 40, 24 + i * 88, 5, 1);
        ManagedSprite_SetDrawFlag(a0->labels[i], FALSE);
    }

    ov96_02219E60(a0);
}
