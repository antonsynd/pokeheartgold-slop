#include "global.h"

typedef struct ManagedSprite ManagedSprite;
void ManagedSprite_GetPositionXY(ManagedSprite *managedSprite, s16 *x, s16 *y);
void ManagedSprite_SetPositionXY(ManagedSprite *managedSprite, s16 x, s16 y);
extern const s8 ov14_021F8070[8];
extern const s8 ov14_021F8078[8];

void ov14_021F3B5C(u8 *param0) {
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    union { u32 w; s16 h[2]; } pos;
    u32 i;
    pos.w = callerR3;

    ManagedSprite_GetPositionXY(*(ManagedSprite **)(param0 + 0x328), &pos.h[1], &pos.h[0]);
    if (*(void **)(param0 + 0x3F0) != NULL) {
        for (i = 0; i < 8; i++) {
            ManagedSprite_SetPositionXY(((ManagedSprite **)(param0 + 0x3F0))[i], (s16)(pos.h[1] + ov14_021F8070[i]), (s16)(pos.h[0] + ov14_021F8078[i]));
        }
    }
}
