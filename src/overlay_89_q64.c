#include "global.h"

#pragma optimization_level 2
#pragma opt_common_subs off

typedef struct Ov89Counter {
    u8 hits;
    u8 total;
    u8 filler_2[2];
} Ov89Counter;

typedef struct Ov89_0225AF10 {
    u8 filler_000[0xB0];
    u8 unkB0[4];
    u8 filler_0B4[0x488];
    Ov89Counter counters[128];
    u8 unk73C;
    u8 winner;
    u8 filler_73E;
    u8 level;
} Ov89_0225AF10;

extern const s16 ov89_0225CCD0[];

BOOL ov89_0225AF10(Ov89_0225AF10 *a0, int index, u8 player) {
    if (index == 0xFF) {
        return FALSE;
    }
    a0->counters[index].hits++;
    a0->counters[index].total++;
    if (a0->unk73C == 0 && a0->winner == 0 && a0->counters[index].hits >= ov89_0225CCD0[a0->level]) {
        a0->winner = player;
        MI_CpuFill8(a0->unkB0, 0, sizeof(a0->unkB0));
        return TRUE;
    }
    return FALSE;
}
