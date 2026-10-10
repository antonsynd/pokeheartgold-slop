#include "global.h"

extern const int ov07_022363D8[15];

// The original copies the 15-entry table onto its stack and indexes the copy with no bounds check.
// The game only passes a valid index; for any other value the original reads whatever lies around
// its frame (the three registers it pushed, then the caller's stack). That frame is modelled here
// so the C reads the same words for every index.
int ov07_02221C8C(int behaviorValue) {
    u32 callerR3, callerR4, callerR5;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    __asm__ volatile("movs %0, r4" : "=l"(callerR4) : : "cc");
    __asm__ volatile("movs %0, r5" : "=l"(callerR5) : : "cc");

    u32 sp;
    __asm__ volatile("mov %0, sp" : "=r"(sp));
    u32 entrySp = (u32)__builtin_frame_address(0) + 8;
    u32 base = entrySp - 0x48;
    u32 address = base + behaviorValue * 4;

    if (address - base < 15 * 4) {
        return ov07_022363D8[behaviorValue];
    }
    if (address == entrySp - 12) {
        return callerR3;
    }
    if (address == entrySp - 8) {
        return callerR4;
    }
    if (address == entrySp - 4) {
        return callerR5;
    }
    if (address >= sp && address < entrySp) {
        return 0;
    }
    return *(int *)address;
}
