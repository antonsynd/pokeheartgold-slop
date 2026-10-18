#include "global.h"

u8 ov96_0221A61C(f32 speed);

u8 ov96_0221A640(u32 frames) {
    return ov96_0221A61C(11500.0 / (frames / 30.0f));
}
