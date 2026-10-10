#include "global.h"

#include "palette.h"
#include "unk_02005D10.h"

void ov88_02259884(u8 *p) {
    int v0;
    u16 v1;
    u32 i;

    if (*(u16 *)(p + 2) > 0x1c) {
        *(u16 *)p = 0;
    }

    if (*(u16 *)p == 0) {
        return;
    }

    if (*(u16 *)(p + 2) == 0) {
        PlaySE((u16)*(u32 *)(p + 8));
    }

    i = *(u16 *)(p + 2);
    if (i < 2) {
        v0 = (i * 16) / 2;
    } else if (i < 0xe) {
        v0 = 0x10;
    } else {
        v0 = 0x10 - ((i - 0xe) * 16) / 0xe;
    }

    v1 = 0xe;
    BlendPalette(&v1, (u16 *)(p + 4), 1, v0, 0x19);
    DC_FlushRange(p + 4, 2);
    GX_LoadBGPltt(p + 4, *(u16 *)(p + 6), 2);
    *(u16 *)(p + 2) = *(u16 *)(p + 2) + 1;
}
