#include "global.h"

typedef struct BattleAnimSystem {
    u8 filler_00[0x18];
    u32 *scriptPtr;
} BattleAnimSystem;

typedef struct Ov07Flags {
    u32 flags[6];
} Ov07Flags;

extern const Ov07Flags ov07_02234BA8;
extern void (*const ov07_02234C40[])(BattleAnimSystem *system);

BOOL ov07_0221DEB0(u32 *scriptPtr, u32 flag);

void ov07_0221DEC0(BattleAnimSystem *system) {
    Ov07Flags flags = ov07_02234BA8;
    u32 i;

    for (i = 0; i < 6; i++) {
        if (ov07_0221DEB0(system->scriptPtr, flags.flags[i])) {
            int bit = 0;
            int value = flags.flags[i] >> 16;

            while (value >= 2) {
                value /= 2;
                bit++;
            }
            ov07_02234C40[bit](system);
        }
    }
}
