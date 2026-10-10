#include "global.h"

extern int ov102_021EB088(void *a0, int a1, void *a2, void *a3);

int ov102_021EAF50(void *a0, void *a1, void *a2, void *a3) {
    return ov102_021EB088(a0, 1, a2, (void *)ov102_021EB088);
}
