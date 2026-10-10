#include "global.h"

extern const u8 ov48_0225B238[];

u8 ov48_0225B038(u32 param0) {
    if (param0 >= 24) {
        GF_AssertFail();
    }
    return ov48_0225B238[param0 * 2];
}
