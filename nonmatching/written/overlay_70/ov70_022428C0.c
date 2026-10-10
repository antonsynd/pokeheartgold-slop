#include "global.h"

#include "sprite.h"
#include "system.h"
#include "unk_02005D10.h"

extern u8 ov70_02245D80[];
extern u8 ov70_02245D81[];

extern int ov70_02242164(void *work, int a);
extern int ov70_02242860(void *work, int a);
extern void ov70_022427C4(void *work, int dir);
extern void ov70_02238F9C(void *sprite, int x, int y);

int ov70_022428C0(u8 *work) {
    int keys = gSystem.newAndRepeatedKeys;
    int cur = *(int *)(work + 0x48);
    int ret;

    if (keys & 0x40) {
        PlaySE(0x5DC);
        if (*(int *)(work + 0x48) == 0) {
            *(int *)(work + 0x48) = 4;
        } else {
            *(int *)(work + 0x48) = *(int *)(work + 0x48) - 1;
        }
    } else if (keys & 0x80) {
        PlaySE(0x5DC);
        if (*(int *)(work + 0x48) == 4) {
            *(int *)(work + 0x48) = 0;
        } else {
            *(int *)(work + 0x48) = *(int *)(work + 0x48) + 1;
        }
    } else if (keys & 0x20) {
        ov70_022427C4(work, -1);
    } else if (keys & 0x10) {
        ov70_022427C4(work, 1);
    }

    if (cur != *(int *)(work + 0x48)) {
        int n = *(int *)(work + 0x48) * 2;
        ov70_02238F9C(*(void **)(work + 0xC), ov70_02245D80[n], ov70_02245D81[n]);
        if (*(int *)(work + 0x48) == 4) {
            Sprite_SetAnimCtrlSeq(*(Sprite **)(work + 0xC), 0x30);
        } else {
            Sprite_SetAnimCtrlSeq(*(Sprite **)(work + 0xC), 0x31);
        }
    }

    ret = ov70_02242164(work, 2);
    if (ret != -1) {
        return ov70_02242860(work, ret);
    }
    keys = gSystem.newKeys;
    if (keys & 1) {
        return ov70_02242860(work, *(int *)(work + 0x48));
    }
    if (keys & 2) {
        PlaySE(0x5DC);
        return -2;
    }
    return -1;
}
