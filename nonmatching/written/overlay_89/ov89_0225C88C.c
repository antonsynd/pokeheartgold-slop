#include "global.h"

extern const u8 ov89_0225CE94[];

BOOL ov89_0225C88C(int species, int form, BOOL canShowArceus) {
    if (species == 0x1e7 && form > 0) {
        return FALSE;
    }

    if (species == 0x1ed && canShowArceus == FALSE) {
        return FALSE;
    }

    return ov89_0225CE94[species * 4];
}
