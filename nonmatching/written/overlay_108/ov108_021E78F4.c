#include "global.h"
#include "sprite_system.h"

#define U8AT(p, off)  (*(u8 *)((u8 *)(p) + (off)))
#define PTRAT(p, off) (*(void **)((u8 *)(p) + (off)))

extern void ov108_021E78C0(void *data, int which, int anim, int a3);

void ov108_021E78F4(void *data, int which, u32 pos) {
    int anim = 0;
    s16 x, y;

    if (pos >= 6) {
        x = 0xE0;
        y = 0xB4;
        anim = 1;
    } else if (which != 1) {
        x = (s16)(((int)pos % 3) * 0x48 + 0x38);
        y = (s16)(((int)pos / 3) * 0x48 + 0x38);
        if (which == 2) {
            y = (s16)(y + 0xC0);
        } else if (which == 3) {
            anim = 2;
        } else if (which == 0) {
            if ((U8AT(data, 0x184E2) >> 3) == 2) {
                anim = 3;
            }
        }
    } else {
        x = (s16)(((int)pos % 3) * 0x50 + 0x30);
        y = (s16)(((int)pos / 3) * 0x48 + 0x38);
    }
    Sprite_SetPositionXY(PTRAT(data, 0x354 + which * 4), x, y);
    ov108_021E78C0(data, which, anim, 1);
}
