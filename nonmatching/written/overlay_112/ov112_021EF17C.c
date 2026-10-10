#include "global.h"
#include "bg_window.h"

const GraphicsModes ov112_021FF0DC = { 1, 0, 0, 0 };

void ov112_021EF17C(void) {
    GraphicsModes modes = ov112_021FF0DC;
    SetBothScreensModesAndDisable(&modes);
}
