#include "global.h"
#include "sprite_system.h"

void ov18_021F3B2C(u8 *app, s32 dx) {
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    union { u32 w; s16 h[2]; } pos;
    pos.w = callerR3;
    ManagedSprite *sprite = *(ManagedSprite **)(app + 0x6b4);

    ManagedSprite_GetPositionXY(sprite, &pos.h[1], &pos.h[0]);
    ManagedSprite_SetPositionXY(*(ManagedSprite **)(app + 0x6b4), pos.h[1] + dx, pos.h[0]);
}
