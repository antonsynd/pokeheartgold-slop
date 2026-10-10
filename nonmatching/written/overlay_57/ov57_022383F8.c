#include "global.h"
#include "sprite_system.h"

extern int ov07_022344E4(s16 x, s16 y, s16 cx, s16 cy);

BOOL ov57_022383F8(u8 *param0, int param1) {
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    s16 x = (s16)(callerR3 >> 16);
    s16 y = (s16)callerR3;
    u8 *entry = param0 + (param1 << 4);

    if (*(void **)(entry + 0x34C) == NULL) {
        return TRUE;
    }
    ManagedSprite_GetPositionXY(*(ManagedSprite **)(entry + 0x354), &x, &y);
    if (ov07_022344E4(x, y, 0xBE, 0x46) <= 0x3C) {
        return TRUE;
    }
    return FALSE;
}
