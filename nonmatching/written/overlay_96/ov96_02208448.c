#include "global.h"

u8 *ov96_021EB594(u32 a);
void ov96_021EB588(u32 a, void *b);
void ov96_022082BC(u8 *a, u32 b, u32 c);
void ov96_022088AC(u8 *a, u32 b);

#define OV96_02208448_TOGGLE(p_) \
    do { \
        u32 x_ = (u32)(*(u16 *)(p_) + 1); \
        u32 r2_ = x_ >> 31; \
        u32 r1_ = (x_ << 31) - r2_; \
        r1_ = (r1_ >> 31) | (r1_ << 1); \
        *(u16 *)(p_) = (u16)(r2_ + r1_); \
    } while (0)

u32 ov96_02208448(u8 *param_1, u32 param_2)
{
    u32 st = *(u32 *)(param_1 + 0x19c);
    u32 T[3];
    u32 idx;
    u32 p;
    u8 *q;
    u32 k;

    if (st > 3) {
        return 0;
    }
    switch (st) {
    case 0:
        idx = *(u16 *)(param_1 + 0x1a0);
        p = *(u32 *)(param_1 + 4 * idx + 0x130);
        q = ov96_021EB594(p);
        for (k = 0; k < 3; k++) {
            T[k] = ((u32 *)q)[k];
        }
        T[1] += 0x20000;
        ov96_021EB588(p, T);
        if ((s32)T[1] >= 0xe7 << 14) {
            T[1] = 0xa5 << 14;
            idx = *(u16 *)(param_1 + 0x1a0);
            ov96_021EB588(*(u32 *)(param_1 + 4 * idx + 0x130), T);
            *(u32 *)(param_1 + 0x19c) = *(u32 *)(param_1 + 0x19c) + 1;
        }
        return 0;
    case 1:
        ov96_022082BC(param_1, (u8)*(u16 *)(param_1 + 0x1a0), param_2);
        OV96_02208448_TOGGLE(param_1 + 0x1a0);
        *(u32 *)(param_1 + 0x19c) = *(u32 *)(param_1 + 0x19c) + 1;
        return 0;
    case 2:
        idx = *(u16 *)(param_1 + 0x1a0);
        p = *(u32 *)(param_1 + 4 * idx + 0x130);
        q = ov96_021EB594(p);
        for (k = 0; k < 3; k++) {
            T[k] = ((u32 *)q)[k];
        }
        T[1] += 0x20000;
        ov96_021EB588(p, T);
        if ((s32)T[1] < 0xd1 << 14) {
            return 0;
        }
        T[1] = 0xd1 << 14;
        idx = *(u16 *)(param_1 + 0x1a0);
        ov96_021EB588(*(u32 *)(param_1 + 4 * idx + 0x130), T);
        OV96_02208448_TOGGLE(param_1 + 0x1a0);
        *(u32 *)(param_1 + 0x19c) = *(u32 *)(param_1 + 0x19c) + 1;
        return 0;
    default:
        idx = *(u16 *)(param_1 + 0x1a0);
        p = *(u32 *)(param_1 + 4 * idx + 0x130);
        q = ov96_021EB594(p);
        for (k = 0; k < 3; k++) {
            T[k] = ((u32 *)q)[k];
        }
        T[1] += 0x20000;
        ov96_021EB588(p, T);
        if ((s32)T[1] < 0xbb << 14) {
            return 0;
        }
        T[1] = 0xbb << 14;
        idx = *(u16 *)(param_1 + 0x1a0);
        ov96_021EB588(*(u32 *)(param_1 + 4 * idx + 0x130), T);
        OV96_02208448_TOGGLE(param_1 + 0x1a0);
        ov96_022088AC(param_1, (u8)((s32)(param_2 + 2) % 3));
        *(u32 *)(param_1 + 0x19c) = 0;
        return 1;
    }
}
