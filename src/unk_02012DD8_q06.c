#include "global.h"

void sub_020131F4(int window, int screen) {
    if (screen == 0) {
        GX_SetVisibleWnd(window);
    } else {
        GXS_SetVisibleWnd(window);
    }
}
