#include "global.h"

extern u8 ov102_021E7A0C(void *a0, void *a1, void *a2, void *a3);

u8 ov102_021E8FB4(u8 *a0, void *a1, void *a2, void *a3) {
    return ov102_021E7A0C(a0 + 0x64, a1, a2, (void *)ov102_021E7A0C);
}
