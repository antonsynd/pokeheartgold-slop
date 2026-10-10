#include "global.h"
#include "sprite_system.h"

extern const s16 _02245CC0[][2];

void ov40_02233C3C(u8 *param0) {
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    union { u32 w; s16 h[2]; } pos;
    u8 *data;
    int i;
    pos.w = callerR3;

    data = *(u8 **)(param0 + 0x860);
    for (i = 0; i < 5; i++) {
        ManagedSprite_SetPositonFxXY(*(ManagedSprite **)(data + 0x68 + i * 4), _02245CC0[i][0] << 12, _02245CC0[i][1] << 12);
        ManagedSprite_GetPositionXY(*(ManagedSprite **)(data + 0x68 + i * 4), &pos.h[1], &pos.h[0]);
        ManagedSprite_SetPositionXY(*(ManagedSprite **)(data + 0x40 + i * 4), pos.h[1] - 0x20, pos.h[0] - 2);
        ManagedSprite_SetPositionXY(*(ManagedSprite **)(data + 0x54 + i * 4), pos.h[1] + 0x10, pos.h[0] - 2);
    }
}
