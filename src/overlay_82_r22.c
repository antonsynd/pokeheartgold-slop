#include "global.h"

#include "frontier/overlay_80_022372D8.h"

typedef struct Ov82_0223ED94 {
    u8 filler_0[9];
    u8 unk9;
} Ov82_0223ED94;

void ov82_0223ED94(Ov82_0223ED94 *a0) {
    if (ov80_0223792C(a0->unk9)) {
        GX_SetVisibleWnd(GX_WNDMASK_NONE);
        G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, FALSE);
        G2_SetWndOutsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, TRUE);
        G2_SetWnd0Position(240, 0, 0, 16);
        GX_SetVisibleWnd(GX_WNDMASK_W0);
    }
}
