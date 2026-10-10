#include "global.h"
#include "system.h"
#include "unk_02005D10.h"

#define U8AT(p, off)  (*(u8 *)((u8 *)(p) + (off)))
#define S32AT(p, off) (*(int *)((u8 *)(p) + (off)))

extern void ov108_021E6850(void *data);
extern void ov108_021E78F4(void *data, int a1, u8 a2);

int ov108_021E6894(void *data) {
    int keys = gSystem.newKeys;
    u8 x, y;

    if (keys & PAD_BUTTON_B) {
        ov108_021E6850(data);
        S32AT(data, 0xC) = 2;
        PlaySE(0x5DC);
        return 4;
    }
    if (keys & PAD_BUTTON_A) {
        u8 cur = U8AT(data, 0x184E0);
        if (cur >= 6 || U8AT(data, 0x184DF) == cur) {
            ov108_021E6850(data);
            S32AT(data, 0xC) = 2;
            PlaySE(0x5DC);
            return 4;
        }
        PlaySE(0x69C);
        return 3;
    }
    if (!(keys & 0xF0)) {
        return 0;
    }
    int c = U8AT(data, 0x184E0);
    x = (u8)(c % 3);
    y = (u8)(c / 3);
    if (y < 2) {
        if (keys & 0x10) {
            x = (u8)((x + 1) % 3);
        } else if (keys & 0x20) {
            x = (u8)((x + 2) % 3);
        }
    }
    if (keys & 0x40) {
        y = (u8)((y + 2) % 3);
    } else if (keys & 0x80) {
        y = (u8)((y + 1) % 3);
    }
    U8AT(data, 0x184E0) = (u8)(x + y * 3);
    if (y < 2 || (gSystem.newKeys & 0xC0)) {
        PlaySE(0x5E5);
    }
    ov108_021E78F4(data, 0, U8AT(data, 0x184E0));
    return 0;
}
