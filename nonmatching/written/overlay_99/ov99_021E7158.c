#include "global.h"

u32 ov99_021E7158(u8 *data) {
    u32 v = *(u32 *)(data + 0x3f4);
    if (((v >> 14) & 0x1f) == (v & 0x1f)) {
        u8 r = ((v >> 5) & 0x1ff) % 30;
        if (r != 0) {
            return r;
        }
    }
    return 30;
}
