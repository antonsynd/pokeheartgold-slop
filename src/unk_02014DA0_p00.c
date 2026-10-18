#include "global.h"

extern void *_021D10A8[16];

void sub_02014DA0(void) {
    int i;

    for (i = 0; i < 16; i++) {
        _021D10A8[i] = NULL;
    }
}
