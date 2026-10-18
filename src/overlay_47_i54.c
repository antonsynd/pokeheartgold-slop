#include "global.h"

typedef struct Ov47_02259DA4 {
    u32 values[3];
    u64 total;
} Ov47_02259DA4;

u32 ov47_02259DA4(Ov47_02259DA4 *a0, u32 idx, u32 scale) {
    GF_ASSERT(idx < 3);
    return (u64)scale * a0->values[idx] / a0->total;
}
