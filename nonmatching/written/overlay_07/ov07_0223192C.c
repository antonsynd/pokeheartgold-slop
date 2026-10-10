#include "global.h"

extern u8 ov07_0221FA04(void *system, int battler);

u32 ov07_0223192C(void *system, int battler) {
    u32 callerR4;
    __asm__ volatile("movs %0, r4" : "=l"(callerR4) : : "cc");
    switch (ov07_0221FA04(system, battler)) {
    case 0:
    case 2:
    case 4:
        return 3;
    case 1:
    case 3:
    case 5:
        return 4;
    }
    return callerR4;
}
