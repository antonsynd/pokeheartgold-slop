#include "global.h"

#include "sprite_system.h"
#include "sys_task_api.h"

typedef struct Ov96_0220C15C {
    void *data;
    void *unk04[3];
    u32 points[3];
    ManagedSprite *unk1C;
    ManagedSprite *unk20;
    ManagedSprite *unk24;
    ManagedSprite *unk28;
    ManagedSprite *unk2C;
    ManagedSprite *unk30;
    SysTask *task;
    u32 target : 2;
    u32 state : 4;
    u32 counter : 8;
    u32 active : 1;
    u32 unk38_15 : 8;
    u32 index : 2;
    u32 player : 2;
    u32 lane : 2;
    u32 unk38_29 : 3;
} Ov96_0220C15C;

void ov96_021EAB38(void *a0, u8 a1);
void ov96_021EAB74(void *a0, int a1);

void ov96_0220C15C(SysTask *task, Ov96_0220C15C *a1) {
    switch (a1->state) {
    case 0: {
        ManagedSprite *sprite = a1->unk2C;

        ManagedSprite_ResetSpriteAnimCtrlState(sprite);
        ManagedSprite_SetDrawFlag(sprite, TRUE);
        a1->state++;
        break;
    }
    case 1:
        a1->counter++;
        if (a1->counter >= 2) {
            ManagedSprite *sprite = a1->unk30;

            ov96_021EAB38(a1->unk04[a1->index], 0);
            ManagedSprite_SetAnim(sprite, 27);
            ManagedSprite_SetAnimateFlag(sprite, FALSE);
            ManagedSprite_SetDrawFlag(sprite, TRUE);
            a1->counter = 0;
            a1->state++;
        }
        break;
    case 2: {
        s16 x;
        s16 y;
        s16 delta;

        ManagedSprite_GetPositionXY(a1->unk30, &x, &y);
        delta = (-64 - y) / 4;
        if (y <= -64 || delta == 0) {
            a1->state++;
        } else {
            ManagedSprite_SetPositionXYWithSubscreenOffset(a1->unk30, x, y + delta, FX32_CONST(256));
        }
        break;
    }
    case 3:
        a1->counter++;
        if (a1->counter >= 4) {
            a1->counter = 0;
            a1->state++;
        }
        break;
    case 4: {
        s16 x;
        s16 y;
        s16 delta;

        ManagedSprite_GetPositionXY(a1->unk30, &x, &y);
        delta = MATH_ABS(-24 - y);
        if (delta != 0) {
            delta /= 2;
        }
        y += delta + 2;
        if (y >= 48) {
            x = a1->lane * 64 + 72;
            y = 48;
            ManagedSprite_SetPositionXY(a1->unk30, x, y);
            ManagedSprite_SetAnimateFlag(a1->unk30, TRUE);
            ManagedSprite_ResetSpriteAnimCtrlState(a1->unk2C);
            a1->state++;
        } else {
            ManagedSprite_SetPositionXYWithSubscreenOffset(a1->unk30, x, y, FX32_CONST(256));
        }
        break;
    }
    case 5:
        a1->counter++;
        if (a1->counter >= 2) {
            ManagedSprite_SetDrawFlag(a1->unk30, FALSE);
            ov96_021EAB38(a1->unk04[a1->target], 1);
            ov96_021EAB74(a1->unk04[a1->target], 0);
            a1->index = a1->target;
            a1->counter = 0;
            a1->state++;
        }
        break;
    case 6:
        a1->task = NULL;
        a1->active = FALSE;
        SysTask_Destroy(task);
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }
}
