#include "global.h"

#include "sprite.h"
#include "system.h"
#include "unk_02005D10.h"

extern u8 ov70_02245D8A[];
extern u8 ov70_02245D8B[];

extern int ov70_02242164(void *work, int a);
extern int ov70_02242B5C(void *work, int a);
extern void ov70_02242BBC(void *work, int dir);
extern void ov70_02238F9C(void *sprite, int x, int y);

int ov70_02242C64(u8 *work) {
    int keys = gSystem.newAndRepeatedKeys;
    int cur = *(int *)(work + 0x48);
    int ret;

    if (keys & 0x40) {
        PlaySE(0x5DC);
        if (*(int *)(work + 0x48) == 0) {
            *(int *)(work + 0x48) = 5;
        } else {
            *(int *)(work + 0x48) = *(int *)(work + 0x48) - 1;
        }
    } else if (keys & 0x80) {
        PlaySE(0x5DC);
        if (*(int *)(work + 0x48) == 5) {
            *(int *)(work + 0x48) = 0;
        } else {
            *(int *)(work + 0x48) = *(int *)(work + 0x48) + 1;
        }
    } else if (keys & 0x20) {
        ov70_02242BBC(work, -1);
    } else if (keys & 0x10) {
        ov70_02242BBC(work, 1);
    }

    if (cur != *(int *)(work + 0x48)) {
        int n = *(int *)(work + 0x48) * 2;
        ov70_02238F9C(*(void **)(work + 0xC), ov70_02245D8A[n], ov70_02245D8B[n]);
        if (*(int *)(work + 0x48) == 5) {
            Sprite_SetAnimCtrlSeq(*(Sprite **)(work + 0xC), 0x30);
        } else {
            Sprite_SetAnimCtrlSeq(*(Sprite **)(work + 0xC), 0x32);
        }
    }

    ret = ov70_02242164(work, 3);
    if (ret != -1) {
        return ov70_02242B5C(work, ret);
    }
    keys = gSystem.newKeys;
    if (keys & 1) {
        return ov70_02242B5C(work, *(int *)(work + 0x48));
    }
    if (keys & 2) {
        PlaySE(0x5DC);
        return -2;
    }
    return -1;
}
