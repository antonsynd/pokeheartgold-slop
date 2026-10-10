#include "global.h"

#include "sprite.h"
#include "system.h"
#include "unk_02005D10.h"

extern u8 ov70_02245EFC[];
extern u8 ov70_02245EFD[];
extern u8 ov70_02245EFE[];
extern u8 ov70_02245EFF[];
extern u8 ov70_02245DF8[];
extern u8 ov70_02245DF9[];

extern int ov70_02242164(void *work, int a);
extern int ov70_022429A0(void *work, int a);
extern void ov70_02238F9C(void *sprite, int x, int y);

int ov70_022429B8(u8 *work, u8 *flags) {
    int cur = *(int *)(work + 0x48);
    int keys;
    int ret;

    if (cur < 9) {
        *(u8 *)(work + 0x7E) = cur;
    }
    keys = gSystem.newAndRepeatedKeys;
    if (keys & 0x40) {
        *(int *)(work + 0x48) = ov70_02245EFC[*(int *)(work + 0x48) * 4];
    } else if (keys & 0x80) {
        *(int *)(work + 0x48) = ov70_02245EFD[*(int *)(work + 0x48) * 4];
    } else if (keys & 0x20) {
        *(int *)(work + 0x48) = ov70_02245EFE[*(int *)(work + 0x48) * 4];
    } else if (keys & 0x10) {
        *(int *)(work + 0x48) = ov70_02245EFF[*(int *)(work + 0x48) * 4];
    }

    if (cur >= 9 && *(int *)(work + 0x48) < 9) {
        keys = gSystem.newAndRepeatedKeys;
        if (keys & 0x40) {
            int v = *(u8 *)(work + 0x7E);
            *(int *)(work + 0x48) = v;
            if (v + 4 < 9) {
                do {
                    *(int *)(work + 0x48) = *(int *)(work + 0x48) + 4;
                } while (*(int *)(work + 0x48) + 4 < 9);
            }
        } else if (keys & 0x80) {
            int v = *(u8 *)(work + 0x7E);
            *(int *)(work + 0x48) = v;
            if (v - 4 >= 0) {
                do {
                    *(int *)(work + 0x48) = *(int *)(work + 0x48) - 4;
                } while (*(int *)(work + 0x48) - 4 >= 0);
            }
        }
    }

    if (cur != *(int *)(work + 0x48)) {
        int n;
        PlaySE(0x5DC);
        n = *(int *)(work + 0x48) * 2;
        ov70_02238F9C(*(void **)(work + 0xC), (ov70_02245DF8[n] + 0x10) << 3, ov70_02245DF9[n] << 3);
        if (*(int *)(work + 0x48) == 9) {
            Sprite_SetAnimCtrlSeq(*(Sprite **)(work + 0xC), 0x30);
        } else if (*(int *)(work + 0x48) == 10) {
            Sprite_SetAnimCtrlSeq(*(Sprite **)(work + 0xC), 0x31);
        } else {
            Sprite_SetAnimCtrlSeq(*(Sprite **)(work + 0xC), 0x3D);
        }
    }

    ret = ov70_02242164(work, 6);
    if (ret != -1) {
        int r5 = ov70_022429A0(work, ret);
        if (r5 == -2 || r5 == 0xB || flags == NULL || flags[r5] != 0) {
            PlaySE(0x5DC);
            return r5;
        }
    } else {
        keys = gSystem.newKeys;
        if (keys & 1) {
            int r5 = ov70_022429A0(work, *(int *)(work + 0x48));
            if (r5 == -2 || r5 == 0xB || flags == NULL || flags[r5] != 0) {
                PlaySE(0x5DC);
                return r5;
            }
        } else if (keys & 2) {
            PlaySE(0x5DC);
            return -2;
        }
    }
    return -1;
}
