#include "global.h"

extern void *_021D10A8[16];

void sub_02014EBC(void *a0);

void sub_02014F84(void) {
    int i;

    for (i = 0; i < 16; i++) {
        if (_021D10A8[i] != NULL) {
            sub_02014EBC(_021D10A8[i]);
        }
    }
}
