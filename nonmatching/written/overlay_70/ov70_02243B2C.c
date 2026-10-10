#include "global.h"

#include "sprite.h"

extern int ov70_02245E84[];
extern u8 ov70_02245D8A[];
extern u8 ov70_02245D8B[];

extern void sub_02019688(void *a0, int a1, int a2, int a3, int a4);
extern void *sub_02019B08(void *a0, int a1);
extern void sub_020196E8(void *a0, int a1, int a2, int a3);
extern void ov70_0224190C(void *work, int a);
extern int ov70_0223F904(void *a, int b, int c);
extern void ov70_0224352C(void *work, int a, int b);
extern int ov70_02242508(int a, int b);
extern void ov70_02243F00(void *a, int b, int c, int d, int e);
extern void ov70_02243EB8(void *a, int b, int c, int d);
extern void ov70_02238F9C(void *sprite, int x, int y);

int ov70_02243B2C(u8 *work) {
    sub_02019688(*(void **)(work + 0x1C), 0, 0x64, 0x1E, 1);
    sub_02019B08(*(void **)(work + 0x1C), 0);
    ov70_0224190C(work, 3);
    *(int *)(work + 0x5C) = ov70_0223F904(work + 0x34, *(int *)(work + 0x2C),
                                          *(s16 *)(work + 0x3E) + ov70_02245E84[*(s16 *)(work + 0x3C)]);
    ov70_0224352C(work, 0, *(int *)(work + 0x5C));
    *(s16 *)(work + 0x5A) = 0;
    ov70_02243F00(*(void **)(work + 0x1C), *(int *)(work + 0x38), *(int *)(work + 4) + 0x50,
                  *(s16 *)(work + 0x5A), ov70_02242508(*(int *)(work + 0x5C), 5));
    ov70_02243EB8(*(void **)(work + 0x1C), *(int *)(work + 0x24), *(int *)(work + 4) + 0xE0, 0x44);
    sub_020196E8(*(void **)(work + 0x1C), 0, 1, 0);
    *(int *)(work + 0x48) = 0;
    ov70_02238F9C(*(void **)(work + 0xC), ov70_02245D8A[0], ov70_02245D8B[0]);
    ov70_02238F9C(*(void **)(work + 0x10), 0xB0, 0x88);
    ov70_02238F9C(*(void **)(work + 0x14), 0x58, 0x88);
    Sprite_SetDrawFlag(*(Sprite **)(work + 0xC), 1);
    Sprite_SetDrawFlag(*(Sprite **)(work + 0x10), 1);
    Sprite_SetDrawFlag(*(Sprite **)(work + 0x14), 1);
    *(int *)(work + 0x4C) = 0x19;
    return -1;
}
