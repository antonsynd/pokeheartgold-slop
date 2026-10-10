#include "global.h"

#include "sprite.h"

extern u8 ov70_02245DF8[];
extern u8 ov70_02245DF9[];

extern void ov70_02242D44(void *work, int a, int b);
extern void sub_020198FC(void *a0, int a1, int a2, int a3, int a4);
extern void ov70_02238F9C(void *sprite, int x, int y);

int ov70_02243768(u8 *work) {
    int n;

    ov70_02242D44(work, 6, 0x20);
    sub_020198FC(*(void **)(work + 0x1C), 0, -4, 0, 4);
    *(int *)(work + 0x4C) = 1;
    *(int *)(work + 0x50) = 0x11;
    *(int *)(work + 0x48) = 10;
    *(s16 *)(work + 0x3C) = -1;
    n = *(int *)(work + 0x48) * 2;
    ov70_02238F9C(*(void **)(work + 0xC), (ov70_02245DF8[n] + 0x10) << 3, ov70_02245DF9[n] << 3);
    Sprite_SetAnimCtrlSeq(*(Sprite **)(work + 0xC), 0x31);
    return -1;
}
