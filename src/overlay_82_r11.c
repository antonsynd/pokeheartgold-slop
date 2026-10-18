#include "global.h"

#include "bg_window.h"
#include "render_window.h"
#include "screen_fade.h"

typedef struct Ov82_0223E820 {
    u8 filler_00[8];
    u8 state;
    u8 filler_09[0x12];
    u8 timer;
    u8 filler_1C[0x30];
    Window window;
    u8 filler_5C[0x1AC];
    void *unk208;
} Ov82_0223E820;

void ov82_0223F90C(Ov82_0223E820 *a0);
void ov82_0223F834(Ov82_0223E820 *a0);
void ov82_0223FCB0(void *a0, int a1);

BOOL ov82_0223E820(Ov82_0223E820 *a0) {
    switch (a0->state) {
    case 0:
        a0->timer = 10;
        a0->state++;
        break;
    case 1:
        a0->timer--;
        if (a0->timer == 0) {
            ov82_0223F90C(a0);
            BeginNormalPaletteFade(0, 0, 0, RGB_BLACK, 6, 1, HEAP_ID_105);
            a0->state++;
        }
        break;
    case 2:
        if (IsPaletteFadeFinished() == TRUE) {
            return TRUE;
        }
        break;
    }
    return FALSE;
}

BOOL ov82_0223E888(Ov82_0223E820 *a0) {
    switch (a0->state) {
    case 0:
        ov82_0223F834(a0);
        ov82_0223FCB0(a0->unk208, 1);
        ClearFrameAndWindow2(&a0->window, FALSE);
        a0->state++;
        break;
    case 1:
        return TRUE;
    }
    return FALSE;
}
