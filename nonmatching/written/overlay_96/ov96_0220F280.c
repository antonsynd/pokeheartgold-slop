#include "global.h"
#include "filesystem.h"

u8 *ov96_021E60D8(void *param_1, u32 param_2, u32 param_3);
u8 *ov96_0220F378(void *param_1, u32 param_2, u32 param_3);
void GF_AssertFail(void);

#define OV96_0220F280_SCALE(w) \
    ((s32)((w) > 0 ? (0.5f + (float)(s32)((u32)(w) << 12)) : ((float)(s32)((u32)(w) << 12) - 0.5f)) / 10)

/*
 * The original keeps a 20-word table (four blocks of 5 words) in its frame, filled by
 * ReadWholeNarcMemberByIdPair, and indexes each block with a byte that is only checked by
 * GF_AssertFail (execution continues). A byte >= 5 therefore reads past the block: first the
 * following blocks, then past the end of the 0x50-byte table into the saved r3-r7/lr that the
 * prologue pushed, then into the caller's frame. TBL() reproduces that: byte offset `off` from
 * the table start is the table for off < 0x50, the registers saved on entry for 0x50..0x67
 * and the memory at the entry stack pointer upwards after that.
 */
#define OV96_0220F280_TBL(off)                                                         \
    ((off) < 0x50 ? *(u32 *)((u8 *)buf + (off))                                        \
                  : (off) < 0x68 ? saved[((off) - 0x50) >> 2]                          \
                                 : *(u32 *)((u8 *)entrySp + ((off) - 0x68)))

void ov96_0220F280(u8 *param_1)
{
    u32 saved[6];
    u32 buf[20];
    u32 *frame;
    u8 *entrySp;
    u32 i;
    u32 j;

    {
        register u32 *p __asm__("r0") = saved;
        __asm__ volatile("str r3, [r0, #0]\n\tstr r4, [r0, #4]\n\tstr r5, [r0, #8]\n\tstr r6, [r0, #12]"
                         :
                         : "l"(p)
                         : "memory");
    }
    frame = (u32 *)__builtin_frame_address(0);
    saved[4] = frame[0]; // caller's r7, pushed with lr by the prologue
    saved[5] = frame[1]; // lr
    entrySp = (u8 *)frame + 8;

    ReadWholeNarcMemberByIdPair(buf, 0xaa, 7);
    for (i = 0; i < 4; i++) {
        for (j = 0; j < 3; j++) {
            u8 *r4 = ov96_021E60D8(param_1, i, j);
            u8 *r5 = ov96_0220F378(param_1, (u8)i, (u8)j);

            if (r4[2] >= 5) {
                GF_AssertFail();
            }
            if (r4[0] >= 5) {
                GF_AssertFail();
            }
            if (r4[1] >= 5) {
                GF_AssertFail();
            }
            r5[2] = r4[2];
            r5[0] = (u8)OV96_0220F280_TBL(4u * r4[2]);
            r5[1] = (u8)OV96_0220F280_TBL(4u * r4[2] + 0x14);
            {
                s32 w = (s32)OV96_0220F280_TBL(4u * r4[0] + 0x28);
                *(s32 *)(r5 + 4) = OV96_0220F280_SCALE(w);
            }
            {
                s32 w = (s32)OV96_0220F280_TBL(4u * r4[1] + 0x3c);
                *(s32 *)(r5 + 8) = OV96_0220F280_SCALE(w);
            }
        }
    }
}
