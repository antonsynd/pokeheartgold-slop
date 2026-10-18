#include "global.h"

typedef struct Ov96Dst {
    u16 first;
    u16 rest[3];
} Ov96Dst;

typedef struct Ov96Src {
    u16 first;
    u16 rest[15];
} Ov96Src;

void ov96_021E5F24(void *a0);

void ov96_021E7C94(void *a0, Ov96Dst *dst, Ov96Src *src) {
    int i;
    int j;

    ov96_021E5F24(a0);
    for (i = 0; i < 5; i++) {
        dst[i].first = src[i].first;
        for (j = 0; j < 3; j++) {
            dst[i].rest[j] = src[i].rest[j];
        }
    }
}
