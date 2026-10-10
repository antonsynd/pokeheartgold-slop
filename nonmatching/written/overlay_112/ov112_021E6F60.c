#include "global.h"

extern void ov112_021E5E18(u32 code);
extern void ov112_021E5A5C(void);
extern void ov112_021E5A68(void *buf, u32 size, u32 cmd, u32 flag);
extern void ov112_021E5EC4(u32 a, u32 b, u32 c);
extern void ov112_021E5EEC(void);
extern void ov112_021E6134(void);
extern void ov112_021E6164(void);
extern void ov112_021E6004(void);
extern void ov112_021E6BF8(void);
extern u32 ov112_021FFAA4[];
extern u8 ov112_021FFB24[];

#define A(off) (ov112_021FFAA4[(off) / 4])
#define B(off) (ov112_021FFB24[(off)])
#define B16(off) (*(u16 *)(ov112_021FFB24 + (off)))
#define B32(off) (*(u32 *)(ov112_021FFB24 + (off)))

static void Finish(u32 code) {
    ov112_021E5E18(code);
    ov112_021E5A5C();
}

static void HandleNak(void) {
    u8 c = B(0x1C);
    switch (c) {
    case 0x32:
        ov112_021E5A68(NULL, 0, 0x38, 1);
        return;
    case 0x40:
        ov112_021E5A68(NULL, 0, 0x4E, 1);
        Finish(0xF);
        return;
    case 0x52:
        ov112_021E5A68(NULL, 0, 0x5A, 1);
        return;
    case 0x60:
        ov112_021E5A68(NULL, 0, 0x66, 1);
        Finish(0xF);
        return;
    case 0xB0:
        ov112_021E5A68(NULL, 0, 0xC0, 1);
        return;
    case 0xB2:
        ov112_021E5A68(NULL, 0, 0xC2, 1);
        return;
    case 0xB4:
        ov112_021E5A68(NULL, 0, 0xC4, 1);
        return;
    case 0xB6:
        ov112_021E5A68(NULL, 0, 0xC6, 1);
        return;
    case 0xB8:
    case 0xBA:
    case 0xBC:
    case 0xBE:
        if ((((u8 *)A(0x34))[0] & 0xF) == 0xF) {
            switch (A(0x04)) {
            case 0:
                ov112_021E5A68(NULL, 0, 0xD0, 1);
                return;
            case 1:
                ov112_021E5A68(NULL, 0, 0xD2, 1);
                return;
            case 2:
                ov112_021E5A68(NULL, 0, 0xD4, 1);
                return;
            case 3:
                ov112_021E5A68(NULL, 0, 0xD6, 1);
                return;
            }
            return;
        }
        ov112_021E5A68(NULL, 0, c, 1);
        return;
    }
}

void ov112_021E6F60(void *data, u32 size, int cmd) {
    u8 *p;
    u32 v;

    switch (cmd) {
    case 0x04:
        if (B16(0x30) == 0) {
            ov112_021E6004();
        } else {
            ov112_021E5EEC();
        }
        return;
    case 0x0E:
        MI_CpuCopy8(data, (void *)B32(0x28), size);
        B32(0x20) += size;
        B32(0x28) += size;
        B16(0x30) -= size;
        B16(0x36) += 1;
        B16(0x3A) += 1;
        if (B16(0x30) == 0) {
            ov112_021E6164();
        } else {
            ov112_021E6134();
        }
        return;
    case 0x22:
        MI_CpuCopy8(data, (void *)A(0x24), 0x68);
        p = (u8 *)A(0x24);
        v = *(u32 *)(p + 0x64);
        *(u32 *)(p + 0x64) = (v << 24) | ((v << 8) & 0x00FF0000) | ((v >> 8) & 0x0000FF00) | (v >> 24);
        ov112_021E6BF8();
        return;
    case 0x26:
        HandleNak();
        return;
    case 0x28:
        Finish(3);
        return;
    case 0x34:
        B(0x1D) = 0x3A;
        if (A(0x50) != 0) {
            ov112_021E5EC4(A(0x50), 0x280, 0x8C50);
        } else {
            ov112_021E5EC4(A(0x10), 0x280, 0x8C50);
        }
        ov112_021E5EEC();
        return;
    case 0x38:
        Finish(0xF);
        return;
    case 0x42:
        B(0x1D) = 0x46;
        ov112_021E5EC4(0x8F00, A(0x08), 0x2A);
        ov112_021E6134();
        return;
    case 0x44:
        Finish(0xE);
        return;
    case 0x54:
        B(0x1D) = 0x3C;
        if (A(0x58) != 0) {
            ov112_021E5EC4(A(0x58), 0xD700, 0x28BE);
        } else {
            ov112_021E5EC4(A(0x2C), 0xD700, 0x28BE);
        }
        ov112_021E5EEC();
        return;
    case 0x5A:
    case 0x5E:
        Finish(0xF);
        return;
    case 0x62:
    case 0xA0:
    case 0xA2:
    case 0xA4:
    case 0xA6:
    case 0xA8:
    case 0xAA:
    case 0xAC:
    case 0xAE:
        B(0x1D) = 0x48;
        ov112_021E5EC4(0xCE80, A(0x38), 0xD4C);
        ov112_021E6134();
        return;
    case 0x64:
        Finish(0xE);
        return;
    case 0x9C:
    case 0x9E:
        Finish(0xC);
        return;
    case 0xC0:
    case 0xC2:
    case 0xC4:
    case 0xC6:
    case 0xC8:
    case 0xCA:
    case 0xCC:
    case 0xCE:
    case 0xE0:
    case 0xE2:
    case 0xF0:
    case 0xFE:
        Finish(0xF);
        return;
    default:
        return;
    }
}
