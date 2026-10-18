#include "global.h"

typedef union Ov92Quaternion {
    f32 val2[4];
} Ov92Quaternion;

typedef union Ov92Matrix {
    f32 val[16];
} Ov92Matrix;

typedef struct Ov92Ball {
    u8 filler_000[0x150];
    Ov92Matrix rotation;
    Ov92Quaternion orientation;
    Ov92Quaternion delta;
    MtxFx43 matrix;
    u8 filler_1E0[0x18];
    int steps;
    f32 dx;
    f32 dy;
    f32 stepX;
    f32 stepY;
} Ov92Ball;

void ov92_02263108(Ov92Quaternion *out, const Ov92Quaternion *a, const Ov92Quaternion *b);
void ov92_022632E8(Ov92Matrix *out, const Ov92Quaternion *quat);
void ov92_022630F8(Ov92Quaternion *dst, Ov92Quaternion *src);
void ov92_02263824(const Ov92Matrix *mtx, MtxFx43 *out);
f32 ov92_0226325C(const Ov92Quaternion *quat);
void ov92_022632B4(Ov92Quaternion *out, const Ov92Quaternion *quat, f32 norm);

BOOL ov92_02260428(Ov92Ball *ball, int x, int y, int prevX, int prevY, f32 scale, BOOL setStep) {
    f32 length;
    fx32 lengthFx;
    f32 dx, dy;

    dx = (x - prevX) * ((1.33) / 256) * scale;
    dy = (y - prevY) * ((1.00) / 192) * scale;

    if (setStep) {
        ball->dx = dx;
        ball->dy = dy;
        ball->steps = 8;
        ball->stepX = ball->dx / ball->steps;
        ball->stepY = ball->dy / ball->steps;
    }

    {
        f32 lengthSq = ((dx * dx) + (dy * dy));
        fx32 lengthSqFx = FX_F32_TO_FX32(lengthSq);

        lengthFx = FX_Sqrt(lengthSqFx);
        length = FX_FX32_TO_F32(lengthFx);
        length *= (1.00);
    }

    if (length != 0.0) {
        fx32 angle = lengthFx;
        fx64c sin = FX_SinFx64c(angle);
        fx64c cos = FX_CosFx64c(angle);
        f32 sinF = FX_FX64C_TO_F32(sin);
        f32 cosF = FX_FX64C_TO_F32(cos);
        f32 factor = sinF / length;
        Ov92Quaternion rot;

        rot.val2[0] = cosF;
        rot.val2[1] = dy * factor;
        rot.val2[2] = dx * factor;
        rot.val2[3] = 0.0;

        ov92_02263108(&ball->orientation, &rot, &ball->delta);
        ov92_022632E8(&ball->rotation, &ball->orientation);
        ov92_022630F8(&ball->delta, &ball->orientation);
        ov92_02263824(&ball->rotation, &ball->matrix);

        {
            Ov92Quaternion copy;
            f32 norm = ov92_0226325C(&ball->orientation);

            copy = ball->orientation;
            ov92_022632B4(&ball->orientation, &copy, norm);
        }

        return TRUE;
    }

    return FALSE;
}
