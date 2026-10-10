#include "global.h"

#include "sprite.h"

extern u8 ov70_02245D76[];
extern u8 ov70_02245D77[];

extern void sub_02019688(void *a0, int a1, int a2, int a3, int a4);
extern void *sub_02019B08(void *a0, int a1);
extern void sub_020196E8(void *a0, int a1, int a2, int a3);
extern void sub_020197F4(void *a0, int a1);
extern void sub_020198FC(void *a0, int a1, int a2, int a3, int a4);
extern void ov70_0224190C(void *work, int a);
extern int ov70_0223F7E4(void *a, int b, int c);
extern void ov70_022434C0(void *work, int a, int b);
extern int ov70_02242508(int a, int b);
extern void ov70_02243F00(void *a, int b, int c, int d, int e);
extern void ov70_02243EB8(void *a, int b, int c, int d);
extern void ov70_02238F9C(void *sprite, int x, int y);

void ov70_02242EE4(u8 *work) {
    int n;

    sub_02019688(*(void **)(work + 0x1C), 0, 0x64, 0x23, 1);
    sub_02019B08(*(void **)(work + 0x1C), 0);
    ov70_0224190C(work, 2);
    if (*(int *)(work + 0x60) == 1) {
        *(int *)(work + 0x5C) = ov70_0223F7E4(work + 0x34, *(int *)(work + 0x24), 1);
    } else if (*(int *)(work + 0x60) == 0) {
        *(int *)(work + 0x5C) = ov70_0223F7E4(work + 0x34, *(int *)(work + 0x24), 0);
    }
    ov70_022434C0(work, 0, *(int *)(work + 0x5C));
    *(s16 *)(work + 0x5A) = 0;
    ov70_02243F00(*(void **)(work + 0x1C), *(int *)(work + 0x38), *(int *)(work + 4) + 0x40,
                  *(s16 *)(work + 0x5A), ov70_02242508(*(int *)(work + 0x5C), 4));
    ov70_02243EB8(*(void **)(work + 0x1C), *(int *)(work + 0x24), *(int *)(work + 4) + 0xE0, 0x44);
    sub_020196E8(*(void **)(work + 0x1C), 0, 0x20, 0);
    Sprite_SetAnimCtrlSeq(*(Sprite **)(work + 0xC), 0x31);
    *(int *)(work + 0x48) = 0;
    *(u8 *)(work + 0x7E) = 0;
    n = *(int *)(work + 0x48) * 2;
    ov70_02238F9C(*(void **)(work + 0xC), ov70_02245D76[n], ov70_02245D77[n]);
    sub_020197F4(*(void **)(work + 0x1C), 0);
    sub_020198FC(*(void **)(work + 0x1C), 0, -4, 0, 4);
    *(int *)(work + 0x4C) = 0x20;
}
