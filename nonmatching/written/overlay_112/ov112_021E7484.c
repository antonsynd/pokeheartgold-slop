#include "global.h"

extern void ov112_021E5EC4(u32 a, u32 b, u32 c);
extern u8 ov112_021FFB24[];

void ov112_021E7484(BOOL flag) {
    ov112_021FFB24[0x1C] = 0x2A;
    if (flag) {
        ov112_021FFB24[0x1D] = 0x2A;
    } else {
        ov112_021FFB24[0x1D] = 0x2C;
    }
    ov112_021E5EC4(0, 0, 0x28);
}
