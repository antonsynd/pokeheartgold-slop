#include "global.h"
#include "filesystem.h"

u8 *ov96_021E60D8(void *param_1, u32 param_2, u32 param_3);
void GF_AssertFail(void);

/*
 * The asm reads a 15-word table (narc member 5 of 0xaa, read into sp+8) with three byte indices that are
 * only checked by an assert that logs. To behave the same for any index, every table word is read at the
 * address the asm would read: entry_sp - 0x50 + 4*k. Words 0..14 are the table, words 15..17 are the
 * caller's r4-r6 that the asm pushes, 18/19 are r7/lr (same slots in clang's frame), the rest is the
 * caller's frame.
 */
void ov96_0220D200(u32 *param_1, u32 param_2, void *param_3)
{
    u32 framePadding[15]; /* first local: keeps the C locals below the table at entry_sp - 0x50 */
    u32 savedRegs[3]; /* the caller's r4-r6 */
    u32 *tbl;
    u32 i;

    __asm__ volatile("movs %0, r4" : "=l"(savedRegs[0]) : : "cc");
    __asm__ volatile("movs %0, r5" : "=l"(savedRegs[1]) : : "cc");
    __asm__ volatile("movs %0, r6" : "=l"(savedRegs[2]) : : "cc");
    tbl = (u32 *)((u8 *)__builtin_frame_address(0) + 8 - 0x50);
    (void)framePadding;

    ReadWholeNarcMemberByIdPair(tbl, 0xaa, 5);
    for (i = 0; i < 3; i++) {
        u8 *r4 = ov96_021E60D8(param_3, param_2, i);
        u32 k0, k3, k4;
        u32 t0, t3, t4;
        u32 w;

        if (r4[0] >= 5) {
            GF_AssertFail();
        }
        if (r4[3] >= 5) {
            GF_AssertFail();
        }
        if (r4[4] >= 5) {
            GF_AssertFail();
        }
        /* the bytes are read again at each step, after the stores before it (r4 may alias *param_1) */
        k0 = r4[0];
        t0 = (k0 >= 15 && k0 < 18) ? savedRegs[k0 - 15] : tbl[k0];
        w = (*param_1 & 0xFFFFFE00u) | (t0 & 0x1FF);
        *param_1 = w;
        k3 = r4[3] + 5;
        t3 = (k3 >= 15 && k3 < 18) ? savedRegs[k3 - 15] : tbl[k3];
        w = (w & 0xFFFC01FFu) | ((t3 & 0x1FF) << 9);
        *param_1 = w;
        k4 = r4[4] + 10;
        t4 = (k4 >= 15 && k4 < 18) ? savedRegs[k4 - 15] : tbl[k4];
        w = (w & 0x03FFFFFFu) | (t4 << 26);
        *param_1 = w;
        *param_1 = (w & 0xFC03FFFFu) | (((w >> 9) & 0xFF) << 18);
        param_1++;
    }
}
