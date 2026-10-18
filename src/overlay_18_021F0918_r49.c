#include "global.h"

#include "sprite_system.h"

typedef struct Ov18_021F1D98 {
    u8 filler_000[0x668];
    SpriteSystem *spriteSystem;
    SpriteManager *spriteManager;
    ManagedSprite *sprites[1];
} Ov18_021F1D98;

extern const ManagedSpriteTemplate ov18_021FA450;

void ov18_021F1D98(Ov18_021F1D98 *a0, int idx) {
    a0->sprites[idx] = SpriteSystem_NewSpriteWithYOffset(a0->spriteSystem, a0->spriteManager, &ov18_021FA450, FX32_CONST(512));
    ManagedSprite_SetPaletteOverride(a0->sprites[idx], SpriteManager_FindPlttResourceOffset(a0->spriteManager, 0xC55B, NNS_G2D_VRAM_TYPE_2DSUB));
    ManagedSprite_SetDrawFlag(a0->sprites[idx], FALSE);
}
