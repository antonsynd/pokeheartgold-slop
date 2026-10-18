#include "global.h"

typedef struct Ov81_02242694 {
    u8 filler_000[0x12];
    u8 count;
    u8 filler_013[0x34D];
    void *objs[4];
} Ov81_02242694;

void ov81_02242FBC(void *obj, int a1);

void ov81_02242694(Ov81_02242694 *a0, BOOL enable) {
    u32 i;

    if (enable == TRUE) {
        G2S_SetBlendAlpha(0, GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3, 6, 10);
        for (i = 0; i < a0->count; i++) {
            if (a0->objs[i] != NULL) {
                ov81_02242FBC(a0->objs[i], 1);
            }
        }
    } else {
        G2_BlendNone();
        for (i = 0; i < a0->count; i++) {
            if (a0->objs[i] != NULL) {
                ov81_02242FBC(a0->objs[i], 0);
            }
        }
    }
}
