#include "global.h"
#include "error_handling.h"

// The original copies four 7-word tables into one stack frame (v3 at sp+4, then v2, v1, v0 above
// it) and indexes the chosen one with an unchecked byte. Past the tables the index reads the five
// registers it pushed and then the caller's stack. The frame is modelled word for word:
//   0: (unused slot)  1-7: v3  8-14: v2  15-21: v1  22-28: v0  29-33: saved r4-r7, lr  34..: caller stack
u32 ov40_0222DB30(u8 *param0, u32 param1) {
    u32 callerR4, callerR5, callerR6, callerLr;
    __asm__ volatile("movs %0, r4" : "=l"(callerR4) : : "cc");
    __asm__ volatile("movs %0, r5" : "=l"(callerR5) : : "cc");
    __asm__ volatile("movs %0, r6" : "=l"(callerR6) : : "cc");
    __asm__ volatile("mov %0, lr" : "=r"(callerLr));
    u32 frameAddress = (u32)__builtin_frame_address(0);
    u32 *entrySp = (u32 *)(frameAddress + 8);
    u32 callerR7 = *(u32 *)frameAddress;
    u32 frame[34] = {
        0,
        112, 113, 114, 115, 116, 131, 136,
        117, 118, 119, 120, 121, 132, 137,
        107, 108, 109, 110, 111, 130, 135,
        102, 103, 104, 105, 106, 129, 134,
        callerR4, callerR5, callerR6, callerR7, callerLr,
    };
    u32 index = param0[0x5c];
    u32 word;

    switch (param1) {
    case 0:
        word = 22 + index;
        break;
    case 1:
        word = 15 + index;
        break;
    case 2:
        word = 8 + index;
        break;
    case 3:
        word = 1 + index;
        break;
    default:
        GF_AssertFail();
        return frame[22];
    }
    if (word < 34) {
        return frame[word];
    }
    return entrySp[word - 34];
}
