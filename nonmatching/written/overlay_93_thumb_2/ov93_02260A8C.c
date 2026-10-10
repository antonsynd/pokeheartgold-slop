#include "global.h"
#include "sprite_system.h"

typedef struct UnkStruct_ov93_02260A8C {
    ManagedSprite *unk_00;
    u8 unk_04;
    u8 unk_05;
    u8 unk_06;
} UnkStruct_ov93_02260A8C;

void ov93_02260A8C(UnkStruct_ov93_02260A8C *param0) {
    u32 callerR3;
    s16 y;
    s16 x;
    s16 target;

    // push {r3, ...}: the position slots are the saved r3 until the callee fills them
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    y = (s16)callerR3;
    x = (s16)(callerR3 >> 16);
    target = (9 * 8) - param0->unk_06 * 16;
    ManagedSprite_GetPositionXYWithSubscreenOffset(param0->unk_00, &x, &y, (192 + 160) << FX32_SHIFT);

    if (target > x) {
        x += 2;
        if (x > target) {
            x = target;
        }
        ManagedSprite_SetPositionXYWithSubscreenOffset(param0->unk_00, x, y, (192 + 160) << FX32_SHIFT);
    }
}
