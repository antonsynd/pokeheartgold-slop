#include "global.h"

extern u32 _ffixu(float value);

u8 ov96_0221A61C(u32 param_1)
{
    u32 value;

    value = _ffixu(*(float *)&param_1);
    if ((double)value > 200.0) {
        value = 200;
    }
    return (u8)value;
}
