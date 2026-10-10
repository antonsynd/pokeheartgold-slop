#include "global.h"
#include "math_util.h"

void ov65_0221DCBC(u16 *angle) {
    fx32 sinVal;
    u16 color;
    int green;

    *angle += 20;
    if (*angle > 360) {
        *angle = 0;
    }

    sinVal = GF_SinDeg(*angle);
    green = 15 + (sinVal * 10) / FX32_ONE;
    color = (u16)((green << 5) | 29);

    GX_LoadOBJPltt(&color, (16 + 13) * 2, 2);
}
