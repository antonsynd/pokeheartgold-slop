#include "global.h"

typedef struct ManagedSprite ManagedSprite;
void ManagedSprite_GetPositionXY(ManagedSprite *managedSprite, s16 *x, s16 *y);
void ManagedSprite_SetPositionXY(ManagedSprite *managedSprite, s16 x, s16 y);
void ov14_021F46F4(void *a);

#define DATA(p) (*(u8 **)((p) + 0x34))

void ov14_021F47B8(u8 *param0, s32 param1) {
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    union { u32 w; s16 h[2]; } pos;
    u32 i;
    pos.w = callerR3;

    for (i = 4; i <= 8; i++) {
        ManagedSprite_GetPositionXY(*(ManagedSprite **)(DATA(param0) + 0x2FC + i * 4), &pos.h[1], &pos.h[0]);
        ManagedSprite_SetPositionXY(*(ManagedSprite **)(DATA(param0) + 0x2FC + i * 4), pos.h[1], (s16)(pos.h[0] + param1));
    }
    ov14_021F46F4(DATA(param0));
    for (i = 0; i < 6; i++) {
        ManagedSprite_GetPositionXY(*(ManagedSprite **)(DATA(param0) + 0x338 + i * 4), &pos.h[1], &pos.h[0]);
        ManagedSprite_SetPositionXY(*(ManagedSprite **)(DATA(param0) + 0x338 + i * 4), pos.h[1], (s16)(pos.h[0] + param1));
    }
}
