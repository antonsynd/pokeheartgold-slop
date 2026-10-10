#include "global.h"

extern const u16 ov85_021EA7C4[];

/*
 * The asm keeps two 5-entry int tables on its stack: v9 at sp+4 and v8 at sp+0x18 (directly after v9),
 * followed by the saved registers. The table count comes from memory unchecked, so counts of 6 and up
 * run v9 into v8 and v8 into the saved registers. The tables are modelled as one flat run of words
 * starting at sp+4 (flat index 0..14 = sp+4..sp+0x3c); indexes beyond it read the caller's stack,
 * addressed from the entry stack pointer.
 */
static int FlatRead(int *stk, u8 *entrySp, int k) {
    u8 *at = entrySp - 0x3c + k * 4;

    if (k >= 0 && k <= 14) {
        return stk[k];
    }
    if (at < entrySp && at >= entrySp - 0x1000) {
        return 0;
    }
    return *(int *)at;
}

static void FlatWrite(int *stk, int k, int v) {
    if (k >= 0 && k <= 14) {
        stk[k] = v;
    }
}

u8 *ov85_021E7958(u8 *param0) {
    int i, j;
    int count = *(int *)(param0 + 0x30);
    u8 *v10 = param0 + 0x190;
    int stk[15];
    u8 *entrySp = (u8 *)__builtin_frame_address(0) + 8;
    int key, keyIdx;
    int v4 = *(u16 *)((u8 *)ov85_021EA7C4 + count * 10 + *(int *)(param0 + 0x2c) * 2) << 12;

    for (i = 0; i < 15; i++) {
        stk[i] = 0;
    }

    i = 0;
    do {
        FlatWrite(stk, i, i);
        FlatWrite(stk, 5 + i, 0xffff);
        i++;
    } while (i < count);

    for (i = 0; i < count; i++) {
        int v5 = *(int *)(v10 + 0x15c + i * 0xb0);
        int v6 = v4 - v5;
        if (v6 < 0) {
            v6 = (v4 + 360 * 4096) - v5;
        }
        FlatWrite(stk, 5 + i, v6 / 4096);
    }

    for (i = 1; i < count; i++) {
        keyIdx = FlatRead(stk, entrySp, i);
        key = FlatRead(stk, entrySp, 5 + keyIdx);
        for (j = i - 1; j >= 0 && FlatRead(stk, entrySp, 5 + FlatRead(stk, entrySp, j)) > key; j--) {
            FlatWrite(stk, j + 1, FlatRead(stk, entrySp, j));
        }
        FlatWrite(stk, j + 1, keyIdx);
    }

    return v10 + 0x140 + FlatRead(stk, entrySp, 0) * 0xb0;
}
