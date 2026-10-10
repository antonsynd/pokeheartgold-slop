#include "global.h"

// 17 (giftType, paletteOffset) pairs; the 0xFF terminator is compared against a
// widened -1 in the original, so the search below never stops at it.
const u8 _0223B73C[34] = {
    0, 0, 1, 1, 2, 1, 3, 2, 4, 3, 5, 2, 6, 2, 7, 0, 8, 5, 9, 5, 10, 5, 11, 4, 12, 5, 13, 5, 14, 2, 15, 2, 255, 0,
};

// The original lays out, from its stack pointer upwards: table[0x24], the pushed r4, then the caller's frame.
// The search for an unknown giftType runs on through those bytes, so they are reproduced here.
static u8 ReadStackByte(const u8 *table, const u8 *entrySp, u32 callerR4, u32 pos) {
    if (pos < 0x24) {
        return table[pos];
    }
    if (pos < 0x28) {
        return (u8)(callerR4 >> (8 * (pos - 0x24)));
    }
    return entrySp[pos - 0x28];
}

u32 ov74_02235AC4(u32 giftType) {
    u32 callerR4;
    u8 table[0x24];
    const u8 *entrySp;
    int i;
    __asm__ volatile("movs %0, r4" : "=l"(callerR4) : : "cc");
    entrySp = (const u8 *)__builtin_frame_address(0) + 8;

    for (i = 0; i < 0x22; i++) {
        table[i] = _0223B73C[i];
    }

    for (i = 0;; i++) {
        u32 pos = i * 2;
        u8 key = ReadStackByte(table, entrySp, callerR4, pos);
        if (key == 0xFFFFFFFFu) {
            return 0;
        }
        if (giftType == key) {
            return ReadStackByte(table, entrySp, callerR4, pos + 1);
        }
    }
}
