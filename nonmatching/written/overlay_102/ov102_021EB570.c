#include "global.h"

extern void CopyToBgTilemapRect(void *bgConfig, u8 bgId, u8 destX, u8 destY, u8 destWidth, u8 destHeight, const void *buffer, u8 srcX, u8 srcY, u8 srcWidth, u8 srcHeight);

void ov102_021EB570(u8 *a0, int a1, int a2) {
    u16 *scr = *(u16 **)(a0 + 0x60);
    CopyToBgTilemapRect(*(void **)(a0 + 0x10), 3, a1 * 17 + 2, 0, 0xb, 6, (u8 *)scr + 0xc, 0, a2 * 6, ((u32)scr[0] << 21) >> 24, ((u32)scr[1] << 21) >> 24);
}
