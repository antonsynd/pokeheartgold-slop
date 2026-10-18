#include "global.h"

typedef struct Ov68_021E7A18 {
    u8 filler_000[0x1B8];
    u8 count;
} Ov68_021E7A18;

void ov68_021E66A0(Ov68_021E7A18 *a0, int a1, u8 y, int a3, int a4, int a5, int a6);

void ov68_021E7A18(Ov68_021E7A18 *a0, u32 selected) {
    u32 i;

    for (i = 0; i < 4; i++) {
        if (i == selected) {
            ov68_021E66A0(a0, 0, i * 4 + 4, 16, 4, 0, 8);
        } else if (i >= a0->count) {
            ov68_021E66A0(a0, 0, i * 4 + 4, 16, 4, 0, 4);
        } else {
            ov68_021E66A0(a0, 0, i * 4 + 4, 16, 4, 0, 0);
        }
    }
}
