#include "global.h"
#include "filesystem.h"

u8 *ov96_021E60D8(void *param_1, int param_2, int param_3);
int *ov96_0221935C(void *param_1, u8 param_2, u8 param_3);
void GF_AssertFail(void);

/*
 * The asm reads a 30-word table (narc member 9 of 0xaa, zeroed first, at sp+0xc) with four byte indices that
 * are only checked by an assert that logs. To behave the same for any index, every table word is read at the
 * address the asm would read: entry_sp - 0x8c + 4*k. Words 0..29 are the table, words 30..32 are the caller's
 * r4-r6 that the asm pushes, 33/34 are r7/lr (same slots in clang's frame), the rest is the caller's frame.
 */
#define TBL(k)                                                  \
    ({                                                          \
        u32 k_ = (k);                                           \
        (k_ >= 30 && k_ < 33) ? savedRegs[k_ - 30] : tbl[k_];   \
    })

/* round-to-nearest of (word << 12) as a float (0.5 is the first operand of _fadd), truncated by _ffix */
#define ROUNDED(word)                       \
    ({                                      \
        int v_ = (word);                    \
        float f_ = (float)(int)((u32)v_ << 12); \
        float half_ = 0.5f;                 \
        if (v_ > 0) {                       \
            f_ = half_ + f_;                \
        } else {                            \
            f_ = f_ - half_;                \
        }                                   \
        (int)f_;                            \
    })

void ov96_0221918C(void *param_1)
{
    u32 framePadding[32]; /* first local: keeps the C locals below the table at entry_sp - 0x8c */
    u32 savedRegs[3]; /* the caller's r4-r6 */
    u32 *tbl;
    int i;
    int j;
    u8 *r4;
    int *r5;
    int k;

    __asm__ volatile("movs %0, r4" : "=l"(savedRegs[0]) : : "cc");
    __asm__ volatile("movs %0, r5" : "=l"(savedRegs[1]) : : "cc");
    __asm__ volatile("movs %0, r6" : "=l"(savedRegs[2]) : : "cc");
    tbl = (u32 *)((u8 *)__builtin_frame_address(0) + 8 - 0x8c);
    (void)framePadding;

    for (k = 0; k < 30; k++) {
        tbl[k] = 0;
    }
    ReadWholeNarcMemberByIdPair(tbl, 0xaa, 9);

    for (i = 0; i < 4; i++) {
        for (j = 0; j < 3; j++) {
            r4 = ov96_021E60D8(param_1, i, j);
            r5 = ov96_0221935C(param_1, i, j);
            if (r4[0] >= 5) {
                GF_AssertFail();
            }
            if (r4[3] >= 5) {
                GF_AssertFail();
            }
            if (r4[1] >= 5) {
                GF_AssertFail();
            }
            if (r4[2] >= 5) {
                GF_AssertFail();
            }
            /* the index bytes are read again at each step, after the stores before it (r4 may alias r5) */
            r5[0] = ROUNDED(TBL(r4[0])) / 10;
            r5[1] = ROUNDED(TBL(r4[0] + 5)) / 10;
            r5[2] = ROUNDED(TBL(r4[3] + 10));
            r5[3] = ROUNDED(TBL(r4[1] + 15)) / 10;
            r5[4] = ROUNDED(TBL(r4[2] + 25)) / 10;
            r5[5] = ROUNDED(TBL(r4[2] + 25)) / 10;
            *((u8 *)(r5 + 6)) = r4[2];
        }
    }
}
