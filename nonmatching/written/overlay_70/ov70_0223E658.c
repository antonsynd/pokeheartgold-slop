#include "global.h"
#include "pokemon.h"

typedef struct UnkStruct_ov70_0223E658 {
    u16 species;
    u8 gender;
    u8 level;
} UnkStruct_ov70_0223E658;

extern int ov70_0223E5FC(UnkStruct_ov70_0223E658 *criteria, void *requirements);

int ov70_0223E658(BoxPokemon *boxMon, void *requirements) {
    UnkStruct_ov70_0223E658 criteria;

    criteria.species = GetBoxMonData(boxMon, MON_DATA_SPECIES, NULL);
    criteria.gender = GetBoxMonData(boxMon, MON_DATA_GENDER, NULL) + 1;
    criteria.level = CalcBoxMonLevel(boxMon);

    return ov70_0223E5FC(&criteria, requirements);
}
