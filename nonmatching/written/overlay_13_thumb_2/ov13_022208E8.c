#include "global.h"

extern void *(*ov13_0224DD80)(u32 size, void *self);

void *ov13_022208E8(u32 size) {
    return ov13_0224DD80(size, ov13_0224DD80);
}
