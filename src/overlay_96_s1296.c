#include "global.h"

typedef struct Ov96Pos16 {
    s16 x;
    s16 y;
} Ov96Pos16;

typedef struct Ov96Info {
    u8 filler_0[0xC];
    fx32 maxSpeed;
} Ov96Info;

typedef struct Ov96Entry {
    void *obj;
    Ov96Info *info;
    fx32 power;
} Ov96Entry;

typedef struct Ov96Mover {
    void *data;
    Ov96Entry *entry;
    void *player;
    void *unk0C;
    int unk10;
    int state;
    int kind;
    Ov96Pos16 target;
    VecFx32 prevPos;
    VecFx32 pos;
    VecFx32 dir;
    VecFx32 velocity;
    u8 filler_50[8];
    s8 cooldown;
    u8 filler_59[7];
    u32 unk60_0 : 16;
    u32 facing : 4;
    u32 lane : 2;
    u32 unk60_22 : 2;
    u32 mode : 2;
    u32 active : 1;
    u32 thrown : 1;
    u32 locked : 1;
    u32 unk60_29 : 3;
} Ov96Mover;

extern const Ov96Pos16 ov96_0221D6D4[4];

void ov96_02215944(VecFx32 *velocity, fx32 x, fx32 y);
void ov96_02218784(void *a0, u8 lane);
int ov96_022186CC(VecFx32 *dir);
void ov96_021EB06C(void *a0, int x, int y, int *outX, int *outY);

void ov96_022187A8(Ov96Mover *mover, void *a1) {
    VecFx32 delta;
    VecFx32 dir;
    VecFx32 step;
    VecFx32 result;
    fx32 dist;
    fx32 speed;
    BOOL moving;

    VEC_Subtract(&mover->prevPos, &mover->pos, &delta);
    dist = VEC_Mag(&delta);
    if (dist > 0) {
        moving = TRUE;
    } else {
        moving = FALSE;
    }

    if (mover->thrown) {
        GF_ASSERT(mover->kind != 0);
        if (mover->kind == 6 || mover->kind == 9) {
            speed = FX32_ONE;
        } else {
            speed = FX32_CONST(0.7);
        }
        if (mover->cooldown <= 0) {
            VecFx32 unit = { 0, 0, 0 };
            VecFx32 zero = { 0, 0, 0 };

            VEC_Normalize(&mover->velocity, &unit);
            VEC_MultAdd(speed, &unit, &zero, &result);
            result.x = MATH_ABS(result.x);
            result.y = MATH_ABS(result.y);
            ov96_02215944(&mover->velocity, result.x, result.y);
        }
        VEC_Add(&mover->pos, &mover->velocity, &mover->pos);
        mover->prevPos = mover->pos;
        if (mover->velocity.x != 0 || mover->velocity.y != 0) {
            return;
        }
        ov96_02218784(a1, mover->lane);
        mover->unk10 = 0;
        mover->thrown = FALSE;
    }

    if (!mover->locked && mover->cooldown <= 0 && moving) {
        fx32 limit;

        VEC_Normalize(&delta, &dir);
        if (!mover->thrown) {
            mover->facing = ov96_022186CC(&dir);
        }
        limit = mover->entry->info->maxSpeed;
        if (mover->entry->power < FX32_CONST(30)) {
            limit = FX_Mul(limit, FX32_HALF);
        }
        if (dist <= limit) {
            step = delta;
        } else {
            VecFx32 zero = { 0, 0, 0 };

            VEC_MultAdd(limit, &dir, &zero, &step);
        }
        VEC_Add(&mover->pos, &step, &mover->pos);
        mover->dir = dir;
    }
}

BOOL ov96_02218934(Ov96Mover *mover) {
    int x;
    int y;
    fx32 fx;
    fx32 fy;
    fx32 left;
    fx32 right;
    VecFx32 corners[4];
    int i;

    if (mover->pos.x <= 0 || mover->pos.y <= 0) {
        return TRUE;
    }
    ov96_021EB06C(mover->entry->obj, mover->pos.x >> FX32_SHIFT, mover->pos.y >> FX32_SHIFT, &x, &y);
    if (y >= 64 && y <= 160) {
        fx = FX32_CONST(x);
        fy = FX32_CONST(y);
        for (i = 0; i < 4; i++) {
            corners[i].x = ov96_0221D6D4[i].x << FX32_SHIFT;
            corners[i].y = ov96_0221D6D4[i].y << FX32_SHIFT;
        }

        left = FX_Div(FX_Mul(corners[1].y - corners[0].y, fx - corners[0].x), corners[1].x - corners[0].x);
        left += corners[0].y;
        right = FX_Div(FX_Mul(corners[3].y - corners[2].y, fx - corners[2].x), corners[3].x - corners[2].x);
        right += corners[2].y;
        if (fy >= left && fy >= right) {
            return FALSE;
        }
    }
    return TRUE;
}
