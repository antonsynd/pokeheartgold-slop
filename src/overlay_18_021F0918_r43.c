#include "global.h"

#include "sprite_system.h"

typedef struct Ov18_021F1A30 {
    u8 filler_000[0x668];
    SpriteSystem *spriteSystem;
    SpriteManager *spriteManager;
    ManagedSprite *sprites[1];
    ManagedSprite *spritesB[1];
} Ov18_021F1A30;

extern const ManagedSpriteTemplate ov18_021FABC0;
extern const ManagedSpriteTemplate ov18_021FABF4;

void ov18_021F1A30(Ov18_021F1A30 *a0, int idx) {
    a0->sprites[idx] = SpriteSystem_NewSpriteWithYOffset(a0->spriteSystem, a0->spriteManager, &ov18_021FABC0, FX32_CONST(512));
    a0->spritesB[idx] = SpriteSystem_NewSpriteWithYOffset(a0->spriteSystem, a0->spriteManager, &ov18_021FABF4, FX32_CONST(512));
}
