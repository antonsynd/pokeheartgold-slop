#include "global.h"

#include "sprite_system.h"

typedef struct Ov96Rank {
    u8 rank;
    u8 player;
} Ov96Rank;

typedef struct Ov96_0221966C {
    void *course;
    u8 filler_04[0x84];
    ManagedSprite *sprites[4];
    u8 filler_98[0x2A];
    u16 value;
} Ov96_0221966C;

u8 ov96_021E5F24(void *course);
void ov96_02219A5C(Ov96_0221966C *a0, u8 value);

void ov96_0221966C(Ov96_0221966C *a0, u8 player, u16 value, const Ov96Rank *ranks) {
    int place;
    int i;

    GF_ASSERT(a0 != NULL);
    GF_ASSERT(player < 4);
    place = 0;
    for (i = 0; i < 4; i++, ranks++) {
        ManagedSprite_SetAnimNoRestart(a0->sprites[ranks->player], place + 6);
        if (i != 3 && ranks[0].rank != ranks[1].rank) {
            place = i + 1;
        }
    }
    if (player == ov96_021E5F24(a0->course) && value != a0->value) {
        ov96_02219A5C(a0, value);
        a0->value = value;
    }
}
