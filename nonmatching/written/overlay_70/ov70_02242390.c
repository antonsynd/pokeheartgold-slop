#include "global.h"

#include "sprite.h"
#include "system.h"
#include "unk_02005D10.h"

extern u8 ov70_02245DC0[];
extern u8 ov70_02245DC1[];
extern u8 ov70_02245DC2[];
extern u8 ov70_02245DC3[];
extern u8 ov70_02245E26[];
extern u8 ov70_02245E27[];
extern u8 *ov70_02245E84[];

extern int ov70_02242164(void *work, int a);
extern int ov70_02242364(void *work, int a);
extern void ov70_02238F9C(void *sprite, int x, int y);

int ov70_02242390(u8 *work, int offset) {
    int cur = *(int *)(work + 0x48);
    int keys;
    int ret;
    int sel;

    if (cur < 3) {
        *(u8 *)(work + 0x7E) = cur;
    }
    keys = gSystem.newAndRepeatedKeys;
    if (keys & 0x40) {
        *(int *)(work + 0x48) = ov70_02245DC0[*(int *)(work + 0x48) * 4];
    } else if (keys & 0x80) {
        *(int *)(work + 0x48) = ov70_02245DC1[*(int *)(work + 0x48) * 4];
    } else if (keys & 0x20) {
        *(int *)(work + 0x48) = ov70_02245DC2[*(int *)(work + 0x48) * 4];
    } else if (keys & 0x10) {
        *(int *)(work + 0x48) = ov70_02245DC3[*(int *)(work + 0x48) * 4];
    }

    if (cur == 3 && *(int *)(work + 0x48) < 3) {
        *(int *)(work + 0x48) = *(u8 *)(work + 0x7E);
    }

    if (cur != *(int *)(work + 0x48)) {
        PlaySE(0x5DC);
        sel = *(int *)(work + 0x48);
        if (sel == 3) {
            ov70_02238F9C(*(void **)(work + 0xC), 0xC0, 0x88);
            Sprite_SetAnimCtrlSeq(*(Sprite **)(work + 0xC), 0x30);
        } else {
            ov70_02238F9C(*(void **)(work + 0xC), (ov70_02245E26[sel * 2] + 0x10) << 3, ov70_02245E27[sel * 2] << 3);
            Sprite_SetAnimCtrlSeq(*(Sprite **)(work + 0xC), 0x2F);
        }
    }

    ret = ov70_02242164(work, 5);
    if (ret != -1) {
        int r6 = ov70_02242364(work, ret);
        if (r6 == -1) {
            return -1;
        }
        if (r6 == -2 || offset == 0 || ov70_02245E84[*(s16 *)(work + 0x3C)][offset + r6] != 0) {
            PlaySE(0x5DC);
            return r6;
        }
        return -1;
    } else {
        int newKeys = gSystem.newKeys;
        if (newKeys & 1) {
            int r6 = ov70_02242364(work, *(int *)(work + 0x48));
            if (r6 == -1) {
                return -1;
            }
            if (r6 == -2 || offset == 0 || ov70_02245E84[*(s16 *)(work + 0x3C)][offset + r6] != 0) {
                PlaySE(0x5DC);
                return r6;
            }
        } else if (newKeys & 2) {
            PlaySE(0x5DC);
            return -2;
        }
        return -1;
    }
}
