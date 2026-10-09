#include "global.h"

#include "camera.h"
#include "obj_pltt_transfer.h"
#include "pokepic.h"
#include "sprite.h"
#include "sprite_system.h"
#include "unk_02014DA0.h"

typedef struct UnkStruct_ov07_0221FA38 UnkStruct_ov07_0221FA38;

typedef struct GenericEmitterCallbackData {
    UnkStruct_ov07_0221FA38 *battleAnimSys;
    SPLEmitter *particleSys;
    s8 dir;
    int params[6];
    int startBattler;
    int endBattler;
} GenericEmitterCallbackData;

typedef BOOL (*GenericEmitterCallbackFunc)(SPLEmitter *emitter, GenericEmitterCallbackData *data);

typedef struct BattleAnimBattlerPosition {
    s16 x;
    s16 y;
} BattleAnimBattlerPosition;

typedef struct XYTransformContext {
    s16 x;
    s16 y;
    s32 data[7];
} XYTransformContext;

enum XYTransformParam {
    XY_PARAM_STEPS,
    XY_PARAM_STEP_SIZE_X,
    XY_PARAM_STEP_SIZE_Y,
    XY_PARAM_CUR_X,
    XY_PARAM_CUR_Y,
};

enum XYRevolutionParam {
    XY_PARAM_REV_STEPS,
    XY_PARAM_REV_CUR_X,
    XY_PARAM_REV_RADIUS_X,
    XY_PARAM_REV_CUR_Y,
    XY_PARAM_REV_RADIUS_Y,
    XY_PARAM_REV_STEP_SIZE_X,
    XY_PARAM_REV_STEP_SIZE_Y,
};

extern const CameraAngle ov07_02236414[];
extern const GenericEmitterCallbackFunc ov07_02236444[];
extern const BattleAnimBattlerPosition ov07_02236468[][6];

extern BOOL ov07_0221BFC0(UnkStruct_ov07_0221FA38 *a0);
extern BOOL ov07_0221FAB0(UnkStruct_ov07_0221FA38 *a0);
extern int ov07_02231924(UnkStruct_ov07_0221FA38 *a0, int a1);
extern int ov07_0223192C(UnkStruct_ov07_0221FA38 *a0, int a1);
extern void ov07_02231D70(UnkStruct_ov07_0221FA38 *a0, int a1, VecFx32 *a2);
extern void ov07_02222644(XYTransformContext *a0, f32 *a1, f32 *a2);
extern s32 _s32_div_f(s32 a0, s32 a1);
extern fx32 FX_Modf(fx32 a0, fx32 *a1);

BOOL ov07_02221DC4(SPLEmitter *emitter, GenericEmitterCallbackData *data);
BOOL ov07_02221E24(SPLEmitter *emitter, GenericEmitterCallbackData *data);
BOOL ov07_02221E60(SPLEmitter *emitter, GenericEmitterCallbackData *data);
BOOL ov07_02221E9C(SPLEmitter *emitter, GenericEmitterCallbackData *data);
BOOL ov07_02221EC4(SPLEmitter *emitter, GenericEmitterCallbackData *data);
BOOL ov07_02221EEC(int idx, SPLEmitter *emitter, GenericEmitterCallbackData *data);
void ov07_02221F04(int isDoubles, int battlerType, s16 *px, s16 *py);
void ov07_02221F38(UnkStruct_ov07_0221FA38 *system, int battler, s16 *px, s16 *py);
s16 ov07_02221F80(UnkStruct_ov07_0221FA38 *system, int battler, int posType);
u8 ov07_02221FF0(ManagedSprite *sprite);
int ov07_02222004(UnkStruct_ov07_0221FA38 *system, int battler);
int ov07_0222202C(UnkStruct_ov07_0221FA38 *system, int battler);
fx32 ov07_02222040(fx32 start, fx32 end, u32 steps);
u32 ov07_0222204C(fx32 a, fx32 b, fx32 stepSize);
void ov07_0222207C(XYTransformContext *ctx, ManagedSprite *sprite, s16 cx, s16 cy);
void ov07_0222209C(XYTransformContext *ctx, ManagedSprite *sprite);
void ov07_022220B8(XYTransformContext *ctx, Pokepic *sprite, s16 cx, s16 cy);
void ov07_022220DC(XYTransformContext *ctx, Pokepic *sprite);
void ov07_022220FC(XYTransformContext *ctx, u16 sx, u16 ex, u16 sy, u16 ey, fx32 rx, fx32 ry, int steps);
void ov07_0222212C(XYTransformContext *ctx, u16 sx, u16 ex, u16 sy, u16 ey, fx32 rx, fx32 ry, u16 stepSizeX);
BOOL ov07_02222180(XYTransformContext *ctx);
BOOL ov07_02222218(XYTransformContext *ctx, s16 cx, s16 cy, ManagedSprite *sprite);
BOOL ov07_02222240(XYTransformContext *ctx, s16 cx, s16 cy, Pokepic *sprite);
void ov07_02222268(XYTransformContext *ctx, s16 sx, s16 ex, s16 sy, s16 ey, u16 steps);
BOOL ov07_022222B4(XYTransformContext *ctx);
BOOL ov07_022222F0(XYTransformContext *ctx, ManagedSprite *sprite);
BOOL ov07_02222314(XYTransformContext *ctx, Pokepic *sprite);
void ov07_02222338(XYTransformContext *linear, XYTransformContext *revs, s16 sx, s16 ex, s16 sy, s16 ey, u16 frames, fx32 arcRadius);
BOOL ov07_02222384(XYTransformContext *linear, XYTransformContext *revs);
BOOL ov07_022223CC(XYTransformContext *linear, XYTransformContext *revs, ManagedSprite *sprite);

BOOL ov07_02221DC4(SPLEmitter *emitter, GenericEmitterCallbackData *data)
{
    CameraAngle angleContest = ov07_02236414[2];
    CameraAngle angleBattle = ov07_02236414[5];
    Camera *camera = sub_02015524(data->particleSys);
    sub_02015528(data->particleSys, 1);

    if (ov07_0221BFC0(data->battleAnimSys) == TRUE) {
        Camera_SetAnglePos(&angleContest, camera);
    } else {
        Camera_SetAnglePos(&angleBattle, camera);
    }

    return TRUE;
}

BOOL ov07_02221E24(SPLEmitter *emitter, GenericEmitterCallbackData *data)
{
    CameraAngle angle = ov07_02236414[0];
    Camera *camera = sub_02015524(data->particleSys);
    sub_02015528(data->particleSys, 1);
    Camera_SetAnglePos(&angle, camera);
    return TRUE;
}

BOOL ov07_02221E60(SPLEmitter *emitter, GenericEmitterCallbackData *data)
{
    CameraAngle angle = ov07_02236414[1];
    Camera *camera = sub_02015524(data->particleSys);
    sub_02015528(data->particleSys, 1);
    Camera_SetAnglePos(&angle, camera);
    return TRUE;
}

BOOL ov07_02221E9C(SPLEmitter *emitter, GenericEmitterCallbackData *data)
{
    VecFx32 target;
    Camera *camera = sub_02015524(data->particleSys);
    ov07_02231D70(data->battleAnimSys, data->startBattler, &target);
    Camera_SetLookAtCamTarget(&target, camera);
    return TRUE;
}

BOOL ov07_02221EC4(SPLEmitter *emitter, GenericEmitterCallbackData *data)
{
    VecFx32 target;
    Camera *camera = sub_02015524(data->particleSys);
    ov07_02231D70(data->battleAnimSys, data->endBattler, &target);
    Camera_SetLookAtCamTarget(&target, camera);
    return TRUE;
}

BOOL ov07_02221EEC(int idx, SPLEmitter *emitter, GenericEmitterCallbackData *data)
{
    return ov07_02236444[idx](emitter, data);
}

void ov07_02221F04(int isDoubles, int battlerType, s16 *px, s16 *py)
{
    if (px != NULL) {
        *px = ov07_02236468[isDoubles][battlerType].x;
    }

    if (py != NULL) {
        *py = ov07_02236468[isDoubles][battlerType].y;
    }
}

void ov07_02221F38(UnkStruct_ov07_0221FA38 *system, int battler, s16 *px, s16 *py)
{
    if (ov07_0221BFC0(system) == TRUE) {
        ov07_02221F04(FALSE, battler + 2, px, py);
    } else {
        if (ov07_0221FAB0(system) == TRUE) {
            ov07_02221F04(TRUE, battler - 2, px, py);
        } else {
            ov07_02221F04(FALSE, battler, px, py);
        }
    }
}

s16 ov07_02221F80(UnkStruct_ov07_0221FA38 *system, int battler, int posType)
{
    int battlerType = ov07_02231924(system, battler);
    int isDoubles;

    if (ov07_0221FAB0(system) == TRUE) {
        isDoubles = TRUE;
    } else {
        isDoubles = FALSE;
    }

    if (ov07_0221BFC0(system) == TRUE) {
        battlerType += 2;
    }

    switch (posType) {
    case 0:
    case 2:
        return ov07_02236468[isDoubles][battlerType].x;
    case 1:
    case 3:
        return ov07_02236468[isDoubles][battlerType].y;
    }

    GF_ASSERT(FALSE);
    return 0;
}

u8 ov07_02221FF0(ManagedSprite *sprite)
{
    return ObjPlttTransfer_GetPaletteVramOffset(Sprite_GetPaletteProxy(sprite->sprite), NNS_G2D_VRAM_TYPE_2DMAIN);
}

int ov07_02222004(UnkStruct_ov07_0221FA38 *system, int battler)
{
    int dir = 1;
    int side = ov07_0223192C(system, battler);

    if (ov07_0221BFC0(system)) {
        if (side == 3) {
            dir = -1;
        }
    } else {
        if (side == 4) {
            dir = -1;
        }
    }

    return dir;
}

int ov07_0222202C(UnkStruct_ov07_0221FA38 *system, int battler)
{
    int dir = 1;
    int side = ov07_0223192C(system, battler);

    if (side == 4) {
        dir = -1;
    }

    return dir;
}

fx32 ov07_02222040(fx32 start, fx32 end, u32 steps)
{
    return FX_Div(end - start, steps << FX32_SHIFT);
}

u32 ov07_0222204C(fx32 a, fx32 b, fx32 stepSize)
{
    fx32 steps = FX_Div(b - a, stepSize);
    fx32 fractional = FX_Modf(steps, &steps);

    if (fractional) {
        steps += (1 << FX32_SHIFT);
    }

    if (steps < 0) {
        steps = -steps;
    }

    return steps >> FX32_SHIFT;
}

void ov07_0222207C(XYTransformContext *ctx, ManagedSprite *sprite, s16 cx, s16 cy)
{
    ManagedSprite_SetPositionXY(sprite, cx + ctx->x, cy + ctx->y);
}

void ov07_0222209C(XYTransformContext *ctx, ManagedSprite *sprite)
{
    f32 scaleX;
    f32 scaleY;
    ov07_02222644(ctx, &scaleX, &scaleY);
    ManagedSprite_SetAffineScale(sprite, scaleX, scaleY);
}

void ov07_022220B8(XYTransformContext *ctx, Pokepic *sprite, s16 cx, s16 cy)
{
    Pokepic_SetAttr(sprite, 0, cx + ctx->x);
    Pokepic_SetAttr(sprite, 1, cy + ctx->y);
}

void ov07_022220DC(XYTransformContext *ctx, Pokepic *sprite)
{
    Pokepic_SetAttr(sprite, 0xC, ctx->x);
    Pokepic_SetAttr(sprite, 0xD, ctx->y);
}

void ov07_022220FC(XYTransformContext *ctx, u16 sx, u16 ex, u16 sy, u16 ey, fx32 rx, fx32 ry, int steps)
{
    ctx->data[XY_PARAM_REV_STEPS] = steps;
    ctx->data[XY_PARAM_REV_CUR_X] = sx;
    ctx->data[XY_PARAM_REV_RADIUS_X] = rx;
    ctx->data[XY_PARAM_REV_CUR_Y] = sy;
    ctx->data[XY_PARAM_REV_RADIUS_Y] = ry;
    ctx->data[XY_PARAM_REV_STEP_SIZE_X] = _s32_div_f(ex - sx, steps);
    ctx->data[XY_PARAM_REV_STEP_SIZE_Y] = _s32_div_f(ey - sy, steps);
}

void ov07_0222212C(XYTransformContext *ctx, u16 sx, u16 ex, u16 sy, u16 ey, fx32 rx, fx32 ry, u16 stepSizeX)
{
    s16 stepSizeSigned;

    GF_ASSERT(ctx);

    if (sx > ex) {
        stepSizeX = -stepSizeX;
    }

    stepSizeSigned = stepSizeX;

    ctx->data[XY_PARAM_REV_STEPS] = ov07_0222204C(sx * (1 << FX32_SHIFT), ex * (1 << FX32_SHIFT), stepSizeSigned * (1 << FX32_SHIFT));
    ctx->data[XY_PARAM_REV_CUR_X] = sx;
    ctx->data[XY_PARAM_REV_RADIUS_X] = rx;
    ctx->data[XY_PARAM_REV_CUR_Y] = sy;
    ctx->data[XY_PARAM_REV_RADIUS_Y] = ry;
    ctx->data[XY_PARAM_REV_STEP_SIZE_X] = stepSizeSigned;
    ctx->data[XY_PARAM_REV_STEP_SIZE_Y] = _s32_div_f(ey - sy, ctx->data[XY_PARAM_REV_STEPS]);
}

BOOL ov07_02222180(XYTransformContext *ctx)
{
    GF_ASSERT(ctx);

    if (ctx->data[XY_PARAM_REV_STEPS]) {
        ctx->data[XY_PARAM_REV_CUR_X] += ctx->data[XY_PARAM_REV_STEP_SIZE_X];
        ctx->data[XY_PARAM_REV_CUR_Y] += ctx->data[XY_PARAM_REV_STEP_SIZE_Y];

        ctx->data[XY_PARAM_REV_CUR_X] &= 0xFFFF;
        ctx->data[XY_PARAM_REV_CUR_Y] &= 0xFFFF;

        ctx->data[XY_PARAM_REV_STEPS]--;

        ctx->x = FX_Mul(FX_SinIdx(ctx->data[XY_PARAM_REV_CUR_X]), ctx->data[XY_PARAM_REV_RADIUS_X]) >> FX32_SHIFT;
        ctx->y = FX_Mul(FX_CosIdx(ctx->data[XY_PARAM_REV_CUR_Y]), ctx->data[XY_PARAM_REV_RADIUS_Y]) >> FX32_SHIFT;

        return TRUE;
    }

    return FALSE;
}

BOOL ov07_02222218(XYTransformContext *ctx, s16 cx, s16 cy, ManagedSprite *sprite)
{
    if (ov07_02222180(ctx)) {
        ov07_0222207C(ctx, sprite, cx, cy);
        return TRUE;
    }

    return FALSE;
}

BOOL ov07_02222240(XYTransformContext *ctx, s16 cx, s16 cy, Pokepic *sprite)
{
    if (ov07_02222180(ctx)) {
        ov07_022220B8(ctx, sprite, cx, cy);
        return TRUE;
    }

    return FALSE;
}

void ov07_02222268(XYTransformContext *ctx, s16 sx, s16 ex, s16 sy, s16 ey, u16 steps)
{
    GF_ASSERT(ctx);

    ctx->x = sx;
    ctx->y = sy;
    ctx->data[XY_PARAM_STEPS] = steps;
    ctx->data[XY_PARAM_STEP_SIZE_X] = ov07_02222040(sx * (1 << FX32_SHIFT), ex * (1 << FX32_SHIFT), steps);
    ctx->data[XY_PARAM_STEP_SIZE_Y] = ov07_02222040(sy * (1 << FX32_SHIFT), ey * (1 << FX32_SHIFT), steps);
    ctx->data[XY_PARAM_CUR_X] = sx * (1 << FX32_SHIFT);
    ctx->data[XY_PARAM_CUR_Y] = sy * (1 << FX32_SHIFT);
}

BOOL ov07_022222B4(XYTransformContext *ctx)
{
    GF_ASSERT(ctx);

    if (ctx->data[XY_PARAM_STEPS]) {
        ctx->data[XY_PARAM_CUR_X] += ctx->data[XY_PARAM_STEP_SIZE_X];
        ctx->data[XY_PARAM_CUR_Y] += ctx->data[XY_PARAM_STEP_SIZE_Y];
        ctx->x = ctx->data[XY_PARAM_CUR_X] >> FX32_SHIFT;
        ctx->y = ctx->data[XY_PARAM_CUR_Y] >> FX32_SHIFT;
        ctx->data[XY_PARAM_STEPS]--;

        return TRUE;
    }

    return FALSE;
}

BOOL ov07_022222F0(XYTransformContext *ctx, ManagedSprite *sprite)
{
    if (ov07_022222B4(ctx)) {
        ov07_0222207C(ctx, sprite, 0, 0);
        return TRUE;
    }

    return FALSE;
}

BOOL ov07_02222314(XYTransformContext *ctx, Pokepic *sprite)
{
    if (ov07_022222B4(ctx)) {
        ov07_022220B8(ctx, sprite, 0, 0);
        return TRUE;
    }

    return FALSE;
}

void ov07_02222338(XYTransformContext *linear, XYTransformContext *revs, s16 sx, s16 ex, s16 sy, s16 ey, u16 frames, fx32 arcRadius)
{
    ov07_02222268(linear, sx, ex, sy, ey, frames);
    revs->x = 0;
    revs->y = 0;
    ov07_022220FC(revs, 0, 0, 0x3FFF, 0xBFFF, 0, arcRadius, frames);
}

BOOL ov07_02222384(XYTransformContext *linear, XYTransformContext *revs)
{
    GF_ASSERT(linear);
    GF_ASSERT(revs);

    BOOL linearActive = ov07_022222B4(linear);
    BOOL revsActive = ov07_02222180(revs);

    linear->x += revs->x;
    linear->y += revs->y;

    if (linearActive == revsActive && linearActive == FALSE) {
        return FALSE;
    }

    return TRUE;
}

BOOL ov07_022223CC(XYTransformContext *linear, XYTransformContext *revs, ManagedSprite *sprite)
{
    if (ov07_02222384(linear, revs)) {
        ov07_0222207C(linear, sprite, 0, 0);
        return TRUE;
    }

    return FALSE;
}
