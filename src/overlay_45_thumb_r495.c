#include "global.h"

#include "filesystem.h"
#include "gf_3d_loader.h"
#include "gf_gfx_loader.h"
#include "heap.h"
#include "unk_02023694.h"

typedef struct BillboardList BillboardList;

typedef struct BillboardListParams {
    int maxElements;
    enum HeapID heapID;
} BillboardListParams;

typedef struct Ov45LobbyObject {
    u8 data[0x90];
} Ov45LobbyObject;

typedef struct Ov45ModelSet {
    u8 data[0x14];
} Ov45ModelSet;

typedef struct Ov45LobbyObjectManager {
    GF_2DGfxRawResMan *modelResMan;
    GF_2DGfxRawResMan *animResMan;
    GF_3DGfxRawResMan *texResMan;
    BillboardList *billboardList;
    Ov45LobbyObject *objects;
    u32 numObjects;
    Ov45ModelSet modelSet;
    int lightEnableFlag;
} Ov45LobbyObjectManager;

typedef struct Ov45TextureEntry {
    u16 unk0;
    u16 fileId : 15;
    u16 keepInRam : 1;
} Ov45TextureEntry;

extern const u16 ov45_02254C38[];
extern const Ov45TextureEntry ov45_02254C48[];

BillboardList *sub_020237EC(const BillboardListParams *params);
void ov45_02230AB4(Ov45LobbyObject *object);
void ov45_0222D740(void *resource);
void ov45_022309E8(Ov45ModelSet *modelSet, NARC *narc, int fileId, enum HeapID heapID);

Ov45LobbyObjectManager *ov45_02230498(u32 numObjects, u32 a1, enum HeapID heapID, enum HeapID heapID2) {
    Ov45LobbyObjectManager *man = Heap_Alloc(heapID, sizeof(Ov45LobbyObjectManager));
    memset(man, 0, sizeof(Ov45LobbyObjectManager));

    {
        int i;

        man->objects = Heap_Alloc(heapID, sizeof(Ov45LobbyObject) * numObjects);
        man->numObjects = numObjects;
        for (i = 0; i < man->numObjects; i++) {
            ov45_02230AB4(&man->objects[i]);
        }
    }

    man->modelResMan = GF2dGfxRawResMan_Create(1, heapID);
    man->animResMan = GF2dGfxRawResMan_Create(2, heapID);
    man->texResMan = GF3dGfxRawResMan_Create(20, heapID);

    {
        BillboardListParams params;

        BillboardLists_Create(1, heapID);
        params.maxElements = numObjects;
        params.heapID = heapID;
        man->billboardList = sub_020237EC(&params);
    }

    {
        NARC *mmodelNarc;
        NARC *lobbyNarc;
        void *resource;
        int i;

        mmodelNarc = NARC_New((NarcId)81, heapID);
        lobbyNarc = NARC_New((NarcId)209, heapID);

        {
            resource = GfGfxLoader_LoadFromOpenNarc(lobbyNarc, 127, FALSE, heapID2, FALSE);
            GF2dGfxRawResMan_AllocObj(man->modelResMan, resource, 127);
            ov45_0222D740(resource);

            {
                NNSG3dResMdlSet *mdlSet;
                NNSG3dResMdl *mdl;

                mdlSet = NNS_G3dGetMdlSet(resource);
                mdl = NNS_G3dGetMdlByIdx(mdlSet, 0);
                man->lightEnableFlag = NNS_G3dMdlGetMdlLightEnableFlag(mdl, 0);
            }
        }

        {
            for (i = 0; i < 2; i++) {
                resource = GfGfxLoader_LoadFromOpenNarc(mmodelNarc, ov45_02254C38[i], FALSE, heapID2, FALSE);
                GF2dGfxRawResMan_AllocObj(man->animResMan, resource, ov45_02254C38[i]);
            }
        }

        {
            GF_3DGfxRawResObj *texObj;
            int skipIndex;
            BOOL uploadNow;

            if (a1 == 0) {
                skipIndex = 1;
            } else {
                skipIndex = 0;
            }

            for (i = 0; i < 20; i++) {
                if (skipIndex == i) {
                    continue;
                }
                if (ov45_02254C48[i].keepInRam == 0) {
                    uploadNow = TRUE;
                } else {
                    uploadNow = FALSE;
                }
                resource = GfGfxLoader_LoadFromOpenNarc(mmodelNarc, ov45_02254C48[i].fileId, FALSE, heapID2, FALSE);
                texObj = GF3dGfxRawResMan_AllocObj(man->texResMan, resource, ov45_02254C48[i].fileId, uploadNow, heapID2);
                if (uploadNow == TRUE) {
                    GF3dGfxRawResObj_AllocVramAndGetKeys(texObj);
                    GF3dGfxRawResObj_LoadTex(texObj);
                    GF3dGfxRawResObj_FreeVramAndSecondaryHeader(texObj);
                }
            }
        }

        ov45_022309E8(&man->modelSet, lobbyNarc, 128, heapID2);
        NARC_Delete(mmodelNarc);
        NARC_Delete(lobbyNarc);
    }
    return man;
}
