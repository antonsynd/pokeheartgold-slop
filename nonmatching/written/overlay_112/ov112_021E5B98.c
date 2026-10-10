#include "global.h"

extern u32 CARD_SpiWaitReadRange(void *p);
extern BOOL ov112_021E5A84(u32 len);
extern BOOL ov112_021E5AD0(void);
extern BOOL ov112_021E5B28(u32 len);
extern void ov112_021E59B4(int a, int b, int c, u8 d, u32 e);
extern void ov112_021E5938(void);
extern void ov112_021E5A80(void);
extern u8 ov112_021FFA18[];
extern u8 ov112_021FFA20[];
extern u8 _021FF500[];
extern u32 _021FF9E0[];

#define G(off) (_021FF9E0[(off) / 4])

BOOL ov112_021E5B98(void) {
    u32 len;
    u64 tick;
    u32 g20;
    u8 v;
    void (*cb)(void);
    void (*cb2)(void *, u8, u8, u8);

    len = CARD_SpiWaitReadRange(ov112_021FFA18);
    if (ov112_021E5A84(len)) {
        len = 0;
    }
    if (len == 0) {
        if (ov112_021E5AD0()) {
            return TRUE;
        }
        return FALSE;
    }
    if (!ov112_021E5B28(len)) {
        return FALSE;
    }
    tick = OS_GetTick();
    G(0x30) = (u32)tick;
    G(0x34) = (u32)(tick >> 32);
    if (ov112_021FFA18[0] < 0xF0) {
        if (G(0x2C) == 0) {
            return FALSE;
        }
        if (*(u32 *)(ov112_021FFA18 + 4) != G(0x04)) {
            return FALSE;
        }
    }
    switch (ov112_021FFA18[0]) {
    case 0xFC:
        if (G(0x28) == 1) {
            G(0x28) = 2;
            ov112_021E59B4(0, 0, 0xFA, _021FF500[0], G(0x20));
        }
        if (G(0x24) != 0) {
            break;
        }
        G(0x24) = 1;
        G(0x28) = 2;
        G(0x08) = 0;
        if (len <= 1 || G(0x2C) != 0) {
            ov112_021E59B4(0, 0, 0xFA, _021FF500[0], G(0x20));
            if (G(0x2C) != 0) {
                ov112_021E5938();
            }
            ov112_021E5A80();
        }
        break;
    case 0xFA:
        if (G(0x28) != 1) {
            break;
        }
        G(0x28) = 3;
        G(0x08) = 1;
        v = ov112_021FFA18[1];
        _021FF500[1] = v;
        if (v != 1) {
            break;
        }
        g20 = G(0x20);
        G(0x04) = *(u32 *)(ov112_021FFA18 + 4) ^ g20;
        ov112_021E59B4(0, 0, 0xF8, _021FF500[0], g20);
        G(0x2C) = 1;
        G(0x18) = 0;
        G(0x24) = 0;
        break;
    case 0xF8:
        if (G(0x28) != 2) {
            break;
        }
        G(0x28) = 4;
        _021FF500[1] = ov112_021FFA18[1];
        G(0x04) = G(0x20) ^ *(u32 *)(ov112_021FFA18 + 4);
        G(0x2C) = 1;
        G(0x18) = 0;
        G(0x24) = 0;
        cb = (void (*)(void))G(0x0C);
        if (cb != NULL) {
            cb();
        }
        break;
    case 0xF6:
        ov112_021E5938();
        break;
    default:
        if (G(0x18) == 1) {
            break;
        }
        if (G(0x2C) == 0) {
            break;
        }
        cb2 = (void (*)(void *, u8, u8, u8))G(0x1C);
        cb2(ov112_021FFA20, (u8)(len - 8), ov112_021FFA18[0], ov112_021FFA18[1]);
        break;
    }
    return FALSE;
}
