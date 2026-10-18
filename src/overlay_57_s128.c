#include "global.h"

#include "pokemon.h"

typedef struct Ov57Party {
    int count;
    Pokemon *mons[6];
} Ov57Party;

typedef struct Ov57Preset {
    int partySlot;
    void *colors;
} Ov57Preset;

typedef struct Ov57_0223B7C4 {
    Ov57Party *party;
    Ov57Preset presets[124];
    u8 filler_3E4[8];
    int presetIndex;
    u8 filler_3F0[0x68];
    Pokemon *mon;
} Ov57_0223B7C4;

void ov57_0223B7C4(Ov57_0223B7C4 *a0) {
    int i;
    int slot = a0->presets[a0->presetIndex].partySlot;

    if (slot != 0xFF) {
        CopyPokemonToPokemon(a0->party->mons[slot], a0->mon);
        return;
    }
    for (i = 0; i < a0->party->count; i++) {
        Pokemon *mon = a0->party->mons[i];

        if (GetMonData(mon, MON_DATA_IS_EGG, NULL) == FALSE) {
            CopyPokemonToPokemon(mon, a0->mon);
            return;
        }
    }
}
