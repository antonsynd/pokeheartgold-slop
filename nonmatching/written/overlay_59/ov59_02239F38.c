#include "global.h"
#include "system.h"
#include "touchscreen.h"
#include "unk_02005D10.h"
#include "sprite.h"
#include "sprite_system.h"

extern const TouchscreenHitbox ov59_0223C940[];

int ov59_02239F38(u8 *param0) {
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    s16 x = (s16)(callerR3 >> 16);
    s16 y = (s16)callerR3;
    u8 hit;

    Sprite_GetPositionXY(*((Sprite **)(param0 + 0x254) + (param0[0x4D] + 2)), &x, &y);
    hit = TouchscreenHitbox_PointIsIn(ov59_0223C940, x, y);

    if (System_GetTouchHeld()) {
        x = gSystem.touchX;
        y = gSystem.touchY;
        Sprite_SetPositionXY(*((Sprite **)(param0 + 0x254) + (param0[0x4D] + 2)), x, y);
        Sprite_SetPositionXY(*(Sprite **)(param0 + 0x258), x, y - 6);
        if (hit) {
            if (param0[0x53] == 0) {
                param0[0x53] = 1;
                PlaySE(0x8E6);
                Sprite_SetAnimCtrlSeq(*(Sprite **)(param0 + 0x27C), 0x15);
            }
        } else {
            if (param0[0x53] != 0) {
                param0[0x53] = 0;
                PlaySE(0x8E6);
                Sprite_SetAnimCtrlSeq(*(Sprite **)(param0 + 0x27C), 0x14);
            }
        }
        return -1;
    }

    param0[0x53] = 0;
    if (hit) {
        PlaySE(0x5EA);
        return 1;
    }
    PlaySE(0x682);
    return 0;
}
