#ifndef POKEHEARTGOLD_OVERLAY_80_02239AF8_H
#define POKEHEARTGOLD_OVERLAY_80_02239AF8_H

#include "palette.h"
#include "sprite_system.h"

void ov80_02239AF8(SpriteSystem *spriteSystem, SpriteManager *spriteManager, NARC *narc, PaletteData *plttData, u16 index);
void ov80_02239B7C(SpriteManager *spriteManager, u32 index);
ManagedSprite *ov80_02239BB8(SpriteSystem *spriteSystem, SpriteManager *spriteManager, u32 index);
void ov80_02239BE8(ManagedSprite *managedSprite);

#endif // POKEHEARTGOLD_OVERLAY_80_02239AF8_H
