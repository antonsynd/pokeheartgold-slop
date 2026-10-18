#include "global.h"

#include "math_util.h"

typedef struct Ov96Contestant {
    u32 unk0_0 : 26;
    u32 level : 6;
} Ov96Contestant;

typedef struct Ov96_0220CCBC {
    u8 filler_00[4];
    Ov96Contestant contestants[4];
    u32 unk14_0 : 30;
    u32 current : 2;
} Ov96_0220CCBC;

extern const int ov96_0221CE08[];

BOOL ov96_0220CCBC(Ov96_0220CCBC *a0) {
    int chance = 0;
    u8 roll = MTRandom() % 100;
    u8 level = a0->contestants[a0->current].level;

    GF_ASSERT(level < 3);
    chance += ov96_0221CE08[level];
    if (roll < chance) {
        return TRUE;
    }
    return FALSE;
}
