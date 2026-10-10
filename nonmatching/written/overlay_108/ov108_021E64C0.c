#include "global.h"
#include "system.h"
#include "unk_02005D10.h"

#define U8AT(p, off)  (*(u8 *)((u8 *)(p) + (off)))
#define S32AT(p, off) (*(int *)((u8 *)(p) + (off)))

extern int ov108_021E6450(void *data);
extern void ov108_021E78F4(void *data, int a1, u8 a2);
extern void ov108_021E78C0(void *data, int a1, int a2, int a3);
extern void ov108_021E7EB0(void *data);

int ov108_021E64C0(void *data) {
    u32 prev = U8AT(data, 0x184E0);
    int keys = gSystem.newKeys;
    u8 x, y;
    BOOL flag;

    if (keys & PAD_BUTTON_B) {
        PlaySE(0x5DC);
        return 2;
    }
    if (keys & PAD_BUTTON_A) {
        if (prev >= 6) {
            PlaySE(0x5DC);
            return 2;
        }
        if (prev + U8AT(data, 0x184DE) * 6 == U8AT(data, U8AT(data, 0x184DF) * 0x7A + 0x1C)) {
            return 0;
        }
        return ov108_021E6450(data);
    }
    if (!(keys & 0xF0)) {
        return 0;
    }
    x = (u8)((int)prev % 3);
    y = (u8)((int)prev / 3);
    flag = FALSE;
    if ((keys & 0x10) && y < 2) {
        if (x == 2) {
            if (y == 0) {
                y = (u8)(y ^ 1);
                x = (u8)((x + 1) % 3);
            } else if (y < 2 && U8AT(data, 0x184DE) < 1) {
                flag = TRUE;
                U8AT(data, 0x184E2) &= ~2;
                y = (u8)(y ^ 1);
                x = (u8)((x + 1) % 3);
            }
        } else {
            x = (u8)((x + 1) % 3);
        }
    } else if ((keys & 0x20) && y < 2) {
        if (x == 0) {
            if (y == 1) {
                y = (u8)(y ^ 1);
                x = (u8)((x + 2) % 3);
            } else if (y < 2 && U8AT(data, 0x184DE) != 0) {
                flag = TRUE;
                U8AT(data, 0x184E2) |= 2;
                y = (u8)(y ^ 1);
                x = (u8)((x + 2) % 3);
            }
        } else {
            x = (u8)((x + 2) % 3);
        }
    } else if (keys & 0x40) {
        y = (u8)((y + 2) % 3);
    } else if (keys & 0x80) {
        y = (u8)((y + 1) % 3);
    }
    U8AT(data, 0x184E0) = (u8)(x + y * 3);
    ov108_021E78F4(data, 1, U8AT(data, 0x184E0));
    if (flag) {
        PlaySE(0x5E1);
        ov108_021E78C0(data, 1, 0, 0);
        return 3;
    }
    if (prev != U8AT(data, 0x184E0)) {
        PlaySE(0x5E5);
    }
    ov108_021E7EB0(data);
    return 0;
}
