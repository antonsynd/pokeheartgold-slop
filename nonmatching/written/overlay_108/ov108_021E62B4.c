#include "global.h"
#include "system.h"
#include "unk_02005D10.h"

#define U8AT(p, off)  (*(u8 *)((u8 *)(p) + (off)))
#define S32AT(p, off) (*(int *)((u8 *)(p) + (off)))

extern void ov108_021E6A58(void *data);
extern void ov108_021E78F4(void *data, int a1, u8 a2);
extern void ov108_021E7CD8(void *data, u8 a1);

int ov108_021E62B4(void *data) {
    int keys = gSystem.newKeys;
    u8 x, y;

    if (keys & PAD_BUTTON_B) {
        PlaySE(0x5DC);
        S32AT(data, 0xC) = 6;
        return 4;
    }
    if (keys & PAD_BUTTON_A) {
        if (U8AT(data, 0x184DF) >= 6) {
            PlaySE(0x5DC);
            S32AT(data, 0xC) = 6;
            return 4;
        }
        PlaySE(0x5DC);
        ov108_021E6A58(data);
        return 1;
    }
    if (!(keys & 0xF0)) {
        return 0;
    }
    int cur = U8AT(data, 0x184DF);
    x = (u8)(cur % 3);
    y = (u8)(cur / 3);
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
    U8AT(data, 0x184DF) = (u8)(x + y * 3);
    if (y < 2 || (gSystem.newKeys & 0xC0)) {
        PlaySE(0x5E5);
    }
    ov108_021E78F4(data, 0, U8AT(data, 0x184DF));
    ov108_021E7CD8(data, U8AT(data, 0x184DF));
    return 0;
}
