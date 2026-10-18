#include "global.h"

#include "field/map_load_manager.h"
#include "field/map_prop.h"

#include "map_matrix.h"

typedef struct UnkFieldSystemView {
    u8 filler_00[0x2C];
    MapLoadManager *mapLoadManager;
    MapMatrix *mapMatrix;
} UnkFieldSystemView;

int ov01_021F652C(MapLoadManager *mapLoadManager, int index);
void sub_02054DC8(int blockId, int width, VecFx32 *out);
BOOL sub_02054A9C(MapProp *prop, const VecFx32 *pos, const VecFx32 *blockPos);

BOOL sub_02054AE4(UnkFieldSystemView *fieldSystem, int buildModel, const VecFx32 *pos, MapProp **out) {
    u8 i;
    u8 j;
    MapPropManager *mapPropManager;
    VecFx32 blockPos;

    for (i = 0; i < 4; i++) {
        ov01_021F630C(i, fieldSystem->mapLoadManager, &mapPropManager);
        if (mapPropManager != NULL) {
            sub_02054DC8(ov01_021F652C(fieldSystem->mapLoadManager, i), MapMatrix_GetWidth(fieldSystem->mapMatrix), &blockPos);
            for (j = 0; j < 32; j++) {
                MapProp *prop = MapPropManager_GetMapPropByIndex(mapPropManager, j);

                if (sub_02054A9C(prop, pos, &blockPos)) {
                    int model = MapProp_GetBuildModel(prop);

                    if (model == buildModel) {
                        if (out != NULL) {
                            *out = prop;
                        }
                        return TRUE;
                    }
                }
            }
        }
    }
    return FALSE;
}
