#include "global.h"
#include "sprite_system.h"

void ov18_021F3BD4(u8 *app, s32 dy) {
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    union { u32 w; s16 h[2]; } pos;
    pos.w = callerR3;

    ManagedSprite_GetPositionXY(*(ManagedSprite **)(app + 0x6e0), &pos.h[1], &pos.h[0]);
    ManagedSprite_SetPositionXY(*(ManagedSprite **)(app + 0x6e0), pos.h[1], pos.h[0] + dy);
    ManagedSprite_GetPositionXY(*(ManagedSprite **)(app + 0x71c), &pos.h[1], &pos.h[0]);
    ManagedSprite_SetPositionXY(*(ManagedSprite **)(app + 0x71c), pos.h[1], pos.h[0] + dy);
}
