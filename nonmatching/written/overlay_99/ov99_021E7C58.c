#include "global.h"

extern const void *GridInputHandler_GetDpadBox(void *inputHandler, int target);
extern void DpadMenuBox_GetPosition(const void *dpadBoxes, u8 *px, u8 *py);
extern void ManagedSprite_SetPositionXY(void *managedSprite, s16 x, s16 y);
extern void PlaySE(u16 sndseq);

/* The two position bytes live in the stack word the prologue's push of r3 left; the callee
 * fills them in, so they start as the low bytes of the caller's r3. */
void ov99_021E7C58(u8 *data, int idx) {
    u32 r3;
    __asm__ volatile("movs %0, r3" : "=l"(r3) : : "cc");
    u8 pos[2];

    pos[0] = (u8)r3;
    pos[1] = (u8)(r3 >> 8);

    DpadMenuBox_GetPosition(GridInputHandler_GetDpadBox(*(void **)(data + 0x3fc), idx), &pos[1], &pos[0]);
    ManagedSprite_SetPositionXY(*(void **)(data + 0x408), pos[1], pos[0]);
    *(u32 *)(data + 0x3f4) = (*(u32 *)(data + 0x3f4) & 0xF807FFFF) | ((u32)(u8)idx << 19);
    PlaySE(0x5dc);
}
