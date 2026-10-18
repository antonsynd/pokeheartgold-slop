#include "global.h"

#include "sprite.h"

typedef struct Ov96Pos {
    u16 x;
    u16 y;
} Ov96Pos;

typedef struct Ov96_021E62AC {
    u8 filler_000[0x284];
    void *unk284;
    u8 filler_288[0x494];
    Sprite *sprites[3];
    u8 count;
    u8 unk729;
} Ov96_021E62AC;

Sprite *ov96_021EA6E4(int a0, int a1, int a2, int a3, void *a4);

void ov96_021E62AC(Ov96_021E62AC *a0, int y, int a2, int a3, int a4, u8 count, const Ov96Pos *positions) {
    u8 i;
    VecFx32 pos;

    a0->count = count;
    for (i = 0; i < count; i++) {
        a0->sprites[i] = ov96_021EA6E4(a2, a3, a4, 0, a0->unk284);
        pos.z = 0;
        pos.x = positions[i].x << FX32_SHIFT;
        pos.y = (y + positions[i].y) << FX32_SHIFT;
        Sprite_SetMatrix(a0->sprites[i], &pos);
    }
    for (; i < 3; i++) {
        a0->sprites[i] = NULL;
    }
    a0->unk729 = 0;
}
