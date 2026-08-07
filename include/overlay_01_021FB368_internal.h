#ifndef POKEHEARTGOLD_OVERLAY_01_021FB368_INTERNAL_H
#define POKEHEARTGOLD_OVERLAY_01_021FB368_INTERNAL_H

#include "global.h"

#include "constants/heap.h"

typedef struct UnkStruct_Ov01_021FB368_sub {
    int x;      // 0x00
    int y;      // 0x04
    int width;  // 0x08
    int height; // 0x0c
    int value;  // 0x10
    int active; // 0x14
} UnkStruct_Ov01_021FB368_sub;

typedef struct UnkStruct_Ov01_021FB368 {
    int count;                          // 0x00
    UnkStruct_Ov01_021FB368_sub *zones; // 0x04
} UnkStruct_Ov01_021FB368;

UnkStruct_Ov01_021FB368 *DynamicTerrainHeightManager_New(u32 count, enum HeapID heapId);
void ov01_021FB3E4(int index, int x, int y, int width, int height, int value, UnkStruct_Ov01_021FB368 *manager);
void DynamicTerrainHeightManager_Free(UnkStruct_Ov01_021FB368 *manager);
BOOL ov01_021FB42C(int px, int py, UnkStruct_Ov01_021FB368 *manager, u8 *outIndex);
int ov01_021FB474(int index, UnkStruct_Ov01_021FB368 *manager);
void ov01_021FB4A0(int index, int value, UnkStruct_Ov01_021FB368 *manager);

#endif // POKEHEARTGOLD_OVERLAY_01_021FB368_INTERNAL_H
