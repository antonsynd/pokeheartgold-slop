#include "global.h"

#include "sprite.h"
#include "system.h"
#include "unk_02005D10.h"

extern u8 ov70_02245D66[];
extern u8 ov70_02245D67[];
extern int ov70_02245DB0[];

extern int ov70_02242164(void *work, int a);
extern void ov70_02238F9C(void *sprite, int x, int y);

int ov70_022426F4(u8 *work) {
    int cur = *(int *)(work + 0x48);
    int keys = gSystem.newAndRepeatedKeys;
    int ret;

    if (keys & 0x40) {
        PlaySE(0x5DC);
        if (*(int *)(work + 0x48) == 0) {
            *(int *)(work + 0x48) = 3;
        } else {
            *(int *)(work + 0x48) = *(int *)(work + 0x48) - 1;
        }
    } else if (keys & 0x80) {
        PlaySE(0x5DC);
        if (*(int *)(work + 0x48) == 3) {
            *(int *)(work + 0x48) = 0;
        } else {
            *(int *)(work + 0x48) = *(int *)(work + 0x48) + 1;
        }
    }

    if (cur != *(int *)(work + 0x48)) {
        int n = *(int *)(work + 0x48) * 2;
        ov70_02238F9C(*(void **)(work + 0xC), ov70_02245D66[n], ov70_02245D67[n]);
        if (*(int *)(work + 0x48) == 3) {
            Sprite_SetAnimCtrlSeq(*(Sprite **)(work + 0xC), 0x30);
        } else {
            Sprite_SetAnimCtrlSeq(*(Sprite **)(work + 0xC), 0x31);
        }
    }

    ret = ov70_02242164(work, 1);
    if (ret != -1) {
        PlaySE(0x5DC);
        return ov70_02245DB0[ret];
    }
    keys = gSystem.newKeys;
    if (keys & 1) {
        PlaySE(0x5DC);
        return ov70_02245DB0[*(int *)(work + 0x48)];
    }
    if (keys & 2) {
        PlaySE(0x5DC);
        return -2;
    }
    return -1;
}
