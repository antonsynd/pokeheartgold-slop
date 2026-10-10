#include "global.h"
#include "sprite.h"

typedef void (*UnkFn_ov28_0225E43C)(void *item, void *self, u32 offset, u32 r3);

typedef struct UnkStruct_ov28_0225E43C_Item {
    u32 a;
    u32 b;
    u32 c;
} UnkStruct_ov28_0225E43C_Item;

extern UnkFn_ov28_0225E43C ov28_0225EAAC[];

void ov28_0225DE04(s32 *out, u32 angle);
void ov28_0225E424(Sprite *sprite, u32 angle);

void ov28_0225E43C(u8 *ctx) {
    UnkStruct_ov28_0225E43C_Item *items = (UnkStruct_ov28_0225E43C_Item *)(ctx + 0x21c);
    Sprite **sprites = (Sprite **)(ctx + 0x190);
    u16 *flags = (u16 *)(ctx + 0x24c);
    s32 mtx[3];
    u32 count;
    u32 i;
    u32 r3AfterCall;
    UnkFn_ov28_0225E43C fn;

    count = *flags & 0x7fff;
    if (count == 0) {
        return;
    }
    *flags = (*flags & 0x8000) | ((count + 0xffff) & 0x7fff);
    if ((*flags & 0x7fff) == 0) {
        for (i = 0; i < 4; i++) {
            items[i].a = items[i].b;
            ov28_0225DE04(mtx, items[i].a);
            Sprite_SetMatrix(sprites[i], (VecFx32 *)mtx);
            ov28_0225E424(sprites[i], items[i].a);
        }
        return;
    }
    for (i = 0; i < 4; i++) {
        items[i].a = items[i].c;
        ov28_0225DE04(mtx, items[i].a);
        Sprite_SetMatrix(sprites[i], (VecFx32 *)mtx);
        ov28_0225E424(sprites[i], items[i].a);
        __asm__ volatile("movs %0, r3" : "=l"(r3AfterCall) : : "cc");
        fn = ov28_0225EAAC[*(s32 *)(ctx + 0x210)];
        fn(&items[i], (void *)fn, *(u32 *)(ctx + 0x210) << 2, r3AfterCall);
    }
}
