#include "global.h"

extern int ov102_021EB130(void *a0, u32 a1, void *a2, void *a3);

int ov102_021EA258(u8 *a0, void *a1, void *a2, void *a3) {
    return ov102_021EB130(*(void **)(a0 + 0x1e0), 0x1e0, a2, (void *)ov102_021EB130);
}
