#include "global.h"

#include "constants/heap.h"

#include "heap.h"
#include "overlay_01_021FB368_internal.h"

static BOOL ov01_021FB368(int px, int py, UnkStruct_Ov01_021FB368_sub *zone) {
    if (zone->active == 0) {
        return FALSE;
    }
    int x = zone->x;
    int width = zone->width;
    int y = zone->y;
    int height = zone->height;
    int right = x + width - 1;
    int bottom = y + height - 1;
    if (x <= px && px <= right && y <= py && py <= bottom) {
        return TRUE;
    }
    return FALSE;
}

UnkStruct_Ov01_021FB368 *DynamicTerrainHeightManager_New(u32 count, enum HeapID heapId) {
    UnkStruct_Ov01_021FB368 *manager = Heap_Alloc(heapId, sizeof(UnkStruct_Ov01_021FB368));
    u8 i;
    manager->zones = Heap_Alloc(heapId, sizeof(UnkStruct_Ov01_021FB368_sub) * count);
    manager->count = count;
    for (i = 0; i < count; i++) {
        manager->zones[i].active = 0;
    }
    return manager;
}

void ov01_021FB3E4(int index, int x, int y, int width, int height, int value, UnkStruct_Ov01_021FB368 *manager) {
    manager->zones[index].x = x;
    manager->zones[index].y = y;
    manager->zones[index].width = width;
    manager->zones[index].height = height;
    manager->zones[index].value = value;
    manager->zones[index].active = 1;
}

void DynamicTerrainHeightManager_Free(UnkStruct_Ov01_021FB368 *manager) {
    Heap_Free(manager->zones);
    Heap_Free(manager);
}

BOOL ov01_021FB42C(int px, int py, UnkStruct_Ov01_021FB368 *manager, u8 *outIndex) {
    u8 i;
    GF_ASSERT(outIndex != NULL);
    for (i = 0; i < manager->count; i++) {
        if (ov01_021FB368(px, py, &manager->zones[i])) {
            *outIndex = i;
            return TRUE;
        }
    }
    return FALSE;
}

int ov01_021FB474(int index, UnkStruct_Ov01_021FB368 *manager) {
    GF_ASSERT(index < manager->count);
    GF_ASSERT(manager->zones[index].active != 0);
    return manager->zones[index].value;
}

void ov01_021FB4A0(int index, int value, UnkStruct_Ov01_021FB368 *manager) {
    GF_ASSERT(index < manager->count);
    manager->zones[index].value = value;
}
