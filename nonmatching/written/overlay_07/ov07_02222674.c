#include "global.h"

extern fx32 FX_Modf(fx32 x, fx32 *fractionalPart);

s16 ov07_02222674(s16 baseY, int height, fx32 scaleY) {
    fx32 fractionalPart;
    fx32 availableHeight = (0x50 - height * 2) << 12;
    fx32 scaled = FX_Mul(availableHeight, scaleY);
    fx32 relative = FX_Div(scaled, 0x100000);
    fx32 diff = availableHeight - relative;
    fx32 integerPart = FX_Modf(diff, &fractionalPart);

    if (integerPart != 0) {
        integerPart += 0x800;
    }

    diff = fractionalPart + integerPart;
    return (s16)((diff >> 12) / 2);
}
