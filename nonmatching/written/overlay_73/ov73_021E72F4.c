#include "global.h"
#include "math_util.h"

void ov73_021E72F4(u16 *angle) {
    fx32 sinVal;
    u16 color;
    int green;

    *angle += 10;
    if (*angle > 360) {
        *angle = 0;
    }

    sinVal = GF_SinDeg(*angle);
    green = 15 + (sinVal * 10) / FX32_ONE;
    color = (u16)((green << 5) | 29);

    GX_LoadOBJPltt(&color, 5 * 2, 2);
    GX_LoadOBJPltt(&color, (5 + 16) * 2, 2);
}
