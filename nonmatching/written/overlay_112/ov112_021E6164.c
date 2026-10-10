#include "global.h"

extern u64 _ll_udiv(u64 a, u64 b);
extern u32 _f_ulltof(u64 a);
extern u32 _fdiv(u32 a, u32 b);
extern void ov112_021E5EC4(u32 a, u32 b, u32 c);
extern void ov112_021E6134(void);
extern void ov112_021E5EEC(void);
extern void ov112_021E5A68(u32 a, u32 b, u32 c, u32 d);
extern void OS_Halt(void);
extern u32 ov112_021FFAA4[];
extern u8 ov112_021FFB24[];

#define A(off) (ov112_021FFAA4[(off) / 4])
#define B(off) (ov112_021FFB24[(off)])

static inline u32 Swap32(u32 v) {
    return (v << 24) | ((v << 8) & 0x00FF0000) | ((v >> 8) & 0x0000FF00) | (v >> 24);
}

static inline u16 Swap16(u16 v) {
    return (u16)(((v >> 8) & 0xFF) | ((v << 8) & 0xFF00));
}

static BOOL CheckBlocked(void) {
    u8 *q;
    switch (A(0x04)) {
    case 0:
        q = (u8 *)A(0x34);
        if ((q[0] >> 4) & 1) {
            ov112_021E5A68(0, 0, 0x9C, 1);
            return TRUE;
        }
        break;
    case 1:
        q = (u8 *)A(0x34);
        if ((q[0] >> 5) & 1) {
            ov112_021E5A68(0, 0, 0x9C, 1);
            return TRUE;
        }
        break;
    case 2:
        q = (u8 *)A(0x34);
        if ((q[0] >> 6) & 1) {
            ov112_021E5A68(0, 0, 0x9C, 1);
            return TRUE;
        }
        break;
    case 3:
        q = (u8 *)A(0x34);
        if ((q[0] >> 7) & 1) {
            ov112_021E5A68(0, 0, 0x9C, 1);
            return TRUE;
        }
        break;
    }
    return FALSE;
}

static void SendBlock(u32 idx) {
    switch (idx) {
    case 0:
        B(0x1D) = 0xB0;
        ov112_021E5EC4(A(0x34) + 4, 0xB804, 0x240);
        break;
    case 1:
        B(0x1D) = 0xB2;
        ov112_021E5EC4(A(0x34) + 0x244, 0xBA44, 0x2FC);
        break;
    case 2:
        B(0x1D) = 0xB4;
        ov112_021E5EC4(A(0x34) + 0x540, 0xBD40, 0x188);
        break;
    case 3:
        B(0x1D) = 0xB6;
        ov112_021E5EC4(A(0x0C), 0xBF00, 0xCBC);
        break;
    }
}

static void HandleAck(u8 cmd, u8 bit) {
    u8 *q;
    u8 b, lo;
    u8 mask = 0xF & ~bit;
    if (CheckBlocked()) {
        return;
    }
    q = (u8 *)A(0x34);
    b = q[0];
    lo = b & 0xF;
    if ((lo & mask) == mask) {
        q[0] = (b & ~0xF) | ((u8)(lo | bit) & 0xF);
        SendBlock(A(0x04));
        ov112_021E5EEC();
        return;
    }
    if (lo & bit) {
        ov112_021E5A68(0, 0, 0x9E, 1);
        return;
    }
    B(0x1D) = cmd;
    ov112_021E5A68(0, 0, 0x24, 1);
}

void ov112_021E6164(void) {
    u64 diff;
    int i;
    u8 *p;
    u8 cmd;

    diff = OS_GetTick() - (((u64)A(0x40) << 32) | A(0x3C));
    _fdiv(_f_ulltof(_ll_udiv(diff << 6, 0x82EA)), 0x447A0000);

    switch (B(0x1D)) {
    case 0x46:
        B(0x1D) = 0x48;
        ov112_021E5EC4(0xCE80, A(0x38), 0xD4C);
        ov112_021E6134();
        return;
    case 0x48:
        p = (u8 *)A(0x38);
        *(u16 *)(p + 0xA) = Swap16(*(u16 *)(p + 0xA));
        for (i = 0; i < 7; i++) {
            p = (u8 *)A(0x38);
            *(u32 *)(p + 0x70 + i * 4) = Swap32(*(u32 *)(p + 0x70 + i * 4));
        }
        p = (u8 *)A(0x38);
        *(u32 *)(p + 0) = Swap32(*(u32 *)(p + 0));
        p = (u8 *)A(0x38);
        *(u32 *)(p + 4) = Swap32(*(u32 *)(p + 4));
        p = (u8 *)A(0x38) + 0x8C;
        for (i = 0; i < 0x18; i++) {
            *(u32 *)(p + 0) = Swap32(*(u32 *)(p + 0));
            *(u16 *)(p + 0x78) = Swap16(*(u16 *)(p + 0x78));
            *(u16 *)(p + 0x7A) = Swap16(*(u16 *)(p + 0x7A));
            *(u32 *)(p + 0x7C) = Swap32(*(u32 *)(p + 0x7C));
            *(u32 *)(p + 0x80) = Swap32(*(u32 *)(p + 0x80));
            p += 0x88;
        }
        cmd = B(0x1C);
        if (cmd == 0x60) {
            B(0x1D) = 0x4C;
            ov112_021E5EC4(0xDE24, A(0x30) + 0x224, 0x1568);
            ov112_021E6134();
        } else if (cmd >= 0xB0 && cmd <= 0xBE && (cmd & 1) == 0) {
            B(0x1D) = 0x4A;
            ov112_021E5EC4(0xB800, A(0x34), 4);
            ov112_021E6134();
        } else {
            B(0x1D) = 0x4A;
            ov112_021E5EC4(0xB800, A(0x34), 0x6C8);
            ov112_021E6134();
        }
        return;
    case 0x4A:
        cmd = B(0x1C);
        switch (cmd) {
        case 0x52:
            ov112_021E5A68(0, 0, 0x24, 1);
            return;
        case 0x40:
            B(0x1D) = 0x4C;
            ov112_021E5EC4(0xDE24, A(0x30) + 0x224, 0x1568);
            ov112_021E6134();
            return;
        case 0xB0:
            p = (u8 *)A(0x34);
            if ((p[0] >> 4) & 1) {
                ov112_021E5A68(0, 0, 0x9C, 1);
                return;
            }
            B(0x1D) = 0xB0;
            ov112_021E5EC4((u32)p + 4, 0xB804, 0x240);
            ov112_021E5EEC();
            return;
        case 0xB2:
            p = (u8 *)A(0x34);
            if ((p[0] >> 5) & 1) {
                ov112_021E5A68(0, 0, 0x9C, 1);
                return;
            }
            B(0x1D) = 0xB2;
            ov112_021E5EC4((u32)p + 0x244, 0xBA44, 0x2FC);
            ov112_021E5EEC();
            return;
        case 0xB4:
            p = (u8 *)A(0x34);
            if ((p[0] >> 6) & 1) {
                ov112_021E5A68(0, 0, 0x9C, 1);
                return;
            }
            B(0x1D) = 0xB4;
            ov112_021E5EC4((u32)p + 0x540, 0xBD40, 0x188);
            ov112_021E5EEC();
            return;
        case 0xB6:
            p = (u8 *)A(0x34);
            if ((p[0] >> 7) & 1) {
                ov112_021E5A68(0, 0, 0x9C, 1);
                return;
            }
            B(0x1D) = 0xB6;
            ov112_021E5EC4(A(0x0C), 0xBF00, 0xCBC);
            ov112_021E5EEC();
            return;
        case 0xB8:
            HandleAck(0xB8, 1);
            return;
        case 0xBA:
            HandleAck(0xBA, 2);
            return;
        case 0xBC:
            HandleAck(0xBC, 4);
            return;
        case 0xBE:
            HandleAck(0xBE, 8);
            return;
        default:
            OS_Halt();
            return;
        }
    case 0x4C:
        ov112_021E5A68(0, 0, 0x24, 1);
        return;
    default:
        return;
    }
}
