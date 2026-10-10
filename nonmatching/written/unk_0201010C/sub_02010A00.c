#include "global.h"

s64 _ll_mul(s64 a, s64 b);
int sub_020109BC(int param0);

void sub_02010A00(int param0, int *param1, int param2, int param3)
{
    s32 v1;
    s32 i;
    s64 product;
    s64 rounded;
    u32 mid;

    v1 = sub_020109BC(param0);
    for (i = param3; i < param2; i++) {
        product = _ll_mul((s64)v1, (s64)(s32)((u32)i << 12));
        rounded = product + 0x800;
        mid = (u32)((u64)rounded >> 12);
        param1[i] = (s32)mid >> 12;
    }
}
