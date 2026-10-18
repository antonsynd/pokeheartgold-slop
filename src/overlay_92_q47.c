#include "global.h"

#include "sprite_system.h"

typedef struct Ov92AnimPair {
    int animA;
    int animB;
} Ov92AnimPair;

typedef struct Ov92AnimPairs {
    Ov92AnimPair pairs[4];
} Ov92AnimPairs;

typedef struct Ov92_0225DFA4 {
    u8 filler_00[0x1C];
    ManagedSprite *spritesA[3];
    ManagedSprite *spritesB[3];
    u8 filler_34[0xC0];
    u16 selection[4];
} Ov92_0225DFA4;

extern const Ov92AnimPairs ov92_02263B8C;

int ov92_0225DFA4(Ov92_0225DFA4 *a0, int index) {
    Ov92AnimPairs table = ov92_02263B8C;
    u16 selection = a0->selection[index];
    int animA = ManagedSprite_GetActiveAnim(a0->spritesA[selection]);
    int animB = ManagedSprite_GetActiveAnim(a0->spritesB[selection]);
    int i;

    for (i = 0; i < 4; i++) {
        if (animA == table.pairs[i].animA && animB == table.pairs[i].animB) {
            return i;
        }
    }
    GF_ASSERT(FALSE);
    return 0;
}
