#include "global.h"

typedef struct BattleAnimContextC0 {
    u8 filler_00[0xC];
    u32 unkC;
} BattleAnimContextC0;

typedef struct BattleAnimSystem {
    u8 filler_00[0x18];
    u32 *scriptPtr;
    u8 filler_1C[0xA4];
    BattleAnimContextC0 *unkC0;
} BattleAnimSystem;

typedef struct Ov07Flags4 {
    u32 flags[4];
} Ov07Flags4;

extern const Ov07Flags4 ov07_02234B98;

void ov07_0221D1B8(BattleAnimSystem *system) {
    Ov07Flags4 flags = ov07_02234B98;
    u32 mask;
    u32 i;

    system->scriptPtr++;
    mask = system->unkC0->unkC;
    if (mask != 0) {
        system->scriptPtr++;
        for (i = 0; i < 4; i++) {
            if (flags.flags[i] & mask) {
                break;
            }
            system->scriptPtr++;
        }
    }
    system->scriptPtr += *system->scriptPtr;
}
