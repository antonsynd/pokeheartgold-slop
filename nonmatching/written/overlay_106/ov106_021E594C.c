#include "global.h"

extern void ov106_021E5DFC(void *a0, void *a1, void *a2, void *a3);

void ov106_021E594C(void *a0, void *a1, void *a2) {
    /* the asm tail-calls through r3, which holds ov106_021E5DFC's own address */
    ov106_021E5DFC(a0, a1, a2, (void *)ov106_021E5DFC);
}
