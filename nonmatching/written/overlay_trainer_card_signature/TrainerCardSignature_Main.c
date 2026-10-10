#include "global.h"

extern u32 ov52_021E96C0[];

s32 TrainerCardSignature_Main(void *param_1, int *param_2)
{
    u8 *data;
    u32 index;
    u32 fn;

    data = OverlayManager_GetData(param_1);
    if (*param_2 == 0) {
        if (IsPaletteFadeFinished()) {
            *param_2 = 1;
        }
    } else if (*param_2 == 1) {
        index = *(u32 *)(data + 0x30c);
        fn = ov52_021E96C0[index];
        if (fn != 0) {
            *param_2 = ((s32 (*)(u32, u32, u32, u32))fn)((u32)data, (u32)*param_2, fn, index << 2);
        }
        ov52_021E921C(data + 0x4318);
    } else if (*param_2 == 2) {
        if (IsPaletteFadeFinished()) {
            return 1;
        }
    }
    SpriteList_RenderAndAnimateSprites(*(void **)(data + 0x3c));
    return 0;
}
