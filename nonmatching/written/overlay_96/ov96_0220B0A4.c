#include "global.h"

extern u32 ov96_0221DC68[];
extern u8 ov96_0221CDA0[];
void GF_AssertFail(void);
void ManagedSprite_GetPositionXY(void *sprite, s16 *x, s16 *y);
u32 TouchscreenHitbox_FindRectAtTouchNew(u8 *rects);

BOOL ov96_0220B0A4(u8 *param_1, s32 param_2)
{
    u8 buf[1024] = {0};
    s16 ps[2] = {0, 0};
    u8 *t;
    u32 r5;
    u32 i;
    s32 x;
    s32 y;

    if (param_2 >= 3) {
        GF_AssertFail();
    }
    t = (u8 *)ov96_0221DC68[param_2];
    r5 = (u8)(ov96_0221CDA0[param_2] - 1);
    ManagedSprite_GetPositionXY(*(void **)(param_1 + 4), &ps[1], &ps[0]);
    if (r5 > 0) {
        x = ps[0];
        y = ps[1];
        for (i = 0; i < r5; i++) {
            buf[4 * i + 0] = (u8)(x + t[0]);
            buf[4 * i + 1] = (u8)(x + t[1]);
            buf[4 * i + 2] = (u8)(y + t[2]);
            buf[4 * i + 3] = (u8)(y + t[3]);
            t += 4;
        }
    }
    buf[4 * r5] = 0xff;
    if (TouchscreenHitbox_FindRectAtTouchNew(buf) == 0xffffffff) {
        return 0;
    }
    return 1;
}
