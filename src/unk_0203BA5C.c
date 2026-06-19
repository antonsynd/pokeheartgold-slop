#include "unk_0203BA5C.h"

#include "global.h"

#include "constants/maps.h"

#include "error_handling.h"
#include "field_system.h"
#include "save_vars_flags.h"
#include "sys_flags.h"

// clang-format off
#define SPAWN(flagIdx, isBlackoutSpawn, isFlyPoint, deathMap, deathX, deathY, flyMap, flyX, flyY, specMap, specX, specY) \
    { (u16)((flagIdx) | ((isBlackoutSpawn) << 8) | ((isFlyPoint) << 9)),                                               \
      (deathMap), (u16)((deathX) | ((deathY) << 8)),                                                                    \
      (flyMap), (flyX), (flyY),                                                                                         \
      (specMap), (specX), (specY) }
// clang-format on

static const u16 sSpawnMaps[][9] = {
    SPAWN(0x0B, 1, 1, MAP_NEW_BARK_PLAYER_HOUSE_1F, 6, 8, MAP_NEW_BARK, 0x02B7, 0x018D, MAP_NEW_BARK, 0x02B7, 0x018D),
    SPAWN(0x0C, 1, 1, MAP_CHERRYGROVE_POKECENTER_1F, 8, 13, MAP_CHERRYGROVE, 0x0234, 0x0188, MAP_CHERRYGROVE, 0x0234, 0x0188),
    SPAWN(0x0D, 1, 1, MAP_VIOLET_POKECENTER_1F, 8, 13, MAP_VIOLET, 0x01F1, 0x0110, MAP_VIOLET, 0x01F1, 0x0110),
    SPAWN(0x0E, 1, 1, MAP_AZALEA_POKECENTER_1F, 8, 13, MAP_AZALEA, 0x019A, 0x01CD, MAP_AZALEA, 0x019A, 0x01CD),
    SPAWN(0x0F, 1, 1, MAP_CIANWOOD_POKECENTER_1F, 8, 13, MAP_CIANWOOD, 0x00BB, 0x0172, MAP_CIANWOOD, 0x00BB, 0x0172),
    SPAWN(0x10, 1, 1, MAP_GOLDENROD_POKECENTER_1F, 8, 13, MAP_GOLDENROD, 0x0160, 0x0171, MAP_GOLDENROD, 0x0160, 0x0171),
    SPAWN(0x11, 1, 1, MAP_OLIVINE_POKECENTER_1F, 8, 13, MAP_OLIVINE, 0x0110, 0x0102, MAP_OLIVINE, 0x0110, 0x0102),
    SPAWN(0x12, 1, 1, MAP_ECRUTEAK_POKECENTER_1F, 8, 13, MAP_ECRUTEAK, 0x018D, 0x00B8, MAP_ECRUTEAK, 0x018D, 0x00B8),
    SPAWN(0x13, 1, 1, MAP_MAHOGANY_POKECENTER_1F, 8, 13, MAP_MAHOGANY, 0x0216, 0x00B8, MAP_MAHOGANY, 0x0216, 0x00B8),
    SPAWN(0x14, 0, 1, MAP_LAKE_OF_RAGE, 8, 13, MAP_LAKE_OF_RAGE, 0x0218, 0x005A, MAP_LAKE_OF_RAGE, 0x0218, 0x005A),
    SPAWN(0x15, 1, 1, MAP_BLACKTHORN_POKECENTER_1F, 8, 13, MAP_BLACKTHORN, 0x02A2, 0x00B1, MAP_BLACKTHORN, 0x02A2, 0x00B1),
    SPAWN(0x16, 1, 1, MAP_MOUNT_SILVER_POKECENTER_1F, 8, 13, MAP_MOUNT_SILVER, 0x0334, 0x010A, MAP_MOUNT_SILVER, 0x0334, 0x010A),
    SPAWN(0x00, 0, 1, MAP_PALLET, 8, 13, MAP_PALLET, 0x0409, 0x016C, MAP_PALLET, 0x0409, 0x016C),
    SPAWN(0x01, 1, 1, MAP_VIRIDIAN_POKECENTER_1F, 8, 13, MAP_VIRIDIAN, 0x0408, 0x0107, MAP_VIRIDIAN, 0x0408, 0x0107),
    SPAWN(0x02, 1, 1, MAP_PEWTER_POKECENTER_1F, 8, 13, MAP_PEWTER, 0x0418, 0x006B, MAP_PEWTER, 0x0418, 0x006B),
    SPAWN(0x03, 1, 1, MAP_CERULEAN_POKECENTER_1F, 8, 13, MAP_CERULEAN, 0x051D, 0x0084, MAP_CERULEAN, 0x051D, 0x0084),
    SPAWN(0x04, 1, 1, MAP_LAVENDER_POKECENTER_1F, 8, 13, MAP_LAVENDER, 0x058A, 0x00EB, MAP_LAVENDER, 0x058A, 0x00EB),
    SPAWN(0x05, 1, 1, MAP_VERMILION_POKECENTER_1F, 8, 13, MAP_VERMILION, 0x0511, 0x0127, MAP_VERMILION, 0x0511, 0x0127),
    SPAWN(0x06, 1, 1, MAP_CELADON_POKECENTER_1F, 8, 13, MAP_CELADON, 0x04CF, 0x00EE, MAP_CELADON, 0x04CF, 0x00EE),
    SPAWN(0x07, 1, 1, MAP_FUCHSIA_POKECENTER_1F, 8, 13, MAP_FUCHSIA, 0x04B9, 0x01B8, MAP_FUCHSIA, 0x04B9, 0x01B8),
    SPAWN(0x08, 0, 1, MAP_CINNABAR_ISLAND_POKECENTER_1F, 8, 13, MAP_CINNABAR_ISLAND, 0x040F, 0x01F7, MAP_CINNABAR_ISLAND, 0x040F, 0x01F7),
    SPAWN(0x09, 1, 1, MAP_POKEMON_LEAGUE_ENTRANCE, 6, 21, MAP_INDIGO_PLATEAU, 0x0390, 0x00C9, MAP_INDIGO_PLATEAU, 0x0390, 0x00C9),
    SPAWN(0x0A, 1, 1, MAP_SAFFRON_POKECENTER_1F, 8, 13, MAP_SAFFRON, 0x050E, 0x00F3, MAP_SAFFRON, 0x050E, 0x00F3),
    SPAWN(0x1E, 1, 1, MAP_SAFARI_ZONE_GATE_POKECENTER_1F, 8, 13, MAP_SAFARI_ZONE_GATE, 0x0052, 0x012F, MAP_SAFARI_ZONE_GATE, 0x0052, 0x012F),
    SPAWN(0x1F, 1, 1, MAP_FRONTIER_ACCESS_POKECENTER_1F, 8, 13, MAP_BATTLE_FRONTIER_FRONTIER_ACCESS, 0x0008, 0x000F, MAP_ROUTE_40, 0x00ED, 0x010B),
    SPAWN(0x23, 0, 0, MAP_POKEATHLON_DOME, 8, 13, MAP_POKEATHLON_DOME, 0x002A, 0x0017, MAP_ROUTE_35, 0x016A, 0x010B),
    SPAWN(0x21, 0, 0, MAP_ROUTE_22_POKEMON_LEAGUE_RECEPTION_GATE, 8, 13, MAP_ROUTE_26, 0x038D, 0x0129, MAP_ROUTE_26, 0x038D, 0x0129),
    SPAWN(0x1B, 1, 0, MAP_ROUTE_32_POKECENTER_1F, 8, 13, MAP_ROUTE_32, 0x01D4, 0x01A3, MAP_ROUTE_32, 0x01D4, 0x01A3),
    SPAWN(0x24, 1, 0, MAP_ROUTE_3_POKECENTER_1F, 8, 13, MAP_ROUTE_3, 0x048F, 0x006B, MAP_ROUTE_3, 0x048F, 0x006B),
    SPAWN(0x25, 1, 0, MAP_ROUTE_10_POKECENTER_1F, 8, 13, MAP_ROUTE_10, 0x0592, 0x00A4, MAP_ROUTE_10, 0x0592, 0x00A4),
};

void GetFlyWarpData(u16 spawnId, Location *dest);
u32 sub_0203BB50(u32 mapId);
void FlypointFlagAction(FieldSystem *a0, u32 mapId);

static int SpawnIdToTableIndex(int spawnId) {
    if (spawnId <= 0 || (u32)spawnId > 0x1E) {
        GF_AssertFail();
        spawnId = 1;
    }
    return spawnId - 1;
}

u16 GetMomSpawnId(void) {
    return 1;
}

void GetFlyWarpData(u16 spawnId, Location *dest) {
    int index = SpawnIdToTableIndex(spawnId);
    dest->mapId = sSpawnMaps[index][3];
    dest->warpId = -1;
    dest->x = sSpawnMaps[index][4];
    dest->y = sSpawnMaps[index][5];
    dest->direction = 1;
}

void GetDeathWarpData(u16 spawnId, Location *dest) {
    int index = SpawnIdToTableIndex(spawnId);
    const u16 *entry;
    dest->mapId = sSpawnMaps[index][1];
    dest->warpId = -1;
    entry = sSpawnMaps[index];
    dest->x = entry[2] & 0xFF;
    dest->y = ((u32)entry[2] << 16) >> 24;
    dest->direction = 0;
}

void GetSpecialSpawnWarpData(u16 spawnId, Location *dest) {
    int index = SpawnIdToTableIndex(spawnId);
    dest->mapId = sSpawnMaps[index][6];
    dest->warpId = -1;
    dest->x = sSpawnMaps[index][7];
    dest->y = sSpawnMaps[index][8];
    dest->direction = 1;
}

u32 MapHeader_GetSpawnIdForDeathWarp(u32 mapId) {
    u32 i;
    const u16 *p = sSpawnMaps[0];
    const u16 *q = sSpawnMaps[0];
    for (i = 0; i < 0x1E; i++, p += 9, q += 9) {
        if (mapId == p[1] && ((u32)q[0] << 23) >> 31) {
            return i + 1;
        }
    }
    return 0;
}

u32 sub_0203BB50(u32 mapId) {
    u32 i;
    for (i = 0; i < 0x1E; i++) {
        if (sSpawnMaps[i][3] == mapId) {
            return i + 1;
        }
    }
    return 0;
}

void FlypointFlagAction(FieldSystem *a0, u32 mapId) {
    u32 i;
    const u16 *p = sSpawnMaps[0];
    const u16 *q = sSpawnMaps[0];
    for (i = 0; i < 0x1E; i++, p += 9, q += 9) {
        if (mapId == p[3] && ((u32)q[0] << 22) >> 31) {
            Save_VarsFlags_FlypointFlagAction(Save_VarsFlags_Get(a0->saveData), 1, (u8)sSpawnMaps[i][0]);
            return;
        }
    }
}
