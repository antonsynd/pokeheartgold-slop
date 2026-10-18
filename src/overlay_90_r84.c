#include "global.h"

#include "sprite.h"

#pragma opt_common_subs off

typedef struct Ov90_02259FC8 {
    u8 filler_00[0x10];
    Sprite *sprite;
    Sprite *shadow;
    u16 page;
    u8 filler_1A;
    u8 slot;
} Ov90_02259FC8;

extern const s16 ov90_0225C274[][2];
extern const s16 ov90_0225C276[][2];
extern const u8 ov90_0225C31C[][12];
extern const u8 ov90_0225C324[][12];

void ov90_02259FC8(Ov90_02259FC8 *a0, int x) {
    VecFx32 pos;
    u8 posIndex = ov90_0225C324[a0->page - 1][a0->slot];
    u8 row = ov90_0225C31C[a0->page - 1][a0->slot];
    u8 baseX = ov90_0225C274[posIndex][0];
    u8 baseY = ov90_0225C276[posIndex][0] + row * 8;

    pos.x = (baseX + x) << FX32_SHIFT;
    pos.y = baseY << FX32_SHIFT;
    Sprite_SetMatrix(a0->sprite, &pos);
    baseY = ov90_0225C31C[a0->page - 1][a0->slot] * 8 + 21;
    pos.x = (x + 24) << FX32_SHIFT;
    pos.y = baseY << FX32_SHIFT;
    Sprite_SetMatrix(a0->shadow, &pos);
}
