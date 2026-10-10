#include "global.h"

extern void ov108_021E8ED8(void *a, int b);

void ov108_021EA624(u8 *param) {
    *(u8 *)(param + 0x434) = 1;
    ov108_021E8ED8(param + 0x338, 0);
}
