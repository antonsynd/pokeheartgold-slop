#include "global.h"

typedef struct UnkStruct_ov96_0221A730 {
    u8 unk_0[9];
    u8 unk_9;
    u16 unk_A;
    s32 unk_C;
} UnkStruct_ov96_0221A730;

UnkStruct_ov96_0221A730 *ov96_021E94EC(void *param_1, u32 param_2);

const u8 ov96_0221D99C[4] = { 0x64, 0x50, 0x46, 0x3C };

/*
 * The original keeps three 4-byte arrays contiguously in its frame (tbl at sp+8, counters at sp+0xc,
 * bytes at sp+0x10), directly below the registers its prologue pushed (r4-r7, lr) and the caller's frame.
 * The table is read at tbl[bytes[i] + counters[i]] with no bounds check, so a byte above 3 reads on
 * past the arrays. READ() reproduces that: byte offset `off` from the table start is the arrays for
 * off < 12, the saved r4, r5, r6, r7, lr for 12..31 and the memory at the entry stack pointer
 * (`__builtin_frame_address(0) + 8` under the check's clang -O0 Thumb build) upwards after that.
 */
#define OV96_0221A730_READ(off)                                                              \
    ((off) < 4 ? tbl[(off)]                                                                  \
               : (off) < 8 ? counters[(off) - 4]                                             \
                           : (off) < 12 ? bytes[(off) - 8]                                   \
                                        : (off) < 32 ? (u8)(saved[((off) - 12) >> 2] >> (8 * (((off) - 12) & 3))) \
                                                     : entrySp[(off) - 32])

void ov96_0221A730(void *param_1)
{
    u32 saved[5];
    u8 tbl[4];
    u8 counters[4];
    u8 bytes[4];
    u32 *frame;
    u8 *entrySp;
    u32 i;
    u32 k;

    {
        register u32 *p __asm__("r0") = saved;
        __asm__ volatile("str r4, [r0, #0]\n\tstr r5, [r0, #4]\n\tstr r6, [r0, #8]"
                         :
                         : "l"(p)
                         : "memory");
    }
    frame = (u32 *)__builtin_frame_address(0);
    saved[3] = frame[0]; // caller's r7, pushed with lr by the prologue
    saved[4] = frame[1]; // lr
    entrySp = (u8 *)frame + 8;

    tbl[0] = ov96_0221D99C[0];
    tbl[1] = ov96_0221D99C[1];
    tbl[2] = ov96_0221D99C[2];
    tbl[3] = ov96_0221D99C[3];

    for (i = 0; i < 4; i = (u8)(i + 1)) {
        bytes[i] = ov96_021E94EC(param_1, i)->unk_9;
        counters[i] = 0;
    }

    for (i = 0; i < 4; i = (u8)(i + 1)) {
        u32 b = bytes[i];
        UnkStruct_ov96_0221A730 *p = ov96_021E94EC(param_1, i);
        u32 v;

        for (k = 0; k < 4; k = (u8)(k + 1)) {
            if (i != k && b == bytes[k]) {
                counters[i] = counters[i] + 1;
            }
        }

        {
            u32 off = (u32)counters[i] + b;
            v = (u32)OV96_0221A730_READ(off) + p->unk_C * 5;
        }
        v = (u16)v;
        if ((double)v > 200.0) {
            v = 200;
        }
        p->unk_A = v;
    }
}
