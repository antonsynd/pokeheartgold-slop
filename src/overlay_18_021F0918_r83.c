#include "global.h"

#include "sprite_system.h"

typedef struct Ov18_021F2C98 {
    u8 filler_000[0x670];
    ManagedSprite *sprites[1];
} Ov18_021F2C98;

typedef struct Ov18_021FA310 {
    u8 unk0;
    u8 unk1[1];
} Ov18_021FA310;

extern const Ov18_021FA310 ov18_021FA310;

u8 ov18_021F2C98(Ov18_021F2C98 *a0, int idx) {
    return ov18_021FA310.unk1[ManagedSprite_GetActiveAnim(a0->sprites[idx])];
}
