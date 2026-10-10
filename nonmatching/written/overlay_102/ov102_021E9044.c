#include "global.h"

extern int ov102_021E87A8(void *a0, void *a1, void *a2, void *a3);

int ov102_021E9044(u8 *a0, void *a1, void *a2, void *a3) {
    return ov102_021E87A8(a0 + 0x54, a1, a2, (void *)ov102_021E87A8);
}
