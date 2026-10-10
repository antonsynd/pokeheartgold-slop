typedef unsigned char u8;
typedef unsigned short u16;
typedef signed short s16;
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
float ov92_0226325C(void *a);
void ov92_022632B4(void *dst, void *src, float f);

typedef struct Vec4f {
    float v[4];
} Vec4f;

s32 ov92_02260428(char *param0, s32 param1, s32 param2, s32 param3, s32 param4, float param5, s32 param6)
{
    float v0;
    s32 v1;
    float v2;
    float v3;

    v2 = (float)((double)param5 * ((1.33 / 256) * (double)(param1 - param3)));
    v3 = (float)((double)param5 * ((1.00 / 192) * (double)(param2 - param4)));

    if (param6 != 0) {
        *(float *)(param0 + 0x1FC) = v2;
        *(float *)(param0 + 0x200) = v3;
        *(s32 *)(param0 + 0x1F8) = 8;
        *(float *)(param0 + 0x204) = *(float *)(param0 + 0x1FC) / (float)*(s32 *)(param0 + 0x1F8);
        *(float *)(param0 + 0x208) = *(float *)(param0 + 0x200) / (float)*(s32 *)(param0 + 0x1F8);
    }

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
        Vec4f v13;
        float v14;

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
        v14 = ov92_0226325C(param0 + 0x190);
        v13 = *(Vec4f *)(param0 + 0x190);
        ov92_022632B4(param0 + 0x190, &v13, v14);
        return 1;
    }
    return 0;
}
