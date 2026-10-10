#include "global.h"

extern const u8 ov102_021EC65C[];
extern const u8 ov102_021EC65D[];
extern const u8 ov102_021EC65E[];
extern const u8 ov102_021EC65F[];

BOOL ov102_021E8600(u8 *a0) {
    u16 cur = *(u16 *)(a0 + 0x50);
    u32 idx = cur;
    u16 keys;

    if (cur == 0xfe) {
        idx = 0xc;
    }
    if (cur != 0xfe) {
        *(u16 *)(a0 + 0x52) = cur;
        keys = *(u16 *)(a0 + 0x34);
        if (keys & 0x40) {
            *(u16 *)(a0 + 0x50) = ov102_021EC65C[idx * 4];
            return 1;
        }
        if (keys & 0x80) {
            *(u16 *)(a0 + 0x50) = ov102_021EC65D[idx * 4];
            return 1;
        }
        if (keys & 0x20) {
            *(u16 *)(a0 + 0x50) = ov102_021EC65E[idx * 4];
            return 1;
        }
        if (keys & 0x10) {
            *(u16 *)(a0 + 0x50) = ov102_021EC65F[idx * 4];
            return 1;
        }
        return 0;
    }
    keys = *(u16 *)(a0 + 0x34);
    if (keys & 0x40) {
        *(u16 *)(a0 + 0x50) = (int)*(u16 *)(a0 + 0x52) % 3 + 9;
        return 1;
    }
    if (keys & 0x80) {
        *(u16 *)(a0 + 0x50) = (int)*(u16 *)(a0 + 0x52) % 3;
        return 1;
    }
    return 0;
}
