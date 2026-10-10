#include "global.h"
#include "math_util.h"

// The two pools of indices live in the original's stack frame (pool of 5 at sp + 8, pool of 25 at sp + 0xd, sp being
// the entry stack pointer minus 0x40) and are indexed by a byte that is not bounds checked once the draws outnumber
// the pool, so the read and write reach the saved registers and the caller's frame. The helper therefore works on the
// frame at the original's own addresses: ov96_021E860C reserves stack below its saved registers (it saves r4-r7 and lr,
// which are then at the same addresses as the original's saved r4-r7 and lr) and the helper adds the r3 slot.
static void ov96_021E860C_Work(u32 count, int mode, int flag, u8 *out, u32 sp0) {
    u8 *frame = (u8 *)(sp0 - 0x40);
    u8 *pool25 = frame + 0xd;
    u8 *pool5 = frame + 8;
    u8 i;
    u8 n;
    u8 remaining;
    u8 idx;
    u8 v;

    // The wrapper's own spill slots are in this part of the frame; the original's unwritten words read as zero.
    for (i = 0; i < 0x28; i += 4) {
        *(u32 *)(frame + i) = 0;
    }
    *(u32 *)(frame + 0x28) = (u32)out;
    for (i = 0; i < 3; i++) {
        out[i] = 0;
    }
    if (mode == 10) {
        remaining = 25;
        for (i = 0; i < 25; i++) {
            pool25[i] = i;
        }
        n = 0;
        if (count != 0) {
            do {
                idx = LCRandom() % remaining;
                v = pool25[idx];
                out[n] = v;
                out[n] = v + 25;
                remaining--;
                pool25[idx] = pool25[remaining];
                n++;
            } while (n < count);
        }
    } else {
        remaining = 5;
        for (i = 0; i < 5; i++) {
            pool5[i] = i;
        }
        n = 0;
        if (count != 0) {
            do {
                idx = LCRandom() % remaining;
                v = pool5[idx];
                out[n] = v;
                out[n] = v + mode * 5;
                remaining--;
                pool5[idx] = pool5[remaining];
                n++;
            } while (n < count);
        }
    }
    if (flag != 0) {
        i = 0;
        if (count != 0) {
            do {
                out[i] = out[i] + 50;
                i++;
            } while (i < count);
        }
    }
    i = 0;
    if (count != 0) {
        do {
            out[i] = out[i] + 1;
            i++;
        } while (i < count);
    }
}

void ov96_021E860C(u32 count, int mode, int flag, u8 *out) {
    u8 reserve[0x400];

    // Make clang save r4-r6 (with r7 and lr) so they sit where the original's saved registers do.
    __asm__ volatile("" : : : "r4", "r5", "r6");
    ov96_021E860C_Work(count, mode, flag, out, (u32)__builtin_frame_address(0) + 8);
}
