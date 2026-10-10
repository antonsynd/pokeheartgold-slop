#include "global.h"

#include "msgdata.h"
#include "pm_string.h"
#include "sprite.h"

extern u8 ov70_02245E26[];
extern u8 ov70_02245E27[];

extern void sub_02019688(void *a0, int a1, int a2, int a3, int a4);
extern void *sub_02019B08(void *a0, int a1);
extern void sub_020196E8(void *a0, int a1, int a2, int a3);
extern void sub_020197F4(void *a0, int a1);
extern void ov70_0224190C(void *work, int a);
extern int ov70_02243F7C(void *work, int a);
extern void ov70_02242FC4(void *a, void *b, String *str, int c, int d);
extern void ov70_02243EB8(void *a, int b, int c, int d);
extern void ov70_02238F9C(void *sprite, int x, int y);

int ov70_0224316C(u8 *work) {
    int i;
    int off;
    int n;

    sub_02019688(*(void **)(work + 0x1C), 0, 0x64, 0x22, 1);
    sub_02019B08(*(void **)(work + 0x1C), 0);
    ov70_0224190C(work, 4);
    MI_CpuFill8(work + 0x64, 1, 0x1A);
    off = 0;
    for (i = 0; i < 9; i++) {
        String *str = NewString_ReadMsgData(*(MsgData **)(work + 0x24), i + 0x6E);
        int r = ov70_02243F7C(work, i);
        int color;
        if (r == 1) {
            work[i + 0x64] = 1;
            color = 0xF0E02;
        } else {
            work[i + 0x64] = 0;
            color = 0x80902;
        }
        ov70_02242FC4(*(void **)(work + 0x1C), *(u8 **)(work + 4) + off, str, 2, color);
        String_Delete(str);
        off += 0x10;
    }
    ov70_02243EB8(*(void **)(work + 0x1C), *(int *)(work + 0x24), *(int *)(work + 4) + 0xE0, 0x44);
    sub_020196E8(*(void **)(work + 0x1C), 0, 0x10, 0);
    sub_020197F4(*(void **)(work + 0x1C), 0);
    Sprite_SetAnimCtrlSeq(*(Sprite **)(work + 0xC), 0x3D);
    n = *(s16 *)(work + 0x3C) * 2;
    ov70_02238F9C(*(void **)(work + 0xC), (ov70_02245E26[n] + 0x10) << 3, ov70_02245E27[n] << 3);
    *(int *)(work + 0x48) = *(s16 *)(work + 0x3C);
    Sprite_SetDrawFlag(*(Sprite **)(work + 0xC), 1);
    *(int *)(work + 0x4C) = 5;
    return -1;
}
