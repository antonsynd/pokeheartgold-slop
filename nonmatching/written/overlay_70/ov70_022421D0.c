#include "global.h"

#include "error_handling.h"
#include "sprite.h"
#include "system.h"
#include "unk_02005D10.h"

extern u8 ov70_02245EA8[];
extern u8 ov70_02245EA9[];
extern u8 ov70_02245EAA[];
extern u8 ov70_02245EAB[];
extern u8 ov70_02245E26[];
extern u8 ov70_02245E27[];

extern int ov70_02242164(void *work, int a);
extern void ov70_02238F9C(void *sprite, int x, int y);

int ov70_022421D0(u8 *work, u8 *flags) {
    int cur = *(int *)(work + 0x48);
    int keys;

    if (cur < 9) {
        *(u8 *)(work + 0x7E) = cur;
    }
    keys = gSystem.newAndRepeatedKeys;
    if (keys & 0x40) {
        *(int *)(work + 0x48) = ov70_02245EA8[*(int *)(work + 0x48) * 4];
    } else if (keys & 0x80) {
        *(int *)(work + 0x48) = ov70_02245EA9[*(int *)(work + 0x48) * 4];
    } else if (keys & 0x20) {
        *(int *)(work + 0x48) = ov70_02245EAA[*(int *)(work + 0x48) * 4];
    } else if (keys & 0x10) {
        *(int *)(work + 0x48) = ov70_02245EAB[*(int *)(work + 0x48) * 4];
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
        ov70_02238F9C(*(void **)(work + 0xC), (ov70_02245E26[n] + 0x10) << 3, ov70_02245E27[n] << 3);
        if (*(int *)(work + 0x48) == 9) {
            Sprite_SetAnimCtrlSeq(*(Sprite **)(work + 0xC), 0x30);
        } else {
            Sprite_SetAnimCtrlSeq(*(Sprite **)(work + 0xC), 0x3D);
        }
    }

    {
        u32 ret = ov70_02242164(work, 4);
        if (ret == 0xFFFFFFFF) {
            int newKeys = gSystem.newKeys;
            if (newKeys & 1) {
                int sel = *(int *)(work + 0x48);
                if (sel == 9) {
                    return -2;
                }
                if (sel > 9) {
                    GF_AssertFail();
                }
                if (flags == NULL || flags[*(int *)(work + 0x48)] != 0) {
                    PlaySE(0x5DC);
                    return *(int *)(work + 0x48);
                }
            } else if (newKeys & 2) {
                PlaySE(0x5DC);
                return -2;
            }
        } else {
            if (ret == 9) {
                PlaySE(0x5DC);
                return -2;
            }
            if (ret >= 9) {
                GF_AssertFail();
            }
            if (flags == NULL || flags[ret] != 0) {
                PlaySE(0x5DC);
                return ret;
            }
        }
    }
    return -1;
}
