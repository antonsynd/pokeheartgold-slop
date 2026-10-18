#include "global.h"

#include "math_util.h"
#include "sprite_system.h"
#include "sys_task_api.h"

typedef struct XYTransformContext {
    s16 x;
    s16 y;
    s32 data[7];
} XYTransformContext;

typedef struct AssistPawDestination {
    s16 x;
    s16 y;
} AssistPawDestination;

typedef struct AssistPawSprite {
    void *battleAnimSys;
    u8 filler_04[8];
    u8 state;
    u8 step;
    u8 delay;
    u8 destIndex;
    ManagedSprite *sprite;
    XYTransformContext pos;
    u8 filler_34[4];
    f32 scale;
    int *outerState;
} AssistPawSprite;

typedef struct Point2D {
    s16 x;
    s16 y;
} Point2D;

extern const AssistPawDestination ov07_0223677E[];

void ov07_0221C448(void *battleAnimSys, SysTask *task);
void ov07_02222268(XYTransformContext *ctx, s16 sx, s16 ex, s16 sy, s16 ey, u16 steps);
BOOL ov07_022222F0(XYTransformContext *ctx, ManagedSprite *sprite);

void ov07_0222A328(SysTask *task, void *param) {
    AssistPawSprite *paw = param;

    switch (paw->state) {
    case 0:
        if (--paw->delay <= 10) {
            paw->state++;
        }
        break;
    case 1:
        if (++paw->step >= 3) {
            ManagedSprite_SetDrawFlag(paw->sprite, TRUE);
            paw->step = 0;
            paw->state++;
        }
        break;
    case 2:
        if (++paw->step <= 3) {
            paw->scale += 0.1f;
            ManagedSprite_SetAffineScale(paw->sprite, paw->scale, paw->scale);
        } else {
            paw->step = 0;
            paw->state++;
        }
        break;
    case 3:
        if (++paw->step <= 3) {
            paw->scale -= 0.1f;
            ManagedSprite_SetAffineScale(paw->sprite, paw->scale, paw->scale);
        } else {
            paw->step = 0;
            paw->state++;
        }
        break;
    case 4:
        if (--paw->delay <= 10) {
            *paw->outerState = 1;
            paw->step = 0;
            paw->state++;
        }
        break;
    case 5:
        if (++paw->step > 30) {
            paw->step = 0;
            paw->state++;
            break;
        }
        if (*paw->outerState == 2) {
            paw->state++;
        }
        break;
    case 6: {
        Point2D pos;
        int frames = 10 + (LCRandom() % 10);

        ManagedSprite_GetPositionXY(paw->sprite, &pos.x, &pos.y);
        ov07_02222268(&paw->pos, pos.x, ov07_0223677E[paw->destIndex].x, pos.y, ov07_0223677E[paw->destIndex].y, frames);
        paw->state++;
        break;
    }
    case 7: {
        BOOL active = ov07_022222F0(&paw->pos, paw->sprite);
        if (active == FALSE) {
            ManagedSprite_SetDrawFlag(paw->sprite, FALSE);
            paw->state++;
        } else {
            break;
        }
    }
    default:
        *paw->outerState = 3;
        ov07_0221C448(paw->battleAnimSys, task);
        break;
    }

    ManagedSprite_TickFrame(paw->sprite);
}
