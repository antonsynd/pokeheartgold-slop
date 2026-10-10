#include "global.h"
#include "sprite.h"

extern u8 ov27_0225D3C6[];

void ov27_0225CD74(u8 *ctx, int idx) {
    Sprite_SetAnimCtrlSeq(*(Sprite **)(ctx + 0x388), ov27_0225D3C6[(idx - 2) * 0x18] + 2);
}
