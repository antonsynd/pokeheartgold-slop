typedef unsigned int u32;
typedef signed int s32;
typedef signed long long s64;

s32 FX_Div(s32 numer, s32 denom);

static inline s32 fxmul(s32 a, s32 b)
{
    return (s32)(((s64)a * b + 0x800LL) >> 12);
}

s32 ov92_02260870(s32 *param0)
{
    s32 v0;
    s32 v1;
    s32 v2;

    if (param0[4] >= param0[5]) {
        v0 = param0[5];
        v1 = 1;
    } else {
        v0 = param0[4];
        param0[4] = param0[4] + 1;
        v1 = 0;
    }

    v2 = fxmul(param0[3], v0 << 12);
    v2 = FX_Div(v2, param0[5] << 12);
    v2 += param0[1];

    param0[0] = v2;

    return v1;
}
