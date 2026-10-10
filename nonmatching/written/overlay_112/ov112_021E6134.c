#include "global.h"

extern void ov112_021E5A68(u8 *buf, int a, int b, int c);
extern u8 ov112_021FFB24[];

void ov112_021E6134(void) {
    u8 buf[4];
    u16 n = *(u16 *)(ov112_021FFB24 + 0x30);
    u16 v;
    if (n > 0x80) {
        n = 0x80;
    }
    v = (u16)*(u32 *)(ov112_021FFB24 + 0x20);
    buf[0] = v >> 8;
    buf[1] = v;
    buf[2] = n;
    ov112_021E5A68(buf, 3, 0xC, 2);
}
