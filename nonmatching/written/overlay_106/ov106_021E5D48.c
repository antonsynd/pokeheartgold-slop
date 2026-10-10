#include "global.h"
#include "bg_window.h"

extern const GraphicsModes ov106_021E6D7C;

void ov106_021E5D48(void) {
    GraphicsModes modes = ov106_021E6D7C;
    SetBothScreensModesAndDisable(&modes);
    BG_SetMaskColor(4, 0);
}
