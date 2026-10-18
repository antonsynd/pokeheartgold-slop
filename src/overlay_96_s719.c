#include "global.h"

#include "sprite.h"

typedef struct Ov96SpriteSet {
    Sprite *sprites[3];
    u8 filler_C[4];
} Ov96SpriteSet;

typedef struct Ov96_021FC248 {
    u8 filler_000[0x184];
    Ov96SpriteSet sets[1];
} Ov96_021FC248;

void ov96_021FC248(Ov96_021FC248 *a0, int idx, int x) {
    VecFx32 pos;

    pos.z = 0;
    pos.x = x << FX32_SHIFT;
    pos.y = 14 << FX32_SHIFT;

    Sprite_SetMatrix(a0->sets[idx].sprites[0], &pos);
    Sprite_SetMatrix(a0->sets[idx].sprites[1], &pos);
    Sprite_SetMatrix(a0->sets[idx].sprites[2], &pos);
}
