#include "global.h"

extern void ov112_021E5E18(u32 code);
extern void ov112_021E5A5C(void);
extern void ov112_021E5A68(void *buf, u32 size, u32 cmd, u32 flag);
extern u32 ov112_021FFAA4[];
extern u8 ov112_021FFB24[];

#define A(off) (ov112_021FFAA4[(off) / 4])
#define B(off) (ov112_021FFB24[(off)])

static void Fail(u32 cmd, u32 code) {
    ov112_021E5A68(NULL, 0, cmd, 1);
    ov112_021E5E18(code);
    ov112_021E5A5C();
}

void ov112_021E6BF8(void) {
    u8 cmd = B(0x1C);
    u8 *x;
    u8 *y;

    switch (cmd) {
    case 0x32:
        if (A(0x18) != 0 && (((u8 *)A(0x24))[0x5B] & 1)) {
            Fail(0x36, 4);
            return;
        }
        ov112_021E5A68((void *)A(0x20), 0x68, 0x32, 1);
        return;
    case 0x40:
        x = (u8 *)A(0x24);
        if (!(x[0x5B] & 1)) {
            Fail(0x44, 5);
            return;
        }
        if (!((x[0x5B] >> 1) & 1)) {
            Fail(0x44, 6);
            return;
        }
        y = (u8 *)A(0x20);
        if (*(u32 *)(x + 0xC) != *(u32 *)(y + 0xC)) {
            Fail(0x44, 0xB);
            return;
        }
        if (*(u32 *)(x + 4) != *(u32 *)(y + 4)) {
            Fail(0x44, 8);
            return;
        }
        if ((*(u16 *)(x + 0xA) >> 2) != (*(u16 *)(y + 0xA) >> 2)) {
            Fail(0x44, 9);
            return;
        }
        if (x[0x5D] > y[0x5D]) {
            Fail(0x44, 0xA);
            return;
        }
        ov112_021E5A68(y, 0x68, 0x40, 1);
        return;
    case 0x52:
        x = (u8 *)A(0x24);
        if (!(x[0x5B] & 1)) {
            Fail(0x56, 5);
            return;
        }
        if (((x[0x5B] >> 1) & 1) == 1) {
            Fail(0x56, 7);
            return;
        }
        y = (u8 *)A(0x20);
        if (*(u32 *)(x + 0) != *(u32 *)(y + 0)) {
            Fail(0x56, 8);
            return;
        }
        if ((*(u16 *)(x + 8) >> 2) != (*(u16 *)(y + 8) >> 2)) {
            Fail(0x56, 9);
            return;
        }
        if (*(u32 *)(x + 0xC) != *(u32 *)(y + 0xC)) {
            Fail(0x56, 0xB);
            return;
        }
        if (x[0x5D] > y[0x5D]) {
            Fail(0x56, 0xA);
            return;
        }
        ov112_021E5A68(y, 0x68, 0x52, 1);
        return;
    case 0x60:
        x = (u8 *)A(0x24);
        y = (u8 *)A(0x20);
        if (!(x[0x5B] & 1)) {
            ov112_021E5A68(y, 0x68, 0x64, 1);
            ov112_021E5E18(5);
            ov112_021E5A5C();
            return;
        }
        if (x[0x5D] > y[0x5D]) {
            ov112_021E5A68(y, 0x68, 0x64, 1);
            ov112_021E5E18(0xA);
            ov112_021E5A5C();
            return;
        }
        ov112_021E5A68(y, 0x68, 0x60, 1);
        return;
    case 0xB0:
    case 0xB2:
    case 0xB4:
    case 0xB6:
    case 0xB8:
    case 0xBA:
    case 0xBC:
    case 0xBE:
        x = (u8 *)A(0x24);
        if (!(x[0x5B] & 1)) {
            Fail(0xD8, 5);
            return;
        }
        y = (u8 *)A(0x20);
        if (*(u32 *)(x + 0) != *(u32 *)(y + 0)) {
            Fail(0xD8, 8);
            return;
        }
        if ((*(u16 *)(x + 8) >> 2) != (*(u16 *)(y + 8) >> 2)) {
            Fail(0xD8, 9);
            return;
        }
        if (x[0x5D] > y[0x5D]) {
            Fail(0xD8, 0xA);
            return;
        }
        ov112_021E5A68(y, 0x68, (u8)(cmd - 0x10), 1);
        return;
    default:
        ov112_021E5E18(0xC);
        ov112_021E5A5C();
        return;
    }
}
