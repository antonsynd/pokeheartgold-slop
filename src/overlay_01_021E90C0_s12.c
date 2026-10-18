#include "global.h"

#include "field/area_data.h"
#include "field/map_prop.h"
#include "field/map_prop_animation.h"
#include "field/overlay_01_021FB878.h"

#include "field_system.h"
#include "filesystem.h"
#include "heap.h"

typedef struct MapPropHeader {
    u8 filler_0[4];
    u8 animated;
    u8 filler_5[0x13];
} MapPropHeader;

void sub_02054A60(int x, int z, int dx, int dz, int width, int height, s32 *bounds);
int *sub_02054D10(FieldSystem *fieldSystem, enum HeapID heapID, int capacity, s32 *bounds, u32 fillValue);
BOOL sub_02054AE4(FieldSystem *fieldSystem, int modelID, s32 *bounds, MapProp **outProp);

void ov01_021E9AE8(FieldSystem *fieldSystem, int x, int z, u8 tag) {
    s32 bounds[4];
    MapPropHeader header;
    MapProp *mapProp;
    BOOL found;
    int modelID;
    int *modelIDs;
    NARC *narc;
    int i;

    sub_02054A60(x, z, -1, 0, 3, 1, bounds);
    narc = ov01_021FB904(fieldSystem->areaDataManager);
    modelIDs = sub_02054D10(fieldSystem, HEAP_ID_FIELD1, 4, bounds, 0);
    found = FALSE;
    for (i = 0; i < 4; i++) {
        if (modelIDs[i] != 0) {
            NARC_ReadWholeMember(narc, modelIDs[i], &header);
            if (header.animated) {
                sub_02054AE4(fieldSystem, modelIDs[i], bounds, &mapProp);
                found = TRUE;
                modelID = modelIDs[i];
                break;
            }
        }
    }
    Heap_Free(modelIDs);

    if (found) {
        int animCount = MapPropAnimationManager_GetPropAnimationCount(fieldSystem->mapPropAnimationManager, modelID);

        if (animCount != 0) {
            NNSG3dResTex *texture = ov01_021FB9E0(fieldSystem->areaDataManager);
            NNSG3dRenderObj *renderObj = MapProp_GetRenderSurface(mapProp);

            MapPropOneShotAnimationManager_LoadPropAnimations(fieldSystem->mapPropAnimationManager, fieldSystem->mapPropOneShotAnimationManager, tag, modelID, renderObj, MapProp_GetResModel(mapProp), texture, animCount, 1, FALSE);
        }
    } else {
        GF_ASSERT(FALSE);
    }
}
