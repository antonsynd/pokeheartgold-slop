typedef unsigned int u32;
typedef signed int s32;
typedef signed long long s64;

s32 FX_Div(s32 numer, s32 denom);

static inline s32 fxmul(s32 a, s32 b)
{
    return (s32)(((s64)a * b + 0x800LL) >> 12);
}

void ov92_02260798(s32 *param0, s32 param1, s32 param2, s32 param3, s32 param4)
{
    s32 v0;
    s32 v1;
    s32 v2;
    s32 v3;

    v2 = param2 - param1;
    v0 = (param4 * param4) << 12;
    v1 = fxmul(param3, param4 << 12);
    v1 = v2 - v1;
    v1 = fxmul(v1, 2 << 12);
    v3 = FX_Div(v1, v0);

    param0[0] = param1;
    param0[1] = param1;
    param0[2] = param3;
    param0[3] = v3;
    param0[4] = 0;
    param0[5] = param4;
}
