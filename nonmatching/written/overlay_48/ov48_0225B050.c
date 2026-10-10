#include "global.h"

extern const u8 ov48_0225B239[];

u8 ov48_0225B050(u32 param0) {
    GF_ASSERT(param0 < 24);
    return ov48_0225B239[param0 * 2];
}
