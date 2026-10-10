#include "global.h"
#include "sprite_system.h"

#define U8AT(p, off)  (*(u8 *)((u8 *)(p) + (off)))
#define PTRAT(p, off) (*(void **)((u8 *)(p) + (off)))

extern void ov108_021E84F8(void *a0, u8 a1, u8 a2);

void ov108_021E81A8(void *data) {
    int dx;
    int i;

    if (((U8AT(data, 0x184E2) >> 1) & 1) == 0) {
        U8AT(data, 0x184DE)++;
        dx = 0x100;
    } else {
        U8AT(data, 0x184DE)--;
        dx = -0x100;
    }
    int ofs = ((U8AT(data, 0x184E2) >> 2) & 1) * 6;
    for (i = 0; i < 6; i++) {
        ManagedSprite_SetPositionXY(PTRAT(data, 0x36C + (ofs + i) * 4), (s16)(dx + (i % 3) * 0x50 + 0x30), (s16)((i / 3) * 0x48 + 0x38));
        ov108_021E84F8(PTRAT(data, 0x348), (u8)(i + ofs), (u8)(i + U8AT(data, 0x184DE) * 6));
        ManagedSprite_SetPriority(PTRAT(data, 0x36C + (ofs + i) * 4), 3);
    }
    U8AT(data, 0x184E1) = 0;
}
