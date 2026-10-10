#include "global.h"

s64 _ll_mul(s64 a, s64 b);
int sub_020109BC(int param0);

int sub_020109D8(int param0, int param1)
{
    s64 v0;
    s64 product;
    s64 rounded;
    u32 mid;

    v0 = sub_020109BC(param0);
    product = _ll_mul(v0, (s64)(s32)((u32)param1 << 12));
    rounded = product + 0x800;
    mid = (u32)((u64)rounded >> 12);
    return (s32)mid >> 12;
}
