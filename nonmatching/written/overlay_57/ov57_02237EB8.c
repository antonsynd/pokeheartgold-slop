#include "global.h"
#include "system.h"
#include "sprite_system.h"

extern void ov57_02237EA8(void *rect);
extern void ov57_02237E90(void *rect, u8 x, u8 y);

void ov57_02237EB8(void *rect, ManagedSprite *sprite, BOOL touchingSprite) {
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    // x and y live in the stack slot the prologue filled from r3 (y at sp+0, x at sp+2)
    s16 x = (s16)(callerR3 >> 16);
    s16 y = (s16)callerR3;

    if (sprite == NULL) {
        return;
    }

    if (touchingSprite == 1) {
        ManagedSprite_SetPositionXY(sprite, (s16)gSystem.touchX, (s16)gSystem.touchY);
        ManagedSprite_GetPositionXY(sprite, &x, &y);
        ov57_02237EA8(rect);
    } else {
        ManagedSprite_GetPositionXY(sprite, &x, &y);
        ov57_02237E90(rect, (u8)x, (u8)y);
    }
}
