#include "global.h"

extern u8 ov102_021E8F64(void *a0, void *a1, void *a2, void *a3);

u8 ov102_021E9090(u8 *a0, void *a1, void *a2, void *a3) {
    return ov102_021E8F64(a0 + 0x70, a1, a2, (void *)ov102_021E8F64);
}
