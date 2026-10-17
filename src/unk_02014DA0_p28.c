#include "global.h"

extern void *_021D10A8[16];

int sub_02015420(void) {
    int count = 0;
    int i;

    for (i = 0; i < 16; i++) {
        if (_021D10A8[i] != NULL) {
            count++;
        }
    }
    return count;
}
