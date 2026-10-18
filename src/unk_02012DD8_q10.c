#include "global.h"

GXWndPlane sub_0201333C(int screen) {
    if (screen == 0) {
        return G2_GetWndOutsidePlane();
    } else {
        return G2S_GetWndOutsidePlane();
    }
}
