#include "global.h"

extern void ov85_021E8530(int *p, int a);

void ov85_021E75C8(u8 *param0) {
    u8 *v0 = param0 + 0xd4;
    int v1 = *(int *)(v0 + 0x3c);

    ov85_021E8530(&v1, *(int *)(v0 + 0x40));
    ov85_021E8530(&v1, *(int *)(v0 + 0x44));

    *(s16 *)(v0 + 0x4e) = (360 - (v1 / 4096)) % 360;
    *(int *)(v0 + 0x0c) = *(int *)(v0 + 0x00) + *(int *)(v0 + 0x30) + *(int *)(v0 + 0x24);
    *(int *)(v0 + 0x10) = *(int *)(v0 + 0x04) + *(int *)(v0 + 0x34) + *(int *)(v0 + 0x28);
    *(int *)(v0 + 0x14) = *(int *)(v0 + 0x08) + *(int *)(v0 + 0x38) + *(int *)(v0 + 0x2c);
}
