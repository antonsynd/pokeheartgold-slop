#include "global.h"

typedef struct DpadMenuBox DpadMenuBox;
typedef struct GridInputHandler GridInputHandler;

extern const DpadMenuBox *GridInputHandler_GetDpadBox(GridInputHandler *inputHandler, int target);
extern void DpadMenuBox_GetPosition(const DpadMenuBox *dpadBoxes, u8 *px, u8 *py);
extern void ov67_021E6A28(void *a0, int a1, int a2, int a3);
extern void ov67_021E6A08(void *a0, int a1, int a2);

void ov67_021E6C14(u8 *work, int target) {
    u32 callerR3;
    u8 y;
    u8 x;
    const DpadMenuBox *box;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    y = (u8)callerR3;
    x = (u8)(callerR3 >> 8);
    box = GridInputHandler_GetDpadBox(*(GridInputHandler **)(work + 0x4A4), target);
    DpadMenuBox_GetPosition(box, &x, &y);
    ov67_021E6A28(work, 0, x, y);
    if (target == 12) {
        ov67_021E6A08(work, 0, 2);
    } else {
        ov67_021E6A08(work, 0, 7);
    }
}
