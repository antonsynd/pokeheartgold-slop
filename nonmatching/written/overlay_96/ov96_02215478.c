#include "global.h"
#include "math_util.h"
#include "error_handling.h"

int ov96_02215614(int a0, int a1, int a2, int a3);

typedef struct UnkStruct_ov96_02215478 {
    u8 unk00[0x30];
    s32 unk30;
    s32 unk34;
} UnkStruct_ov96_02215478;

typedef struct UnkPair_ov96_02215478 {
    u32 unk00;
    UnkStruct_ov96_02215478 *unk04;
} UnkPair_ov96_02215478;

typedef struct UnkGroup_ov96_02215478 {
    UnkPair_ov96_02215478 pairs[3];
    u8 unk18[0xc];
} UnkGroup_ov96_02215478;

typedef struct UnkOut_ov96_02215478 {
    u8 unk00[0x24];
    u32 unk24;
    u32 unk28;
} UnkOut_ov96_02215478;

#define CELL(v) (((s32)(v) + (s32)((u32)((s32)(v) >> 11) >> 20)) >> 12)

/*
 * The original keeps its arguments, the loop counter, counts[4] and the registers its prologue pushed in one
 * 0x28-byte stack frame, and counts[] is indexed by ov96_02215614's unchecked return value.  FRAME models that
 * frame word for word (param_1, param_2, param_3, i, counts, saved r4, r5, r6, r7, lr), and an index that leaves
 * counts[] lands where the original's store would: elsewhere in the frame, or in the caller's memory.
 */
typedef struct Frame_ov96_02215478 {
    UnkOut_ov96_02215478 *param_1;
    UnkGroup_ov96_02215478 *param_2;
    u32 param_3;
    u32 i;
    u8 counts[4];
    u32 savedR4;
    u32 savedR5;
    u32 savedR6;
    u32 savedR7;
    u32 savedLr;
} Frame_ov96_02215478;

static u8 *ov96_02215478_CountPtr(Frame_ov96_02215478 *frame, u8 *entrySp, u32 index)
{
    u32 address = (u32)(entrySp - 0x18) + index;
    u32 base = (u32)entrySp - sizeof(Frame_ov96_02215478);

    if (address - base < sizeof(Frame_ov96_02215478)) {
        return (u8 *)frame + (address - base);
    }
    return (u8 *)address;
}

u32 ov96_02215478(UnkOut_ov96_02215478 *param_1, UnkGroup_ov96_02215478 *param_2, u32 param_3)
{
    Frame_ov96_02215478 frame;
    u32 callerR4, callerR5, callerR6;
    u8 *entrySp;
    u32 j;
    u32 k;
    u32 best;
    u32 a;
    u32 b;
    u16 rnd;
    s32 cell;
    u8 *count;
    UnkStruct_ov96_02215478 *s;

    __asm__ volatile("movs %0, r4" : "=l"(callerR4) : : "cc");
    __asm__ volatile("movs %0, r5" : "=l"(callerR5) : : "cc");
    __asm__ volatile("movs %0, r6" : "=l"(callerR6) : : "cc");

    /* clang -O0 Thumb: the frame record (caller's r7, lr) sits just below the entry stack pointer */
    entrySp = (u8 *)__builtin_frame_address(0) + 8;
    frame.savedR4 = callerR4;
    frame.savedR5 = callerR5;
    frame.savedR6 = callerR6;
    frame.savedR7 = *(u32 *)__builtin_frame_address(0);
    frame.savedLr = (u32)__builtin_return_address(0);

    frame.param_1 = param_1;
    frame.param_3 = param_3;
    frame.i = 0;
    frame.counts[0] = 0;
    frame.counts[1] = 0;
    frame.counts[2] = 0;
    frame.counts[3] = 0;
    frame.param_2 = param_2;

    do {
        for (j = 0; (u8)j < 3; j = (u8)(j + 1)) {
            s = frame.param_2[frame.i].pairs[j].unk04;
            cell = ov96_02215614(0x80, 0x60, CELL(s->unk30), CELL(s->unk34));
            if (cell != 4) {
                count = ov96_02215478_CountPtr(&frame, entrySp, (u32)cell);
                *count = *count + 1;
            }
        }
        frame.i = (u8)(frame.i + 1);
    } while (frame.i < 4);

    best = 0;
    for (k = 1; k < 4; k = (u8)(k + 1)) {
        if (frame.counts[k - 1] > frame.counts[k] && k != frame.param_3) {
            best = k;
        }
    }

    rnd = LCRandom();
    a = rnd & 0x3f;
    rnd = LCRandom();
    b = rnd & 0x1f;

    switch (best) {
    case 0:
        frame.param_1->unk24 = (0x80 - a) * 0x1000;
        frame.param_1->unk28 = (0x60 - b) * 0x1000;
        break;
    case 1:
        frame.param_1->unk24 = (a + 0x80) * 0x1000;
        frame.param_1->unk28 = (0x60 - b) * 0x1000;
        break;
    case 2:
        frame.param_1->unk24 = (0x80 - a) * 0x1000;
        frame.param_1->unk28 = (b + 0x60) * 0x1000;
        break;
    case 3:
        frame.param_1->unk24 = (a + 0x80) * 0x1000;
        frame.param_1->unk28 = (b + 0x60) * 0x1000;
        break;
    default:
        GF_AssertFail();
    }
    return 10;
}
