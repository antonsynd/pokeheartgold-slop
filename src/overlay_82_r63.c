#include "global.h"

#include "heap.h"
#include "sprite.h"

typedef struct Ov82Object {
    u8 filler_00[0xC];
    int unkC;
    Sprite *sprite;
} Ov82Object;

Sprite *ov82_0223FB08(void *a0, void *a1, int a2, int a3, int a4);

Ov82Object *ov82_0223FC48(void *a0, void *a1, int a2, int x, u16 y, int a5) {
    VecFx32 pos;
    Ov82Object *obj = Heap_Alloc(HEAP_ID_105, sizeof(Ov82Object));

    memset(obj, 0, sizeof(Ov82Object));
    obj->unkC = a5;
    obj->sprite = ov82_0223FB08(a0, a1, a2, 0, 0);
    pos.x = x << FX32_SHIFT;
    pos.y = y << FX32_SHIFT;
    Sprite_SetMatrix(obj->sprite, &pos);
    return obj;
}
