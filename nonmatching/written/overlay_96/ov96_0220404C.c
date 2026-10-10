#include "global.h"

#define DBL(hi, lo) (((union { u64 u; double d; }){((u64)(hi) << 32) | (u64)(lo)}).d)

void ov96_0220404C(s32 param_1, s32 param_2, float *param_3, float *param_4)
{
    float f0 = (float)param_1;
    float a1f = (float)param_2;
    float r7;
    double x;
    double y;
    float out2;

    r7 = (float)(DBL(0x403689D8, 0x9D89D89E) + (5.0 * (double)a1f) / 52.0);

    x = DBL(0x3FC8CCCC, 0xCCCCCCCD) * (double)f0;
    y = ((x + (double)a1f / 8.0) - 15.5) - 10.0;
    out2 = (float)(y / (DBL(0x3FD937A6, 0xF4DE9BD3) + (double)a1f / 512.0));

    *param_4 = r7;
    *param_3 = out2;
}
