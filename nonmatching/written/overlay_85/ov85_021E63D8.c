#include "global.h"

extern void ov85_021E73D4(void *p, int a, int i, int slot);

int ov85_021E63D8(u8 *p) {
    int i = 0;
    int v2 = *(int *)(*(u8 **)(p + 0x28) + 0x10);
    int count;
    int slot;

    if (*(int *)(p + 0x30) > 0) {
        do {
            slot = *(int *)(p + v2 * 0xb0 + 0x2dc);
            ov85_021E73D4(p, *(int *)(p + slot * 4 + 0x98), i, slot);
            count = *(int *)(p + 0x30);
            v2 = (v2 + 1) % count;
            i++;
        } while (i < count);
    }

    *(int *)(p + 0xc) = 0;
    *(int *)p = 0x25;
    return 0;
}
