#include "global.h"

#include "save.h"

// The asm divides LCRandom()'s whole return register (signed), without narrowing it to u16.
extern s32 LCRandom(void);

int ov70_02240854(u8 *work) {
    SetAllPCBoxesModified();
    Save_PrepareForAsyncWrite(*(SaveData **)(*(u8 **)work + 0x20), 2);
    *(int *)(work + 0x2C) = 0x1F;
    s32 r = LCRandom() % 60;
    *(u32 *)(work + 0x11C0) = (u16)r + 2;
    return 3;
}
