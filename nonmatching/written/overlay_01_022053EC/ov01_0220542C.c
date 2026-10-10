#include "global.h"

void GF_AssertFail(void);

extern const int ov01_02209710[4];
extern const int ov01_02209720[4];
extern const int ov01_02209730[4];
extern const int ov01_02209740[4];

/*
 * The original copies the four tables to a 0x40-byte stack area
 * (sp+0x00 = ov01_02209710, +0x10 = ov01_02209740, +0x20 = ov01_02209730,
 * +0x30 = ov01_02209720) under push {r4, r5, r6, lr}, and returns
 * area[off + 4 * param0] with no bounds check, where off is 0x20, 0x10 or 0
 * depending on which table holds param1. That frame is emulated so an
 * out-of-range param0 reads what the original would: the tables, the saved
 * r4/r5/r6/lr, or the memory at (entry sp - 0x50 + offset).
 */
int ov01_0220542C(int param0, int param1) {
    u32 r4v, r5v, r6v;
    u32 *fp;
    u32 off;
    u8 i;

    __asm__ volatile("movs %0, r4" : "=l"(r4v) : : "cc");
    __asm__ volatile("movs %0, r5" : "=l"(r5v) : : "cc");
    __asm__ volatile("movs %0, r6" : "=l"(r6v) : : "cc");
    fp = (u32 *)__builtin_frame_address(0);

    for (i = 0; i < 4; i++) {
        if (param1 == ov01_02209720[i]) {
            off = 0x20;
            goto found;
        }
    }
    for (i = 0; i < 4; i++) {
        if (param1 == ov01_02209730[i]) {
            off = 0x10;
            goto found;
        }
    }
    for (i = 0; i < 4; i++) {
        if (param1 == ov01_02209740[i]) {
            off = 0;
            goto found;
        }
    }
    GF_AssertFail();
    return 0;

found:
    off += (u32)param0 * 4;
    if (off < 0x10) {
        return ov01_02209710[off >> 2];
    }
    if (off < 0x20) {
        return ov01_02209740[(off - 0x10) >> 2];
    }
    if (off < 0x30) {
        return ov01_02209730[(off - 0x20) >> 2];
    }
    if (off < 0x40) {
        return ov01_02209720[(off - 0x30) >> 2];
    }
    if (off < 0x44) {
        return r4v;
    }
    if (off < 0x48) {
        return r5v;
    }
    if (off < 0x4C) {
        return r6v;
    }
    if (off < 0x50) {
        return fp[1];
    }
    return *(volatile int *)((u32)fp + 8 - 0x50 + off);
}
