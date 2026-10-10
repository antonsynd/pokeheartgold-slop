typedef unsigned short u16;
typedef signed short s16;
typedef unsigned int u32;
typedef signed int s32;
typedef signed long long s64;

typedef struct VecFx32 {
    s32 x;
    s32 y;
    s32 z;
} VecFx32;

s32 FX_Div(s32 numer, s32 denom);

static inline s32 fxmul(s32 a, s32 b)
{
    return (s32)(((s64)a * b + 0x800LL) >> 12);
}

void ov91_02261208(const VecFx32 *param0, const VecFx32 *param1, const VecFx32 *param2, s32 param3, VecFx32 *param4, s32 *param5)
{
    s32 v0;
    s32 num;
    s32 den;

    num = param3 - (fxmul(param2->x, param0->x) + fxmul(param2->y, param0->y) + fxmul(param2->z, param0->z));
    den = fxmul(param2->z, param1->z) + fxmul(param2->x, param1->x) + fxmul(param2->y, param1->y);
    v0 = FX_Div(num, den);

    param4->x = param0->x + fxmul(param1->x, v0);
    param4->y = param0->y + fxmul(param1->y, v0);
    param4->x = param0->z + fxmul(param1->z, v0);

    *param5 = v0;
}
