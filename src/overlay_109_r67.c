#include "global.h"

#include "sprite.h"

typedef struct Ov109_021E7474 {
    u8 filler_00[0x98];
    Sprite *sprite;
} Ov109_021E7474;

void ov109_021E7474(Ov109_021E7474 *a0, u32 a1, int a2, BOOL a3) {
    s16 x;
    s16 y;

    Sprite_SetDrawFlag(a0->sprite, a3);
    if (a2 == 3) {
        x = 0xC0;
        y = 0xA0;
        Sprite_SetAnimationFrame(a0->sprite, 1);
    } else {
        x = a1 * 48 + 28 + (a1 / 2) * 8;
        y = a2 * 40 + 8;
        Sprite_SetAnimationFrame(a0->sprite, 0);
    }
    Sprite_SetPositionXY(a0->sprite, x, y);
}
