#include "global.h"
#include "assert.h"

// The original keeps idx and the four sums in its stack frame ([sp] = idx, [sp + 4..0x14] = sums) and indexes the
// sums by an unchecked key read from memory, so a wild key reads and writes the stack around the array: the saved
// registers (including lr) above it and the caller's frame beyond. To behave the same, the work is done by a helper
// that puts those words at the original's own addresses (relative to the entry stack pointer), and ov96_021E9570 only
// reserves the stack below its own saved registers so that the helper's frame is out of the way.
static void ov96_021E9570_Work(u8 *param0, int idx, u32 sp0) {
    u32 *frame = (u32 *)(sp0 - 0x28);
    int i;
    int k;
    u8 *dest;

    frame[0] = idx;
    for (k = 1; k < 5; k++) {
        frame[k] = 0;
    }
    if ((int)frame[0] >= 10) {
        GF_AssertFail();
    }
    i = 0;
    if (*(int *)param0 > 0) {
        u8 **items = (u8 **)(param0 + 0x144);
        do {
            u8 *item = *items++;
            u32 *slot = (u32 *)((u32)(frame + 1) + *(u32 *)item * 4);

            i++;
            *slot = *slot + *(u16 *)(item + 0xa);
        } while (i < *(int *)param0);
    }
    dest = param0 + (frame[0] << 4);
    for (k = 0; k < 4; k++) {
        *(u32 *)(dest + 0x174 + k * 4) = frame[1 + k];
    }
}

void ov96_021E9570(u8 *param0, int idx) {
    u8 reserve[0x400];

    ov96_021E9570_Work(param0, idx, (u32)__builtin_frame_address(0) + 8);
}
