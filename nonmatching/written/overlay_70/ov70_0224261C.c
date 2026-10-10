#include "global.h"

#include "sprite.h"
#include "system.h"
#include "unk_02005D10.h"

extern u8 ov70_02245D76[];
extern u8 ov70_02245D77[];

extern int ov70_02242164(void *work, int a);
extern int ov70_0224251C(void *work, int a);
extern void ov70_02242574(void *work, int dir);
extern void ov70_02238F9C(void *sprite, int x, int y);

int ov70_0224261C(u8 *work) {
    int keys = gSystem.newAndRepeatedKeys;
    int cur = *(int *)(work + 0x48);
    int ret;

    if (keys & 0x40) {
        if (cur == 0) {
            *(int *)(work + 0x48) = 4;
        } else {
            *(int *)(work + 0x48) = cur - 1;
        }
    } else if (keys & 0x80) {
        if (cur == 4) {
            *(int *)(work + 0x48) = 0;
        } else {
            *(int *)(work + 0x48) = cur + 1;
        }
    } else if (keys & 0x20) {
        ov70_02242574(work, -1);
    } else if (keys & 0x10) {
        ov70_02242574(work, 1);
    }

    if (cur != *(int *)(work + 0x48)) {
        int n;
        PlaySE(0x5DC);
        n = *(int *)(work + 0x48) * 2;
        ov70_02238F9C(*(void **)(work + 0xC), ov70_02245D76[n], ov70_02245D77[n]);
        if (*(int *)(work + 0x48) == 4) {
            Sprite_SetAnimCtrlSeq(*(Sprite **)(work + 0xC), 0x30);
        } else {
            Sprite_SetAnimCtrlSeq(*(Sprite **)(work + 0xC), 0x31);
        }
    }

    ret = ov70_02242164(work, 0);
    if (ret != -1) {
        return ov70_0224251C(work, ret);
    }
    keys = gSystem.newKeys;
    if (keys & 1) {
        return ov70_0224251C(work, *(int *)(work + 0x48));
    }
    if (keys & 2) {
        PlaySE(0x5DC);
        return -2;
    }
    return -1;
}
