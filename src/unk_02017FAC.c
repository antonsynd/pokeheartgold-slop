#include "global.h"

#include "constants/map_sections.h"

#include "assert.h"
#include "map_section.h"

static const u16 _020F6280[] = { MAPSEC_MYSTERY_ZONE, METLOC_DAY_CARE_COUPLE, METLOC_LOVELY_PLACE };

int sub_02017FAC(int mapsec) {
    int i = 0;
    const u16 *p = _020F6280;
    do {
        if ((u32)mapsec < p[1]) {
            return i;
        }
        i++;
        p++;
    } while (i < 2);
    return i;
}

int sub_02017FCC(int mapsec) {
    return mapsec - _020F6280[sub_02017FAC(mapsec)];
}

int sub_02017FE4(MapsecType type, int offset) {
    GF_ASSERT(type < MAPSECTYPE_MAX);
    return offset + _020F6280[type];
}

BOOL LocationIsDiamondPearlCompatible(mapsec_t mapsec) {
    if ((mapsec >= MAPSEC_TWINLEAF_TOWN && mapsec <= MAPSEC_BATTLE_PARK) || (mapsec >= METLOC_DAY_CARE_COUPLE && mapsec <= METLOC_RILEY) || (mapsec >= METLOC_LOVELY_PLACE && mapsec <= METLOC_CONCERT_EVENT)) {
        return TRUE;
    }
    return FALSE;
}
