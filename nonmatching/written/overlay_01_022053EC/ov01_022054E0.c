#include "global.h"

void GF_AssertFail(void);
BOOL ov01_02205584(void *fieldSystem);
u8 sub_020659A8(void *fieldSystem);
int sub_0206599C(void *fieldSystem);

extern const int ov01_02209750[48];

/*
 * The original copies the 3x16 table ov01_02209750 to a 0xC0-byte stack
 * array under push {r3, r4, r5, lr} and reads table[(u8)(kind - 1)][idx]
 * with no bounds check (the idx >= 16 assert does not return). That frame
 * is emulated so out-of-range indices read what the original would: the
 * table, the saved r3/r4/r5/lr, or the memory at (entry sp - 0xD0 + offset).
 */
s32 ov01_022054E0(void *fieldSystem) {
    u32 r3v, r4v, r5v;
    u32 *fp;
    u8 kind;
    int idx;
    u32 off;

    __asm__ volatile("movs %0, r3" : "=l"(r3v) : : "cc");
    __asm__ volatile("movs %0, r4" : "=l"(r4v) : : "cc");
    __asm__ volatile("movs %0, r5" : "=l"(r5v) : : "cc");
    fp = (u32 *)__builtin_frame_address(0);

    if (ov01_02205584(fieldSystem)) {
        return 0;
    }
    kind = sub_020659A8(fieldSystem);
    if (kind == 0) {
        return 0;
    }
    idx = sub_0206599C(fieldSystem);
    if (idx >= 16) {
        GF_AssertFail();
    }
    off = ((u32)(u8)(kind - 1) << 6) + (u32)idx * 4;
    if (off < 0xC0) {
        return ov01_02209750[off >> 2];
    }
    if (off < 0xC4) {
        return r3v;
    }
    if (off < 0xC8) {
        return r4v;
    }
    if (off < 0xCC) {
        return r5v;
    }
    if (off < 0xD0) {
        return fp[1];
    }
    return *(volatile int *)((u32)fp + 8 - 0xD0 + off);
}
