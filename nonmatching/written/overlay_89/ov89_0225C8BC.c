#include "global.h"

extern const u8 ov89_0225CE95[];

int ov89_0225C8BC(int species, int form) {
    if (species == 0x1e7 && form > 0) {
        return 2;
    }

    return ov89_0225CE95[species * 4];
}
