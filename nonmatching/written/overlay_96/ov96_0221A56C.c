#include "global.h"

extern u32 ov96_0221D9A0[];

void ov96_0221A56C(u32 param_1, u32 param_2)
{
    u32 fn = ov96_0221D9A0[param_2];

    ((void (*)(u32, u32, u32, u32))fn)(param_1, param_2, fn, param_2 << 2);
}
