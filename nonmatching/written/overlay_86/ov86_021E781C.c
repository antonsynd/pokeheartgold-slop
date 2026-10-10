#include "global.h"

extern void *GridInputHandler_GetDpadBox(void *inputHandler, int target);
extern void DpadMenuBox_GetPosition(const void *dpadBoxes, u8 *px, u8 *py);
extern void ov86_021E707C(void *p, int a, int b, int c);
extern void ov86_021E705C(void *p, int a, int b);

void ov86_021E781C(u8 *param0, int param1) {
    /* the two position bytes live in the stack slot push {r3} filled; the callee is not guaranteed to write them */
    u32 callerR3;
    u32 slot;
    u8 *pos;
    void *box;

    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    slot = callerR3;
    pos = (u8 *)&slot;

    box = GridInputHandler_GetDpadBox(*(void **)(param0 + 0x254), param1);
    DpadMenuBox_GetPosition(box, pos + 1, pos);
    ov86_021E707C(param0, 1, pos[1], pos[0]);
    if (param1 == 8) {
        ov86_021E705C(param0, 1, 1);
    } else {
        ov86_021E705C(param0, 1, 3);
    }
}
