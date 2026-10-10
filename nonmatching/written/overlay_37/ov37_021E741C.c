#include "global.h"

s32 GF_SinDeg(u16 deg);

void ov37_021E741C(u16 *param0) {
    u16 rgb;
    s32 v;

    *param0 += 20;
    if (*param0 > 360) {
        *param0 = 0;
    }
    v = GF_SinDeg(*param0);
    rgb = (u16)((15 + (v * 10) / 4096) << 5) | 29;
    GX_LoadOBJPltt(&rgb, 0x18, 2);
}
