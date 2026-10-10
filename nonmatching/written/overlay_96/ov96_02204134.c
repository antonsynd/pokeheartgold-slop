#include "global.h"

#define DBL(hi, lo) (((union { u64 u; double d; }){((u64)(hi) << 32) | (u64)(lo)}).d)

void ov96_02204134(float a0, float a1, s32 *param_2, s32 *param_3)
{
    double da = (double)a1;
    double sq = (da - 57.0) * (da - 57.0);
    double v1 = 4.0 / (1.0 + sq);
    float f2 = a1 * a1;
    float f3 = a1 * f2;
    double v2 = 11.0 + (double)f3 / 7600.0;
    double v3 = 24.0 - da;
    double s2 = (24.0 - da) * (24.0 - da);
    double s3 = v3 * s2;
    double r = (v2 - s3 / 4400.0) - 1.0;
    float w1 = (float)(v1 + r);
    float w2 = (float)((double)w1 * 8.0);
    double z2;
    double m1;
    double m2;
    double m3;
    double m4;
    float w3;

    *param_3 = (s32)w2;

    z2 = 10.0 + DBL(0x3FD642C8, 0x590B2164) * (double)a0;
    m1 = DBL(0x3FE4A529, 0x4A5294A5) * ((double)w2 / 8.0 - 10.0);
    m2 = m1 * (64.0 - (double)a0);
    m3 = m2 / 64.0;
    m4 = z2 - m3;
    w3 = (float)((double)(float)m4 * 8.0);
    *param_2 = (s32)w3;
}
