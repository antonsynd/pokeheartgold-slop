#include "global.h"

extern const u8 ov86_021E81DC[];
extern void ov86_021E6024(void *a, int b, int c, int d, int e, int f, int g, int h);

void ov86_021E7598(void *param0) {
    u16 i;

    for (i = 0; i < 0x1a; i++) {
        int v6 = ov86_021E81DC[i];
        int rem = v6 % 7;
        int quot = v6 / 7;

        ov86_021E6024(param0, 4, i + 0x38, rem * 32 + 0x18, quot * 32, 4, 0xf0100, 2);
    }
}
