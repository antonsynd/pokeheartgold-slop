#include "global.h"
#include "math_util.h"
#include "sprite.h"

extern s32 ov96_0221C050[3];
extern s32 ov96_0221C080[3];

void ov96_021F4504(u8 *param0, u32 index, u32 value);
Sprite *ov96_021EB5B8(void *obj);
void ov96_021EB52C(void *obj, u32 a1, u32 a2);

void ov96_021F4CAC(u8 *param0) {
    int first;
    int second;
    int slotA;
    int slotB;
    u8 tries;
    VecFx32 vec;

    first = (s32)LCRandom() % 4;
    tries = 0;
    do {
        second = (s32)LCRandom() % 4;
        if (first != second) {
            break;
        }
        tries = tries + 1;
    } while (tries < 10);
    if (tries == 10) {
        second = (first + 1) % 4;
    }
    slotA = first * 3 + (s32)LCRandom() % 3;
    slotB = second * 3 + (s32)LCRandom() % 3;
    ov96_021F4504(param0, 0, (u8)slotA);
    ov96_021F4504(param0, 1, (u8)slotB);

    {
        Sprite *sprite = ov96_021EB5B8(*(void **)(param0 + 0x90));
        vec.x = ov96_0221C050[0];
        vec.y = ov96_0221C050[1];
        vec.z = ov96_0221C050[2];
        vec.y = vec.y + 0x200000;
        Sprite_SetMatrix(sprite, &vec);
    }
    {
        Sprite *sprite = ov96_021EB5B8(*(void **)(param0 + 0x94));
        vec.x = ov96_0221C080[0];
        vec.y = ov96_0221C080[1];
        vec.z = ov96_0221C080[2];
        vec.y = vec.y + 0x200000;
        Sprite_SetMatrix(sprite, &vec);
    }
    ov96_021EB52C(*(void **)(param0 + 0x90), 1, 1);
    ov96_021EB52C(*(void **)(param0 + 0x94), 1, 1);
}
