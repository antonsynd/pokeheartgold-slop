#include "global.h"
#include "sprite_system.h"

void ov18_021F121C(u8 *param0, u32 idx, s32 dx, s32 dy, s32 useSubscreenOffset) {
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    union { u32 w; s16 h[2]; } pos;
    pos.w = callerR3;
    ManagedSprite **sprites = (ManagedSprite **)(param0 + 0x670);

    if (useSubscreenOffset == 0) {
        ManagedSprite_GetPositionXY(sprites[idx], &pos.h[1], &pos.h[0]);
        ManagedSprite_SetPositionXY(sprites[idx], pos.h[1] + dx, pos.h[0] + dy);
    } else {
        ManagedSprite_GetPositionXYWithSubscreenOffset(sprites[idx], &pos.h[1], &pos.h[0], 0x200000);
        ManagedSprite_SetPositionXYWithSubscreenOffset(sprites[idx], pos.h[1] + dx, pos.h[0] + dy, 0x200000);
    }
}
