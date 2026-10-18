#include "global.h"

#include "sprite.h"

typedef struct Ov96Spawn {
    u32 anim;
    u16 x;
    u16 y;
} Ov96Spawn;

typedef struct Ov96Slot {
    int active;
    const Ov96Spawn *spawn;
    int type;
    void *obj;
} Ov96Slot;

typedef struct Ov96_021F31F0 {
    Ov96Slot slots[8];
    int next;
} Ov96_021F31F0;

extern const Ov96Spawn *const ov96_0221DBC8[];

Sprite *ov96_021EB5B8(void *obj);
void ov96_021EB52C(void *obj, int a1, int a2);

void ov96_021F31F0(Ov96_021F31F0 *a0, u8 type) {
    const Ov96Spawn *spawn;
    int i;
    Ov96Slot *slot;
    Sprite *sprite;
    VecFx32 pos;

    for (i = 0, spawn = ov96_0221DBC8[type]; i < 4; i++, spawn++) {
        if (spawn->anim != 0) {
            slot = &a0->slots[a0->next];
            GF_ASSERT(slot->active != TRUE);
            slot->active = TRUE;
            slot->type = type;
            slot->spawn = spawn;
            sprite = ov96_021EB5B8(a0->slots[a0->next].obj);
            ov96_021EB52C(a0->slots[a0->next].obj, 1, 1);
            Sprite_SetAnimCtrlSeq(sprite, spawn->anim - 1);
            pos.z = 0;
            pos.x = spawn->x << FX32_SHIFT;
            pos.y = spawn->y << FX32_SHIFT;
            Sprite_SetMatrix(sprite, &pos);
            a0->next = (a0->next + 1) % 8;
        }
    }
}
