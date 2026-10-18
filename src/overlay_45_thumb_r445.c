#include "global.h"

typedef struct Ov45_0222F898 {
    u8 filler_00[0x24];
    u8 *buffer;
    u32 stride;
} Ov45_0222F898;

int ov45_0222FB24(Ov45_0222F898 *a0, int a1, int a2);

void ov45_0222F898(Ov45_0222F898 *a0, int a1, const void *src, u32 size) {
    int idx = ov45_0222FB24(a0, a1, 0);
    u32 stride;
    u8 *dest;

    GF_ASSERT(idx != -1);
    stride = a0->stride;
    dest = a0->buffer + stride * idx;
    if (stride > size) {
        memset(dest, 0, stride);
    } else {
        size = stride;
    }
    memcpy(dest, src, size);
}
