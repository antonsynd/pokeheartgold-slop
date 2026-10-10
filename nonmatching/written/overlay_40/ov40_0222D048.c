#include "global.h"
#include "math_util.h"
#include "sprite_system.h"
#include "sys_task_api.h"

typedef struct UnkStruct_ov40_0222D048 {
    ManagedSprite *sprites[2];
    u8 filler_08[4];
    fx32 unk_0C;
    f32 unk_10;
    s16 unk_14;
    s16 unk_16;
    s8 unk_18;
    u8 unk_19;
    u8 filler_1A[2];
    int unk_1C;
    int unk_20;
    int unk_24;
    int unk_28;
    int unk_2C;
} UnkStruct_ov40_0222D048;

void ov40_0222D048(SysTask *task, UnkStruct_ov40_0222D048 *work) {
    // The original copies a six-word angle table to its stack and indexes it with an unchecked
    // byte; entries 6 and 7 are the r4 and lr it pushed, beyond that is the caller's stack.
    u32 callerR4, callerLr;
    __asm__ volatile("movs %0, r4" : "=l"(callerR4) : : "cc");
    __asm__ volatile("mov %0, lr" : "=r"(callerLr));
    u32 *entrySp = (u32 *)((u8 *)__builtin_frame_address(0) + 8);

    work->unk_1C++;
    work->unk_1C %= 2;
    if (work->unk_1C != 0) {
        return;
    }

    switch (work->unk_2C) {
    case 0:
        if (work->unk_28 == 3) {
            work->unk_2C++;
            work->unk_28 = 0;
        } else {
            work->unk_28++;
        }
        break;
    case 1: {
        fx32 x0, y0, x1, y1;
        if (work->unk_28 == 4) {
            work->unk_2C++;
            work->unk_28 = 0;
        } else {
            ManagedSprite_GetSpritePositionFxXY(work->sprites[0], &x0, &y0);
            ManagedSprite_GetSpritePositionFxXY(work->sprites[1], &x1, &y1);
            x0 = x0 + GF_SinDeg((work->unk_20 * 0xFFFF) / 360) * -work->unk_18;
            x1 = x0;
            work->unk_20 += 0x20;
            work->unk_20 %= 360;
            ManagedSprite_SetPositonFxXY(work->sprites[0], x0, y0);
            ManagedSprite_SetPositonFxXY(work->sprites[1], x1, y1);
            work->unk_28++;
        }
        break;
    }
    case 2: {
        s16 x, y0, y1;
        u32 table[8] = { 90, 135, 270, 45, 225, 0, callerR4, callerLr };
        ManagedSprite_GetPositionXY(work->sprites[0], &x, &y0);
        ManagedSprite_GetPositionXY(work->sprites[1], &x, &y1);
        if (work->unk_28 == 0) {
            work->unk_14 = work->unk_16 - x;
            work->unk_14 = work->unk_14 / work->unk_24;
            work->unk_28++;
        } else if (work->unk_28 == work->unk_24 + 1) {
            u32 index = work->unk_19;
            x = work->unk_16;
            work->unk_20 = index < 8 ? table[index] : entrySp[index - 8];
            work->unk_2C++;
            work->unk_28 = 0;
        } else {
            x = x + work->unk_14;
            work->unk_28++;
        }
        ManagedSprite_SetPositionXY(work->sprites[0], x, y0);
        ManagedSprite_SetPositionXY(work->sprites[1], x, y1);
        break;
    }
    case 3: {
        fx32 x0, y0, x1, y1;
        if (work->unk_28 == 0) {
            ManagedSprite_GetSpritePositionFxXY(work->sprites[0], &work->unk_0C, &y0);
            work->unk_28++;
        }
        ManagedSprite_GetSpritePositionFxXY(work->sprites[0], &x0, &y0);
        ManagedSprite_GetSpritePositionFxXY(work->sprites[1], &x1, &y1);
        x0 = work->unk_0C + GF_SinDeg((work->unk_20 * 0xFFFF) / 360) * 3 * -work->unk_18;
        x1 = x0;
        if (work->unk_19 % 2 != 0) {
            work->unk_20 -= 4;
        } else {
            work->unk_20 += 4;
        }
        work->unk_20 %= 360;
        ManagedSprite_SetPositonFxXY(work->sprites[0], x0, y0);
        ManagedSprite_SetPositonFxXY(work->sprites[1], x1, y1);
        break;
    }
    }

    if (work->unk_2C >= 2 && work->unk_10 > 0.1f) {
        work->unk_10 = work->unk_10 - 0.1f;
        ManagedSprite_SetAffineScale(work->sprites[0], work->unk_10, 1.0f);
        ManagedSprite_SetAffineScale(work->sprites[1], work->unk_10, 1.0f);
    }
}
