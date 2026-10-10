#include "global.h"

#include "error_handling.h"

void ov89_0225AED0(u8 *param0, u8 *param1) {
    int v0;
    u8 *v1 = param0 + 0x53c;

    for (v0 = 0; v0 < 0x80; v0++) {
        if (v1[1] == 0) {
            u32 bits = *(u32 *)(param1 + 0x240);

            bits = ((u32)v0 << 24) | (bits & 0xffffff);
            *(u32 *)(param1 + 0x240) = bits;
            v1[0] = 0;
            v1[1] = v1[1] + 1;
            return;
        }
        v1 += 4;
    }

    GF_AssertFail();
}
