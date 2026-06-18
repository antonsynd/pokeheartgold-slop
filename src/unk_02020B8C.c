// clang-format off
#include <nitro/fx.h>
#include "unk_02020B8C.h"
// clang-format on

#include "math_util.h"

fx32 VEC_DotProduct(const VecFx32 *a, const VecFx32 *b);
void VEC_MultAdd(fx32 t, const VecFx32 *a, const VecFx32 *b, VecFx32 *axb);
u16 FX_Atan2Idx(fx32 y, fx32 x);
fx32 FX_Modf(fx32 x, fx32 *iptr);

int sub_02020B8C(int a, int b);
int sub_02020B94(int a, int b);
u16 CalcAngleBetweenVecs(VecFx32 *a, VecFx32 *b);
void sub_02020DA4(MtxFx33 *rotation, u16 xAngle, u16 yAngle, u16 zAngle);
void sub_02020E10(int angle, fx32 a1, fx32 a2, fx32 *a3, fx32 *a4);
int sub_02020E80(VecFx32 *a, VecFx32 *b, VecFx32 *c);
int sub_02020EB0(VecFx32 *p1, VecFx32 *p2, VecFx32 *p3, VecFx32 *p4);
static void sub_02020EF4(fx32 *out, int x1, int y1, int x2, int y2);
int sub_02020F4C(VecFx32 *a, VecFx32 *b, VecFx32 *c, VecFx32 *d, VecFx32 *out);

int sub_02020B8C(int a, int b) {
    return (a < b) ? a : b;
}

int sub_02020B94(int a, int b) {
    return (a > b) ? a : b;
}

fx32 GetDistanceFromPointToLine(VecFx32 *a, VecFx32 *near, VecFx32 *far) {
    VecFx32 lineDir;
    VecFx32 toPoint;
    VecFx32 diff;
    VecFx32 proj;
    VecFx32 zero = { 0, 0, 0 };
    fx32 t;
    VEC_Subtract(far, near, &lineDir);
    VEC_Subtract(a, near, &toPoint);
    t = FX_Div(VEC_DotProduct(&lineDir, &toPoint),
        FX_Mul(lineDir.x, lineDir.x) + FX_Mul(lineDir.y, lineDir.y) + FX_Mul(lineDir.z, lineDir.z));
    VEC_MultAdd(t, &lineDir, &zero, &proj);
    VEC_Subtract(&proj, &toPoint, &diff);
    return VEC_Mag(&diff);
}

u16 CalcAngleBetweenVecs(VecFx32 *a, VecFx32 *b) {
    VecFx32 na;
    VecFx32 nb;
    fx32 cross;
    fx32 dot;
    VEC_Normalize(a, &na);
    VEC_Normalize(b, &nb);
    dot = FX_Mul(na.z, nb.z) + FX_Mul(na.x, nb.x);
    cross = FX_Mul(na.z, nb.x) - FX_Mul(na.x, nb.z);
    if (dot == 0) {
        if (cross > 0) {
            return 0x4000;
        }
        return 0xC000;
    }
    return FX_Atan2Idx(cross, dot);
}

void sub_02020D2C(MtxFx33 *rotation, VecFx32 *angles) {
    MtxFx33 tmp;
    MTX_RotX33_(rotation, FX_SinIdx((u16)angles->x), FX_CosIdx((u16)angles->x));
    MTX_RotY33_(&tmp, FX_SinIdx((u16)angles->y), FX_CosIdx((u16)angles->y));
    MTX_Concat33(rotation, &tmp, rotation);
    MTX_RotZ33_(&tmp, FX_SinIdx((u16)angles->z), FX_CosIdx((u16)angles->z));
    MTX_Concat33(rotation, &tmp, rotation);
}

void sub_02020DA4(MtxFx33 *rotation, u16 xAngle, u16 yAngle, u16 zAngle) {
    MtxFx33 tmp;
    fx32 cos;
    cos = GF_CosDegNoWrap(xAngle);
    MTX_RotX33_(rotation, GF_SinDegNoWrap(xAngle), cos);
    cos = GF_CosDegNoWrap(yAngle);
    MTX_RotY33_(&tmp, GF_SinDegNoWrap(yAngle), cos);
    MTX_Concat33(rotation, &tmp, rotation);
    cos = GF_CosDegNoWrap(zAngle);
    MTX_RotZ33_(&tmp, GF_SinDegNoWrap(zAngle), cos);
    MTX_Concat33(rotation, &tmp, rotation);
}

void sub_02020E10(int angle, fx32 a1, fx32 a2, fx32 *a3, fx32 *a4) {
    fx32 tan = FX_Div(FX_SinIdx(angle), FX_CosIdx(angle));
    fx32 v = FX_Mul(FX_Mul(a1, tan), 0x2000);
    *a4 = v;
    *a3 = FX_Mul(v, a2);
}

int sub_02020E80(VecFx32 *a, VecFx32 *b, VecFx32 *c) {
    fx32 cross = b->x * (c->y - a->y) + (c->x * (a->y - b->y) + a->x * (b->y - c->y));
    if (cross < 0) {
        return 0;
    }
    return 1;
}

int sub_02020EB0(VecFx32 *p1, VecFx32 *p2, VecFx32 *p3, VecFx32 *p4) {
    int d1 = sub_02020E80(p1, p2, p3);
    if ((sub_02020E80(p1, p2, p4) ^ d1) == 1) {
        int d3 = sub_02020E80(p3, p4, p1);
        if ((sub_02020E80(p3, p4, p2) ^ d3) == 1) {
            return 1;
        }
    }
    return 0;
}

static void sub_02020EF4(fx32 *out, int x1, int y1, int x2, int y2) {
    fx32 line[2];
    int dy = (s16)(y2 - y1);
    int dx = (s16)(x2 - x1);
    if (dx != 0) {
        line[0] = FX_Div(dy << 12, dx << 12);
    } else {
        line[0] = 0xFF << 12;
    }
    line[1] = (y1 << 12) - FX_Mul(line[0], x1 << 12);
    out[1] = line[1];
    out[0] = line[0];
}

int sub_02020F4C(VecFx32 *a, VecFx32 *b, VecFx32 *c, VecFx32 *d, VecFx32 *out) {
    fx32 intPartX;
    fx32 intPartY;
    fx32 line1[2];
    fx32 line2[2];
    fx32 ix;
    fx32 iy;
    fx32 maxX1, minX1, maxY1, minY1, maxX2, minX2, maxY2, minY2;
    if (out != NULL) {
        out->x = 0xFFFF;
        out->y = 0xFFFF;
    }
    if (sub_02020EB0(a, b, c, d) == 0) {
        return 0;
    }
    sub_02020EF4(line1, a->x, a->y, b->x, b->y);
    sub_02020EF4(line2, c->x, c->y, d->x, d->y);
    if (line1[0] == line2[0]) {
        return 0;
    }
    ix = FX_Div(line2[1] - line1[1], line1[0] - line2[0]);
    iy = line2[1] + FX_Mul(line2[0], ix);
    if (FX_Modf(ix, &intPartX) >= 0x800) {
        intPartX += 0x1000;
    }
    out->x = intPartX >> 12;
    if (FX_Modf(iy, &intPartY) >= 0x800) {
        intPartY += 0x1000;
    }
    out->y = intPartY >> 12;
    if (a->x >= b->x) {
        maxX1 = a->x;
        minX1 = b->x;
    } else {
        maxX1 = b->x;
        minX1 = a->x;
    }
    if (a->y >= b->y) {
        maxY1 = a->y;
        minY1 = b->y;
    } else {
        maxY1 = b->y;
        minY1 = a->y;
    }
    if (c->x >= d->x) {
        maxX2 = c->x;
        minX2 = d->x;
    } else {
        maxX2 = d->x;
        minX2 = c->x;
    }
    if (c->y >= d->y) {
        maxY2 = c->y;
        minY2 = d->y;
    } else {
        maxY2 = d->y;
        minY2 = c->y;
    }
    if (maxX1 >= out->x && minX1 <= out->x && maxY1 >= out->y && minY1 <= out->y && maxX2 >= out->x && minX2 <= out->x && maxY2 >= out->y && minY2 <= out->y) {
        return 1;
    }
    return 0;
}
