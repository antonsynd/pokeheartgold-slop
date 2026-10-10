#include "global.h"

extern u32 ov112_021FFAA4[];

void ov112_021E5E28(void) {
    u8 *p = (u8 *)ov112_021FFAA4[0x20 / 4];
    s64 off = OS_GetOwnerRtcOffset();
    *(u32 *)(p + 0x10) = (u32)off;
    *(u32 *)(p + 0x14) = (u32)((u64)off >> 32);
    OS_GetLowEntropyData((u32 *)(p + 0x18));
}
