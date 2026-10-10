typedef unsigned int u32;
typedef signed int s32;
typedef signed long long s64;

s32 FX_Sqrt(s32 x);
s64 FX_SinFx64c(s32 x);
s64 FX_CosFx64c(s32 x);
float _f_lltof(s64 x);
void ov92_02263108(void *dst, void *src, void *aux);
void ov92_022632E8(void *a, void *b);
void ov92_022630F8(void *a, void *b);
void ov92_02263824(void *a, void *b);

typedef struct Vec4f {
    float v[4];
} Vec4f;

s32 ov92_02260628(char *param0)
{
    float v0;
    s32 v1;
    float v2;
    float v3;

    v2 = *(float *)(param0 + 0x1FC);
    v3 = *(float *)(param0 + 0x200);

    *(float *)(param0 + 0x1FC) = v2 - *(float *)(param0 + 0x204);
    *(float *)(param0 + 0x200) = *(float *)(param0 + 0x200) - *(float *)(param0 + 0x208);
    *(s32 *)(param0 + 0x1F8) = *(s32 *)(param0 + 0x1F8) - 1;

    {
        float v4 = (v2 * v2) + (v3 * v3);
        float scaled;

        if (v4 > 0.0f) {
            scaled = v4 * 4096.0f + 0.5f;
        } else {
            scaled = v4 * 4096.0f - 0.5f;
        }
        v1 = FX_Sqrt((s32)scaled);
        v0 = (float)v1 / 4096.0f;
    }

    if ((double)v0 != 0.0) {
        float v9 = _f_lltof(FX_SinFx64c(v1)) / 4294967296.0f;
        float v10;
        float v11;
        Vec4f v12;

        v10 = _f_lltof(FX_CosFx64c(v1)) / 4294967296.0f;
        v11 = v9 / v0;

        v12.v[0] = v10;
        v12.v[1] = v3 * v11;
        v12.v[2] = v2 * v11;
        v12.v[3] = 0.0f;

        ov92_02263108(param0 + 0x190, &v12, param0 + 0x1A0);
        ov92_022632E8(param0 + 0x150, param0 + 0x190);
        ov92_022630F8(param0 + 0x1A0, param0 + 0x190);
        ov92_02263824(param0 + 0x150, param0 + 0x1B0);
        return 1;
    }
    return 0;
}
