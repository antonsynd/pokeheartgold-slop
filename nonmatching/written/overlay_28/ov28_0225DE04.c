#include "global.h"
#include "math_util.h"

void ov28_0225DE04(s32 *out, u16 angle) {
    s64 prod;

    prod = (s64)GF_CosDeg(angle) * 0x44000;
    out[0] = (s32)((prod + 0x800) >> 12) + 0x54000;
    prod = (s64)GF_SinDeg(angle) * 0x44000;
    out[1] = (s32)((prod + 0x800) >> 12) + 0x164000;
}
