#include "global.h"

#include "assert.h"
#include "gf_3d_loader.h"

typedef struct UnkStruct_Ov01_021F1AD4_Sub {
    u8 filler0[0x18];
    GF_3DGfxRawResMan *rawResMan;
} UnkStruct_Ov01_021F1AD4_Sub;

typedef struct UnkStruct_Ov01_021F1AD4 {
    u8 filler0[0x20];
    UnkStruct_Ov01_021F1AD4_Sub *unk20;
} UnkStruct_Ov01_021F1AD4;

NNSG3dResTex *ov01_021F1AD4(UnkStruct_Ov01_021F1AD4 *manager, int id);

NNSG3dResTex *ov01_021F1AD4(UnkStruct_Ov01_021F1AD4 *manager, int id) {
    GF_3DGfxRawResObj *obj = GF3dGfxRawResMan_GetObjById(manager->unk20->rawResMan, id);
    NNSG3dResTex *tex = NULL;
    GF_ASSERT(obj != NULL);
    if (obj != NULL) {
        tex = GF3dGfxRawResObj_GetTex(obj);
    }
    return tex;
}
