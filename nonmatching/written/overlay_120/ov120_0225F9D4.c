#include "global.h"
#include "sprite.h"

extern void ov01_021F0614(u32 a0, u32 a1, u32 a2, u32 a3, u32 a4, u32 a5, u32 a6, u32 a7, u32 a8);
extern Sprite *ov01_021F0718(u32 a0, u32 a1, u32 a2, u32 a3, u32 a4, u32 a5);

extern u32 ov120_022601F4[];
extern u32 ov120_022601F8[];
extern u32 ov120_022601FC[];
extern u32 ov120_02260200[];

void ov120_0225F9D4(u32 a0, Sprite **outSprite, u32 a2, u32 a3, int idx) {
    GF_ASSERT(idx != 2);
    ov01_021F0614(a0, a2, a3, ov120_02260200[idx * 4], 1, ov120_022601F4[idx * 4], ov120_022601FC[idx * 4], ov120_022601F8[idx * 4], 600000);
    *outSprite = ov01_021F0718(a2, a3, 0x80000, 0x60000, 0, 0);
    Sprite_SetDrawFlag(*outSprite, TRUE);
    Sprite_SetDrawPriority(*outSprite, 0x10);
    Sprite_SetPriority(*outSprite, 1);
}
