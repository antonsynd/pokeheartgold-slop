#include "global.h"

extern void sub_020698E8(void *p, int a, int b);

void ov85_021E7B04(u8 *param0, u8 *param1) {
    u8 *v5 = *(u8 **)(param1 + 0x64) + 0x44;
    /* ldmia ignores the low address bits; the following ldr uses the written-back (unaligned) address */
    u8 *aligned = (u8 *)((u32)v5 & ~3u);
    int a = *(int *)(aligned + 0);
    int b = *(int *)(aligned + 4);
    int c;

    *(int *)(param1 + 4) = a;
    *(int *)(param1 + 8) = b;
    c = *(int *)(v5 + 8);
    *(int *)(param1 + 0xc) = c;

    *(int *)(param1 + 8) = *(int *)(param1 + 8) + 0x14000;

    sub_020698E8(param0 + 0x21c + (*(int *)(*(u8 **)(param1 + 0x64) + 0x10)) * 0x24, 0x1000, 1);
}
