#include "global.h"

extern void ov112_021E5E18(u32 code);
extern void ov112_021E5A5C(void);
extern void ov112_021E5E28(void);
extern void ov112_021E5E48(void);
extern void ov112_021E5A68(void *buf, u32 size, u32 cmd, u32 flag);
extern u32 ov112_021FFAA4[];
extern u8 ov112_021FFB24[];
extern u8 ov112_021FFB64[];

#define A(off) (ov112_021FFAA4[(off) / 4])
#define B(off) (ov112_021FFB24[(off)])

void ov112_021E6A6C(u32 result) {
    u64 tick;
    u8 cmd;
    u8 buf[4];
    u16 h;

    A(0x14) = 0;
    if (result == 0) {
        ov112_021E5E18(0xC);
        ov112_021E5A5C();
        return;
    }
    if (result > 2) {
        ov112_021E5E18(0xC);
        ov112_021E5A5C();
        return;
    }
    tick = OS_GetTick();
    A(0x3C) = (u32)tick;
    A(0x40) = (u32)(tick >> 32);
    cmd = B(0x1C);
    switch (cmd) {
    case 0x2A:
        ov112_021E5E28();
        ov112_021E5A68((u8 *)A(0x20) + 0x10, 0x28, B(0x1D), 1);
        ov112_021E5E18(0xF);
        ov112_021E5A5C();
        return;
    case 0x32:
    case 0x40:
    case 0x52:
        ov112_021E5E48();
        ov112_021E5A68(NULL, 0, 0x20, 1);
        return;
    case 0x60:
    case 0xB0:
    case 0xB2:
    case 0xB4:
    case 0xB6:
    case 0xB8:
    case 0xBA:
    case 0xBC:
    case 0xBE:
        *(u32 *)((u8 *)A(0x20) + 0x60) = 0;
        ov112_021E5A68(NULL, 0, 0x20, 1);
        return;
    case 0xE0:
        ov112_021E5E28();
        ov112_021E5A68((u8 *)A(0x20) + 0x10, 0x28, B(0x1C), 1);
        return;
    case 0xE2:
        buf[0] = 0x80;
        h = *(u16 *)ov112_021FFAA4;
        buf[1] = h >> 8;
        buf[2] = h;
        buf[3] = buf[1] + 1 + buf[2];
        ov112_021E5A68(buf, 4, 0xA, 0);
        return;
    case 0xF0:
        ov112_021E5E28();
        MI_CpuCopy8((u8 *)A(0x20) + 0x10, ov112_021FFB64, 0x28);
        ov112_021E5A68(ov112_021FFB64, 0x74, B(0x1C), 1);
        return;
    case 0xFE:
        ov112_021E5E28();
        ov112_021E5A68((void *)A(0x28), 8, B(0x1C), 1);
        return;
    default:
        return;
    }
}
