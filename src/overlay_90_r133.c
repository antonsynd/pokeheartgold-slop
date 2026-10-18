#include "global.h"

#include "sprite.h"

typedef struct Ov90_0225BC28 {
    Sprite *sprites[2];
    s16 page;
    s16 offset;
} Ov90_0225BC28;

extern const VecFx32 ov90_0225C2B4[2];

void ov90_0225BD84(Ov90_0225BC28 *a0);

void ov90_0225BC28(Ov90_0225BC28 *a0, s32 delta) {
    VecFx32 pos;
    int i;
    int offset;

    a0->offset = (a0->page * 23) / 8;
    if ((a0->page + delta) <= 8 && (a0->page + delta) >= 0) {
        offset = ((a0->page + delta) * 23) / 8;
    } else {
        offset = a0->offset;
    }
    for (i = 0; i < 2; i++) {
        pos = ov90_0225C2B4[i];
        if (i == 0) {
            pos.y -= FX32_CONST(offset);
        } else {
            pos.y += FX32_CONST(offset);
        }
        Sprite_SetMatrix(a0->sprites[i], &pos);
    }
    ov90_0225BD84(a0);
}
