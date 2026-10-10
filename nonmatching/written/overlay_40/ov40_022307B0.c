#include "global.h"

int ov40_022307B0(u64 param0) {
    int digits = 1;
    u64 value = param0;

    while (value > 1) {
        value /= 10;
        digits++;
    }

    return digits;
}
