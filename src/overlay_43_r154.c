#include "global.h"

#include "bg_window.h"

typedef struct Ov43_0222DF1C {
    u8 filler_00[0xC];
    Window *windows[8];
    u32 windowCounts[8];
} Ov43_0222DF1C;

void ov43_0222DF1C(Ov43_0222DF1C *a0, int idx) {
    u32 i;

    for (i = 0; i < a0->windowCounts[idx]; i++) {
        ClearWindowTilemapAndScheduleTransfer(&a0->windows[idx][i]);
        FillWindowPixelBuffer(&a0->windows[idx][i], 0);
    }
}
