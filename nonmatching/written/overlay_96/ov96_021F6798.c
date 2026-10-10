#include "global.h"

extern u8 ov96_0221DC18[];

BOOL sub_0200606C(u16 seqNo, int playerNo);
u8 ov96_021E5F24(void *ctx);
void ov96_021E8228(void *ctx, u32 a, int idx, int c, int d);
void ov96_021F64A0(u8 *base, u32 mask, s32 *table);
void ov96_021F6B28(u8 *p, s32 *e);
void ov96_021F6BE4(u8 *base, int idx, u8 val, s32 pos);
void ov96_021F7130(u8 *p);

#define TBL(i) ((i) < 128 ? tbl[i] : *(s32 *)(entrySp - 0x214 + (i) * 4))

void ov96_021F6798(void *ctx, u8 *base, int idx) {
    s32 *e;
    u8 v;
    u32 r7;
    u32 mask;
    s32 tbl[128];
    u32 entrySp;
    s32 off;
    s32 t;
    s32 tmp;

    // The original keeps the 128-entry table at entry_sp - 0x214 and indexes it with r7 unchecked; out of range
    // reads go to the same stack-relative address (clang's frame pointer is entry_sp - 8).
    entrySp = (u32)__builtin_frame_address(0) + 8;
    e = (s32 *)(base + 0xfac + idx * 0x1c);
    if (e[5] == 0) {
        return;
    }
    v = ov96_021E5F24(ctx);
    r7 = *(u32 *)(base + idx * 4 + 0xfa0);
    if (idx == 0) {
        mask = 6;
    } else if (idx == 1) {
        mask = 5;
    } else if (idx == 2) {
        mask = 3;
    } else {
        GF_AssertFail();
        return;
    }
    ov96_021F64A0(base + 0x1a0, mask, tbl);
    off = idx * 0x38;
    if (e[4] != 0) {
        if (e[6] <= 0) {
            GF_AssertFail();
            e[4] = 0;
            e[2] = TBL(r7);
            e[6] = 0;
            e[5] = 0;
            e[0] = 0;
            *(u8 *)(base + off + 0xb8) = 1;
            ov96_021F6BE4(base, idx, (u8)r7, 0);
            return;
        }
        e[2] = e[2] + e[0];
        if (*(s32 *)(base + off + 0xa8) != 0) {
            ov96_021F6B28(base + 0x90 + off, e);
        }
        t = TBL(r7);
        if (e[2] > t) {
            e[0] = (s32)((double)e[0] - 128.0);
            if (-e[0] > e[6]) {
                e[0] = -e[6];
            }
        } else if (e[0] == 0) {
            e[4] = 0;
            e[2] = TBL(r7);
            e[6] = 0;
            e[5] = 0;
            ov96_021F6BE4(base, idx, (u8)r7, 0);
        } else if (e[0] < 0) {
            e[4] = 0;
            ov96_021F7130(base + 0x90 + off);
            if ((double)e[0] > -128.0) {
                e[0] = -128;
            }
            e[6] = e[0];
        } else {
            e[4] = 0;
            e[2] = TBL(r7);
            e[6] = 0;
            e[5] = 0;
            e[0] = 0;
            ov96_021F6BE4(base, idx, (u8)r7, 0);
        }
    } else {
        if (e[6] > 0) {
            GF_AssertFail();
        }
        e[2] = e[2] + e[0];
        if ((double)e[2] < -6144.0) {
            e[2] = -6144;
            e[0] = 0;
        }
        t = TBL(r7);
        if (e[2] >= t) {
            ov96_021F6BE4(base, idx, (u8)r7, 0);
            if (*(u8 *)(base + 0xb8 + off) != 0) {
                e[0] = (*(s32 *)(base + off + 0xbc) * e[0]) / 12;
            }
            if (e[0] > 0x898) {
                e[0] = 0x898;
            }
            e[0] = (e[0] * 9) / 10;
            if (e[0] == 0) {
                if (*(u8 *)(base + 0xb8 + off) != 0) {
                    sub_0200606C(0x5f3, ov96_0221DC18[3]);
                }
                e[4] = 0;
                e[2] = TBL(r7);
                e[6] = 0;
                e[5] = 0;
                ov96_021F6BE4(base, idx, (u8)r7, 0);
            } else if (e[0] > 0) {
                if (!((double)e[0] <= 1408.0) || *(u8 *)(base + 0xb8 + off) != 0) {
                    e[4] = 1;
                    e[6] = e[0];
                    *(u8 *)(base + 0xb8 + off) = 0;
                    sub_0200606C(0x656, ov96_0221DC18[3]);
                    ov96_021E8228(ctx, v, idx, 2, 1);
                } else {
                    e[4] = 0;
                    e[2] = TBL(r7);
                    e[6] = 0;
                    e[0] = 0;
                    e[5] = 0;
                    ov96_021F6BE4(base, idx, (u8)r7, 0);
                }
            }
        } else if (e[2] < t) {
            if (e[0] < 0) {
                e[0] = (s32)((double)e[0] + 787.2);
                if (e[0] >= 0) {
                    e[0] = 0;
                }
            } else {
                e[0] = (s32)((double)e[0] + 341.3333333333333);
                if (e[6] >= 0) {
                    GF_AssertFail();
                    e[4] = 0;
                    e[2] = TBL(r7);
                    e[6] = 0;
                    e[5] = 0;
                    e[0] = 0;
                    ov96_021F6BE4(base, idx, (u8)r7, 0);
                    return;
                }
                tmp = -e[6];
                if (e[0] > tmp) {
                    e[0] = tmp;
                }
            }
        }
    }
    if (e[4] == 0 || e[5] == 0 || e[0] == 0) {
        *(u16 *)(base + off + 0xb4) = 0;
    }
    if (e[4] == 0 && e[5] != 0) {
        ov96_021F6BE4(base, idx, (u8)r7, e[2]);
    }
    if (e[5] == 0) {
        *(u8 *)(base + off + 0xb8) = 1;
    }
}
