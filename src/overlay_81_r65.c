#include "global.h"

#include "pokemon.h"
#include "pokepic.h"

typedef struct Ov81_02240F48 {
    u8 filler_000[0x1A8];
    PokepicManager *pokepicManager;
    Pokepic *pokepics[4];
} Ov81_02240F48;

Pokepic *ov81_02242C80(PokepicManager *manager, int a1, Pokemon *mon, int a3, int a4, int a5);
void ov81_02242CB0(Pokepic *pokepic, int a1);

void ov81_02240F48(Ov81_02240F48 *a0, int index, Pokemon *mon, int a3, int a4, int a5) {
    int species;

    a0->pokepics[index] = ov81_02242C80(a0->pokepicManager, 0, mon, a3, a4, 0);
    Pokepic_SetAttr(a0->pokepics[index], 6, 0);
    species = GetMonData(mon, MON_DATA_SPECIES, NULL);
    if (GetMonBaseStat_HandleAlternateForm(species, GetMonData(mon, MON_DATA_FORM, NULL), BASE_FLIP) == 0) {
        ov81_02242CB0(a0->pokepics[index], a5);
    }
}
