#include "global.h"

#include "math_util.h"

void ov87_021E7294(u8 *p) {
    u8 v6;
    int i, j, tries;
    int pos;

    v6 = LCRandom() % 4;
    for (i = 0; i < 9; i++) {
        tries = 0;
        while (1) {
            pos = LCRandom() % 9;
            if (p[pos + 0x360] == 0xb0) {
                p[pos + 0x360] = v6;
                if (i == 2 || i == 4 || i == 6) {
                    v6 = v6 + 1;
                    if (v6 == 4) {
                        v6 = 0;
                    }
                }
                break;
            }
            tries++;
            if (tries >= 0x1e) {
                for (j = 0; j < 9; j++) {
                    if (p[j + 0x360] == 0xb0) {
                        p[j + 0x360] = v6;
                        if (i == 2 || i == 4 || i == 6) {
                            v6 = v6 + 1;
                            if (v6 == 4) {
                                v6 = 0;
                            }
                        }
                        break;
                    }
                }
                break;
            }
        }
    }
}
