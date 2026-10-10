#include "global.h"

#include "sprite.h"

extern int ov70_02245F58[];
extern int ov70_02245E84[];
extern int ov70_02245FA0[];
extern u8 ov70_02245E26[];
extern u8 ov70_02245E27[];

extern void sub_02019688(void *a0, int a1, int a2, int a3, int a4);
extern void *sub_02019B08(void *a0, int a1);
extern void sub_020196E8(void *a0, int a1, int a2, int a3);
extern void ov70_0224190C(void *work, int a);
extern void ov70_02243E8C(void *a, int b, void *c, int d, int e, int f);
extern int ov70_02243F54(void *work, int a);
extern void ov70_02243EB8(void *a, int b, int c, int d);
extern void ov70_02238F9C(void *sprite, int x, int y);

int ov70_02243254(u8 *work) {
    int i;
    int off;
    int n;
    int idx;

    sub_02019688(*(void **)(work + 0x1C), 0, 0x64, 0x20, 1);
    sub_02019B08(*(void **)(work + 0x1C), 0);
    ov70_0224190C(work, 5);
    MI_CpuFill8(work + 0x64, 1, 0x1A);
    ov70_02243E8C(*(void **)(work + 0x1C), *(int *)(work + 0x24), *(void **)(work + 4),
                  *(s16 *)(work + 0x3C) + 0x6E, 2, 0xF0E02);
    i = 1;
    if (ov70_02245F58[*(s16 *)(work + 0x3C) * 2 + 1] >= 1) {
        off = 0x10;
        do {
            int r = ov70_02243F54(work, ov70_02245E84[*(s16 *)(work + 0x3C)] + i - 1);
            int color;
            if (r > 0) {
                color = 0xF0E02;
                *(work + ov70_02245E84[*(s16 *)(work + 0x3C)] + i + 0x63) = 1;
            } else {
                color = 0x80902;
                *(work + ov70_02245E84[*(s16 *)(work + 0x3C)] + i + 0x63) = 0;
            }
            ov70_02243E8C(*(void **)(work + 0x1C), *(int *)(work + 0x24), *(u8 **)(work + 4) + off,
                          ov70_02245FA0[i + ov70_02245F58[*(s16 *)(work + 0x3C) * 2] - 1], 5, color);
            i++;
            off += 0x10;
        } while (i <= ov70_02245F58[*(s16 *)(work + 0x3C) * 2 + 1]);
    }
    ov70_02243EB8(*(void **)(work + 0x1C), *(int *)(work + 0x24), *(int *)(work + 4) + 0xE0, 0x44);
    sub_020196E8(*(void **)(work + 0x1C), 0, 0x10, 0);
    Sprite_SetAnimCtrlSeq(*(Sprite **)(work + 0xC), 0x2F);
    idx = *(s16 *)(work + 0x3E);
    if (idx < 0) {
        idx = 0;
    }
    *(int *)(work + 0x48) = idx;
    n = *(int *)(work + 0x48) * 2;
    ov70_02238F9C(*(void **)(work + 0xC), (ov70_02245E26[n] + 0x10) << 3, ov70_02245E27[n] << 3);
    Sprite_SetDrawFlag(*(Sprite **)(work + 0xC), 1);
    *(int *)(work + 0x4C) = 9;
    return -1;
}
