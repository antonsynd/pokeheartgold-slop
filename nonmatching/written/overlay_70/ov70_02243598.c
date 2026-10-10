#include "global.h"

#include "sprite.h"

extern int ov70_02245E84[];
extern u8 ov70_02245D76[];
extern u8 ov70_02245D77[];

extern void sub_02019688(void *a0, int a1, int a2, int a3, int a4);
extern void *sub_02019B08(void *a0, int a1);
extern void sub_020196E8(void *a0, int a1, int a2, int a3);
extern void ov70_0224190C(void *work, int a);
extern int ov70_02243458(void *a, int b, int c, int d, int e, int f);
extern void ov70_022434C0(void *work, int a, int b);
extern int ov70_02242508(int a, int b);
extern void ov70_02243F00(void *a, int b, int c, int d, int e);
extern void ov70_02243EB8(void *a, int b, int c, int d);
extern void ov70_02238F9C(void *sprite, int x, int y);

int ov70_02243598(u8 *work) {
    sub_02019688(*(void **)(work + 0x1C), 0, 0x64, 0x23, 1);
    sub_02019B08(*(void **)(work + 0x1C), 0);
    ov70_0224190C(work, 0);
    *(int *)(work + 0x5C) = ov70_02243458(work + 0x34, *(int *)(work + 0x28), *(int *)(work + 0x24),
                                          *(int *)(work + 0x30),
                                          *(s16 *)(work + 0x3E) + ov70_02245E84[*(s16 *)(work + 0x3C)],
                                          *(int *)(work + 0x20));
    *(s16 *)(work + 0x5A) = 0;
    ov70_022434C0(work, 0, *(int *)(work + 0x5C));
    ov70_02243F00(*(void **)(work + 0x1C), *(int *)(work + 0x38), *(int *)(work + 4) + 0x40,
                  *(s16 *)(work + 0x5A), ov70_02242508(*(int *)(work + 0x5C), 4));
    ov70_02243EB8(*(void **)(work + 0x1C), *(int *)(work + 0x24), *(int *)(work + 4) + 0xE0, 0x44);
    sub_020196E8(*(void **)(work + 0x1C), 0, 0x10, 0);
    Sprite_SetAnimCtrlSeq(*(Sprite **)(work + 0xC), 0x31);
    *(int *)(work + 0x48) = 0;
    ov70_02238F9C(*(void **)(work + 0xC), ov70_02245D76[0], ov70_02245D77[0]);
    ov70_02238F9C(*(void **)(work + 0x10), 0xE4, 0x78);
    ov70_02238F9C(*(void **)(work + 0x14), 0x9A, 0x78);
    Sprite_SetDrawFlag(*(Sprite **)(work + 0xC), 1);
    Sprite_SetDrawFlag(*(Sprite **)(work + 0x10), 1);
    Sprite_SetDrawFlag(*(Sprite **)(work + 0x14), 1);
    *(int *)(work + 0x4C) = 0xD;
    return -1;
}
