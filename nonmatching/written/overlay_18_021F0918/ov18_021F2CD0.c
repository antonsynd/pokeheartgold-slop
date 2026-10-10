#include "global.h"
#include "sprite_system.h"

u32 ov18_021F2C98(void *param0, u32 idx);

s32 ov18_021F2CD0(u8 *param0, s32 idx, u32 px, u32 py) {
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    union { u32 w; s16 h[2]; } pos;
    u32 half;
    pos.w = callerR3;
    ManagedSprite **sprites = (ManagedSprite **)(param0 + 0x670);

    ManagedSprite_GetPositionXY(sprites[idx], &pos.h[1], &pos.h[0]);
    half = ov18_021F2C98(param0, idx);
    if (px < (u32)(pos.h[1] - 11) || px > (u32)(pos.h[1] + 11)) {
        return 0;
    }
    half >>= 1;
    if (py < (u32)(pos.h[0] - half) || py > (u32)(pos.h[0] + half)) {
        return 0;
    }
    return 1;
}
