#include "global.h"

s64 _ll_mul(s64 a, s64 b);
s32 FX_Sqrt(s32 value);

void sub_02011A44(int param0, int param1, int param2, int param3, int *param4, int *param5)
{
    s32 v0;
    s32 v1;
    s32 v1s;
    s32 v0s;
    s64 sq0;
    s64 sq1;
    u32 a;
    u32 b;
    s32 sqrt;
    s32 v2;
    s32 out1;
    s32 out2;

    v0 = (param0 + (s32)((u32)(param0 >> 6) >> 25)) >> 7;
    v1 = param3 - param2;
    if (v1 < 0) {
        v1 = -v1;
    }
    if (v1 >= v0) {
        *param4 = 0;
        *param5 = 0;
        return;
    }

    v1s = v1 << 12;
    v0s = v0 << 12;
    sq0 = _ll_mul((s64)v0s, (s64)v0s);
    sq1 = _ll_mul((s64)v1s, (s64)v1s);
    a = (u32)((u64)(sq0 + 0x800) >> 12);
    b = (u32)((u64)(sq1 + 0x800) >> 12);
    sqrt = FX_Sqrt((s32)(a - b));
    v2 = sqrt >> 12;

    out1 = param1 - v2;
    if (out1 < 0) {
        out1 = 0;
    }
    *param4 = out1;
    out2 = *param4 + (v2 * 2);
    if (out2 > 255) {
        out2 = 255;
    }
    *param5 = out2;
}
