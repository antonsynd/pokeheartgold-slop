#include "global.h"

#include "bg_window.h"

typedef struct Ov89WindowPos {
    u8 x;
    u8 y;
} Ov89WindowPos;

typedef struct Ov89_02259CD0 {
    u8 filler_00[8];
    BgConfig *bgConfig;
    u8 filler_0C[0x28];
    Window windows[8];
    Window titleWindow;
} Ov89_02259CD0;

extern const Ov89WindowPos ov89_0225C9CC[];

#pragma optimization_level 2
#pragma opt_common_subs off
void ov89_02259CD0(Ov89_02259CD0 *a0) {
    int i;
    const Ov89WindowPos *pos;

    AddWindowParameterized(a0->bgConfig, &a0->titleWindow, GF_BG_LYR_MAIN_1, 2, 1, 27, 4, 13, 0x5B);
    FillWindowPixelBuffer(&a0->titleWindow, 15);
    for (i = 0; i < 8; i++) {
        pos = &ov89_0225C9CC[i];
        AddWindowParameterized(a0->bgConfig, &a0->windows[i], GF_BG_LYR_SUB_1, pos->x, pos->y, 8, 2, 13, i * 16 + 0x200);
        FillWindowPixelBuffer(&a0->windows[i], 0);
    }
}
