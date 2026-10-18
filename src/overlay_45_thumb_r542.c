#include "global.h"

#include "gf_gfx_loader.h"
#include "heap.h"
#include "location_gmm_dat.h"

typedef struct Ov45CountryPos {
    u16 type;
    s16 unk2;
    s16 pos;
} Ov45CountryPos;

typedef struct Ov45RegionPos {
    s16 unk0;
    s16 pos;
} Ov45RegionPos;

void ov45_02231018(NARC *narc, int heapId, int country, s16 region, int *out) {
    BOOL found = FALSE;
    u32 size;
    u32 regionSize;
    Ov45CountryPos *countries = GfGfxLoader_LoadFromOpenNarc_GetSizeOut(narc, 18, FALSE, heapId, FALSE, &size);
    Ov45RegionPos *regions;

    GF_ASSERT(country < (int)(size / sizeof(Ov45CountryPos)));
    if (countries[country].type != 2) {
        *out = countries[country].pos;
        found = TRUE;
    }
    Heap_Free(countries);
    if (!found) {
        regions = GfGfxLoader_LoadFromOpenNarc_GetSizeOut(narc, LocationGmmDatGetEarthPlaceDatId(LocationGmmDatIndexGetByCountryMsgNo(country)), FALSE, heapId, FALSE, &regionSize);
        if (region < (int)(regionSize / sizeof(Ov45RegionPos))) {
            *out = regions[region].pos;
        } else {
            GF_ASSERT(FALSE);
            *out = regions[0].pos;
        }
        Heap_Free(regions);
    }
}
