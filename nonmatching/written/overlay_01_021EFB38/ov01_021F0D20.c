#include "global.h"

extern void GF_AssertFail(void);

s32 ov01_021F0D20(u8 *battleSetup) {
    u32 callerR4;
    s32 isTrainer;
    s32 v;
    u32 battleType;
    __asm__ volatile("movs %0, r4" : "=l"(callerR4) : : "cc");
    v = (s32)callerR4;
    battleType = *(u32 *)battleSetup;
    if (battleType & 1) {
        isTrainer = 1;
    } else if ((battleType & 0x1720) != 0 || battleType == 0) {
        isTrainer = 0;
    } else {
        GF_AssertFail();
        isTrainer = 0;
    }
    switch (*(u32 *)(battleSetup + 0x150)) {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 6:
    case 8:
    case 9:
    case 10:
    case 11:
    case 24:
        v = 0;
        break;
    case 7:
        v = 2;
        break;
    case 5:
        v = 4;
        break;
    }
    if ((u32)(*(s32 *)(battleSetup + 0x15C) - 3) <= 1) {
        v++;
    }
    return v + isTrainer * 6;
}
