#include "unk_0203BA5C.h"

#include "global.h"

#include "constants/maps.h"

#include "error_handling.h"
#include "field_system.h"
#include "save_vars_flags.h"
#include "sys_flags.h"

typedef struct SpawnMap {
    u16 flagIdx : 8;
    u16 isBlackoutSpawn : 1;
    u16 isFlyPoint : 1;
    u16 deathSpawnMapNo;
    u16 deathSpawnX : 8;
    u16 deathSpawnY : 8;
    u16 flyPointMapNo;
    u16 flyPointX;
    u16 flyPointY;
    u16 specialWarpMapNo;
    u16 specialWarpX;
    u16 specialWarpY;
} SpawnMap;

static const SpawnMap sSpawnMaps[] __attribute__((aligned(4))) = {
    { 0x0B, 1, 1, MAP_NEW_BARK_PLAYER_HOUSE_1F,               6, 8,  MAP_NEW_BARK,                        0x02B7, 0x018D, MAP_NEW_BARK,         0x02B7, 0x018D },
    { 0x0C, 1, 1, MAP_CHERRYGROVE_POKECENTER_1F,              8, 13, MAP_CHERRYGROVE,                     0x0234, 0x0188, MAP_CHERRYGROVE,      0x0234, 0x0188 },
    { 0x0D, 1, 1, MAP_VIOLET_POKECENTER_1F,                   8, 13, MAP_VIOLET,                          0x01F1, 0x0110, MAP_VIOLET,           0x01F1, 0x0110 },
    { 0x0E, 1, 1, MAP_AZALEA_POKECENTER_1F,                   8, 13, MAP_AZALEA,                          0x019A, 0x01CD, MAP_AZALEA,           0x019A, 0x01CD },
    { 0x0F, 1, 1, MAP_CIANWOOD_POKECENTER_1F,                 8, 13, MAP_CIANWOOD,                        0x00BB, 0x0172, MAP_CIANWOOD,         0x00BB, 0x0172 },
    { 0x10, 1, 1, MAP_GOLDENROD_POKECENTER_1F,                8, 13, MAP_GOLDENROD,                       0x0160, 0x0171, MAP_GOLDENROD,        0x0160, 0x0171 },
    { 0x11, 1, 1, MAP_OLIVINE_POKECENTER_1F,                  8, 13, MAP_OLIVINE,                         0x0110, 0x0102, MAP_OLIVINE,          0x0110, 0x0102 },
    { 0x12, 1, 1, MAP_ECRUTEAK_POKECENTER_1F,                 8, 13, MAP_ECRUTEAK,                        0x018D, 0x00B8, MAP_ECRUTEAK,         0x018D, 0x00B8 },
    { 0x13, 1, 1, MAP_MAHOGANY_POKECENTER_1F,                 8, 13, MAP_MAHOGANY,                        0x0216, 0x00B8, MAP_MAHOGANY,         0x0216, 0x00B8 },
    { 0x14, 0, 1, MAP_LAKE_OF_RAGE,                           8, 13, MAP_LAKE_OF_RAGE,                    0x0218, 0x005A, MAP_LAKE_OF_RAGE,     0x0218, 0x005A },
    { 0x15, 1, 1, MAP_BLACKTHORN_POKECENTER_1F,               8, 13, MAP_BLACKTHORN,                      0x02A2, 0x00B1, MAP_BLACKTHORN,       0x02A2, 0x00B1 },
    { 0x16, 1, 1, MAP_MOUNT_SILVER_POKECENTER_1F,             8, 13, MAP_MOUNT_SILVER,                    0x0334, 0x010A, MAP_MOUNT_SILVER,     0x0334, 0x010A },
    { 0x00, 0, 1, MAP_PALLET,                                 8, 13, MAP_PALLET,                          0x0409, 0x016C, MAP_PALLET,           0x0409, 0x016C },
    { 0x01, 1, 1, MAP_VIRIDIAN_POKECENTER_1F,                 8, 13, MAP_VIRIDIAN,                        0x0408, 0x0107, MAP_VIRIDIAN,         0x0408, 0x0107 },
    { 0x02, 1, 1, MAP_PEWTER_POKECENTER_1F,                   8, 13, MAP_PEWTER,                          0x0418, 0x006B, MAP_PEWTER,           0x0418, 0x006B },
    { 0x03, 1, 1, MAP_CERULEAN_POKECENTER_1F,                 8, 13, MAP_CERULEAN,                        0x051D, 0x0084, MAP_CERULEAN,         0x051D, 0x0084 },
    { 0x04, 1, 1, MAP_LAVENDER_POKECENTER_1F,                 8, 13, MAP_LAVENDER,                        0x058A, 0x00EB, MAP_LAVENDER,         0x058A, 0x00EB },
    { 0x05, 1, 1, MAP_VERMILION_POKECENTER_1F,                8, 13, MAP_VERMILION,                       0x0511, 0x0127, MAP_VERMILION,        0x0511, 0x0127 },
    { 0x06, 1, 1, MAP_CELADON_POKECENTER_1F,                  8, 13, MAP_CELADON,                         0x04CF, 0x00EE, MAP_CELADON,          0x04CF, 0x00EE },
    { 0x07, 1, 1, MAP_FUCHSIA_POKECENTER_1F,                  8, 13, MAP_FUCHSIA,                         0x04B9, 0x01B8, MAP_FUCHSIA,          0x04B9, 0x01B8 },
    { 0x08, 0, 1, MAP_CINNABAR_ISLAND_POKECENTER_1F,          8, 13, MAP_CINNABAR_ISLAND,                 0x040F, 0x01F7, MAP_CINNABAR_ISLAND,  0x040F, 0x01F7 },
    { 0x09, 1, 1, MAP_POKEMON_LEAGUE_ENTRANCE,                6, 21, MAP_INDIGO_PLATEAU,                  0x0390, 0x00C9, MAP_INDIGO_PLATEAU,   0x0390, 0x00C9 },
    { 0x0A, 1, 1, MAP_SAFFRON_POKECENTER_1F,                  8, 13, MAP_SAFFRON,                         0x050E, 0x00F3, MAP_SAFFRON,          0x050E, 0x00F3 },
    { 0x1E, 1, 1, MAP_SAFARI_ZONE_GATE_POKECENTER_1F,         8, 13, MAP_SAFARI_ZONE_GATE,                0x0052, 0x012F, MAP_SAFARI_ZONE_GATE, 0x0052, 0x012F },
    { 0x1F, 1, 1, MAP_FRONTIER_ACCESS_POKECENTER_1F,          8, 13, MAP_BATTLE_FRONTIER_FRONTIER_ACCESS, 0x0008, 0x000F, MAP_ROUTE_40,         0x00ED, 0x010B },
    { 0x23, 0, 0, MAP_POKEATHLON_DOME,                        8, 13, MAP_POKEATHLON_DOME,                 0x002A, 0x0017, MAP_ROUTE_35,         0x016A, 0x010B },
    { 0x21, 0, 0, MAP_ROUTE_22_POKEMON_LEAGUE_RECEPTION_GATE, 8, 13, MAP_ROUTE_26,                        0x038D, 0x0129, MAP_ROUTE_26,         0x038D, 0x0129 },
    { 0x1B, 1, 0, MAP_ROUTE_32_POKECENTER_1F,                 8, 13, MAP_ROUTE_32,                        0x01D4, 0x01A3, MAP_ROUTE_32,         0x01D4, 0x01A3 },
    { 0x24, 1, 0, MAP_ROUTE_3_POKECENTER_1F,                  8, 13, MAP_ROUTE_3,                         0x048F, 0x006B, MAP_ROUTE_3,          0x048F, 0x006B },
    { 0x25, 1, 0, MAP_ROUTE_10_POKECENTER_1F,                 8, 13, MAP_ROUTE_10,                        0x0592, 0x00A4, MAP_ROUTE_10,         0x0592, 0x00A4 },
};

void GetFlyWarpData(u16 spawnId, Location *dest);
u32 sub_0203BB50(u32 mapId);
void FlypointFlagAction(FieldSystem *a0, u32 mapId);

static int SpawnIdToTableIndex(int spawnId) {
    if (spawnId <= 0 || spawnId > 0x1E) {
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
    dest->mapId = sSpawnMaps[index].flyPointMapNo;
    dest->warpId = -1;
    dest->x = sSpawnMaps[index].flyPointX;
    dest->y = sSpawnMaps[index].flyPointY;
    dest->direction = 1;
}

void GetDeathWarpData(u16 spawnId, Location *dest) {
    int index = SpawnIdToTableIndex(spawnId);
    dest->mapId = sSpawnMaps[index].deathSpawnMapNo;
    dest->warpId = -1;
    dest->x = sSpawnMaps[index].deathSpawnX;
    dest->y = sSpawnMaps[index].deathSpawnY;
    dest->direction = 0;
}

void GetSpecialSpawnWarpData(u16 spawnId, Location *dest) {
    int index = SpawnIdToTableIndex(spawnId);
    dest->mapId = sSpawnMaps[index].specialWarpMapNo;
    dest->warpId = -1;
    dest->x = sSpawnMaps[index].specialWarpX;
    dest->y = sSpawnMaps[index].specialWarpY;
    dest->direction = 1;
}

u32 MapHeader_GetSpawnIdForDeathWarp(u32 mapId) {
    int i;
    for (i = 0; i < 0x1E; i++) {
        if (sSpawnMaps[i].deathSpawnMapNo == mapId && sSpawnMaps[i].isBlackoutSpawn) {
            return i + 1;
        }
    }
    return 0;
}

u32 sub_0203BB50(u32 mapId) {
    int i;
    for (i = 0; i < 0x1E; i++) {
        if (sSpawnMaps[i].flyPointMapNo == mapId) {
            return i + 1;
        }
    }
    return 0;
}

void FlypointFlagAction(FieldSystem *a0, u32 mapId) {
    int i;
    for (i = 0; i < 0x1E; i++) {
        if (sSpawnMaps[i].flyPointMapNo == mapId && sSpawnMaps[i].isFlyPoint) {
            Save_VarsFlags_FlypointFlagAction(Save_VarsFlags_Get(a0->saveData), 1, sSpawnMaps[i].flagIdx);
            return;
        }
    }
}
