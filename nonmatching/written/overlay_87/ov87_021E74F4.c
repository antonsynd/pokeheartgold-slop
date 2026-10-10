#include "global.h"

extern const u8 ov87_021E829C[];

extern void ov87_021E7A44(void *app, int x, int y);

void ov87_021E74F4(u8 *p, int cellIdx) {
    int i;

    if (*(u16 *)(p + 0x3b8) > 0) {
        const u8 *region = ov87_021E829C + cellIdx * 4;
        int left = region[2];
        u8 *entry = p;

        i = 0;
        do {
            int x = *(u16 *)(entry + 0x3ba);
            int y = *(u16 *)(entry + 0x3bc);

            if (left <= x && x <= region[3] && region[0] <= y && y <= region[1]) {
                ov87_021E7A44(p, x, y);
            }
            i++;
            entry += 8;
        } while (i < *(u16 *)(p + 0x3b8));
    }
}
