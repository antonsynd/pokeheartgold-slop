#include "global.h"

typedef struct ManagedSprite ManagedSprite;
void ManagedSprite_GetPositionXY(ManagedSprite *managedSprite, s16 *x, s16 *y);
void ManagedSprite_SetPositionXY(ManagedSprite *managedSprite, s16 x, s16 y);
BOOL ov14_021E6AA0(void *a, u8 b, u32 c);
void ov14_021F1C04(void *a);
void ov14_021E88F8(void *a);
void ov14_021F0234(void *a, void *func, u32 c);
extern void ov14_021EAB54(void);

void ov14_021F1C4C(u8 *param0, u32 param1) {
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    union { u32 w; s16 h[2]; } pos;
    pos.w = callerR3;
    u8 *data = *(u8 **)(param0 + 0x34);
    data[0x44C] = (u8)param1;
    (*(u8 **)(param0 + 0x34))[0x44B] = 0;
    ManagedSprite_GetPositionXY(*(ManagedSprite **)(*(u8 **)(param0 + 0x34) + 0x320), &pos.h[1], &pos.h[0]);
    ManagedSprite_SetPositionXY(*(ManagedSprite **)(*(u8 **)(param0 + 0x34) + 0x328), pos.h[1], (s16)(pos.h[0] + 8));
    if ((*(u8 **)(param0 + 0x34))[0x44C] == 0xFF) {
        ov14_021F1C04(param0);
        return;
    }
    if (ov14_021E6AA0(param0, param0[0x21], param1) == 0) {
        ov14_021F1C04(param0);
        return;
    }
    ov14_021E88F8(*(void **)(*(u8 **)(param0 + 0x34) + 0x2F0));
    ov14_021F0234(param0, (void *)ov14_021EAB54, 0x8A);
}
