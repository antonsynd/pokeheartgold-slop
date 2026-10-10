#include "global.h"

typedef struct UnkStruct_MapLoadManager_InitialLoad UnkStruct_MapLoadManager_InitialLoad;

typedef void (*UnkFunc_MapLoadManager_InitialLoad)(UnkStruct_MapLoadManager_InitialLoad *manager, s32 playerTileX, s32 playerTileZ, u32 unk_CC);

typedef struct UnkStruct_MapLoadManager_InitialLoad_Fns {
    UnkFunc_MapLoadManager_InitialLoad initialLoad;
} UnkStruct_MapLoadManager_InitialLoad_Fns;

struct UnkStruct_MapLoadManager_InitialLoad {
    u8 filler_00[0xcc];
    u32 unk_CC;
    u8 filler_D0[0xfc - 0xd0];
    UnkStruct_MapLoadManager_InitialLoad_Fns *mapLoadFns;
};

extern void ov01_021F5F64(s32 playerTileX, s32 playerTileZ, UnkStruct_MapLoadManager_InitialLoad *manager);

void MapLoadManager_InitialLoad(UnkStruct_MapLoadManager_InitialLoad *manager, s32 playerTileX, s32 playerTileZ) {
    manager->mapLoadFns->initialLoad(manager, playerTileX, playerTileZ, manager->unk_CC);
    ov01_021F5F64(playerTileX, playerTileZ, manager);
}
