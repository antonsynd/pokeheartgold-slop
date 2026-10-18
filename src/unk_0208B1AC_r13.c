#include "global.h"

int sub_0208B85C(u8 *out, int a1, int a2, u8 a3, int a4) {
    int i;

    a3 += 2;

    for (i = 0; i < 5; i++) {
        if (i > a1) {
            out[i] = 0;
        } else if (i > a2) {
            out[i] = 1;
        } else {
            out[i] = a3;
        }
    }
    if (a4 > 0) {
        return 1;
    }
    return -(a4 < 0);
}
