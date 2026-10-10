#include "global.h"

typedef struct ManagedSprite ManagedSprite;
typedef struct DpadMenuBox DpadMenuBox;
typedef struct GridInputHandler GridInputHandler;
void ManagedSprite_SetPositionXY(ManagedSprite *managedSprite, s16 x, s16 y);
const DpadMenuBox *GridInputHandler_GetDpadBox(GridInputHandler *inputHandler, int target);
void DpadMenuBox_GetPosition(const DpadMenuBox *dpadBoxes, u8 *px, u8 *py);
void ov14_021F2A18(void *a, u32 b, u32 c);

#define DATA(p) (*(u8 **)((p) + 0x34))

void ov14_021F6B28(u8 *param0, int param1) {
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    union { u32 w; u8 b[4]; } pos;
    const DpadMenuBox *box;
    pos.w = callerR3;

    box = GridInputHandler_GetDpadBox(*(GridInputHandler **)(DATA(param0) + 0x2C), param1);
    ov14_021F2A18(DATA(param0), 9, 1);
    DpadMenuBox_GetPosition(box, &pos.b[1], &pos.b[0]);
    ManagedSprite_SetPositionXY(*(ManagedSprite **)(DATA(param0) + 0x320), pos.b[1], pos.b[0]);
}
