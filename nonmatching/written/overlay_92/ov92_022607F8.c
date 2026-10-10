typedef unsigned int u32;
typedef signed int s32;
typedef signed long long s64;

s32 FX_Div(s32 numer, s32 denom);

static inline s32 fxmul(s32 a, s32 b)
{
    return (s32)(((s64)a * b + 0x800LL) >> 12);
}

s32 ov92_022607F8(s32 *param0)
{
    s32 v1;
    s32 v2;
    s32 v3;
    s32 t = param0[4];

    v3 = fxmul(param0[2], t << 12);
    v1 = (t * t) << 12;
    v2 = fxmul(param0[3], v1);
    v2 = FX_Div(v2, 2 << 12);

    param0[0] = param0[1] + (v3 + v2);

    if (param0[4] + 1 <= param0[5]) {
        param0[4] = param0[4] + 1;
        return 0;
    }
    param0[4] = param0[5];
    return 1;
}
