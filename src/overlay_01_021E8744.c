#include "global.h"

#include "field/map_prop_animation.h"
#include "field/overlay_01_02204004.h"

#include "filesystem.h"
#include "unk_02005D10.h"

typedef struct MapPropAnimManagerSlot {
    FieldSystemUnkSubCC_Sub0_SubStruct *obj;
    s32 active;
    s32 id;
    s32 target;
} MapPropAnimManagerSlot;

typedef struct MapPropAnimManagerAux {
    BOOL active;
    void *a1;
    FieldSystemUnkSubCC_Sub0_SubStruct *obj;
    u32 id;
} MapPropAnimManagerAux;

typedef struct MapPropAnimResRow {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u32 unk4;
    s32 fileId[4];
} MapPropAnimResRow;

typedef struct MapPropAnimationManagerInternal {
    u8 unk_00[0x10];
    MapPropAnimManagerSlot slots[16];
    MapPropAnimManagerAux aux[2];
    NARC *narc;
    NARC *srcNarc;
    FieldSystemUnkSubCC_Sub0 *resource;
} MapPropAnimationManagerInternal;

typedef struct MapPropOneShotSubCtrl {
    MapPropAnimManagerSlot *primary[4];
    s32 count;
    UnkStruct_FieldSysC0_SubC *secondary[6];
    MapPropAnimManagerSlot *current;
    s32 modelNum;
    u8 id;
    u8 flag;
} MapPropOneShotSubCtrl;

typedef struct MapPropOneShotAnimationManagerInternal {
    MapPropOneShotSubCtrl subCtrls[16];
} MapPropOneShotAnimationManagerInternal;

u16 ov01_021E8B9C(MapPropAnimationManagerInternal *mgr);
void ov01_021E8B60(MapPropAnimManagerSlot *slot, s32 unkC);
void ov01_021E8B78(MapPropAnimManagerSlot *slot);
s32 ov01_021E8BAC(MapPropAnimationManagerInternal *mgr, s32 fileId);
void ov01_021E8DE8(MapPropAnimationManagerInternal *mgr, MapPropOneShotAnimationManagerInternal *ctrl, u8 id, s32 modelNum, UnkStruct_FieldSysC0_SubC *a4, NNSG3dResMdl *model, NNSG3dResTex *texture, s32 count, u8 flag, s32 unk10);
void ov01_021E8E40(MapPropOneShotAnimationManagerInternal *ctrl, u8 id, u32 idx, UnkStruct_FieldSysC0_SubC *val);
void ov01_021E8E70(MapPropOneShotAnimationManagerInternal *ctrl, u8 id, s32 idx);
void ov01_021E8E98(MapPropOneShotAnimationManagerInternal *ctrl, u8 id, s32 idx, s32 sndseq);
void ov01_021E8ED0(MapPropAnimationManagerInternal *mgr, MapPropOneShotAnimationManagerInternal *ctrl, u8 id);
BOOL ov01_021E8F10(MapPropOneShotAnimationManagerInternal *ctrl, u8 id);
s32 ov01_021E8F30(MapPropOneShotAnimationManagerInternal *ctrl, u8 id);
void ov01_021E8F3C(s32 modelNum, NNSG3dResMdl *model, UnkStruct_FieldSysC0_SubC *renderObj, NNSG3dResTex *texture, MapPropAnimResRow *row, MapPropAnimationManagerInternal *mgr, FieldSystemUnkSub104 *unk104);
void ov01_021E90B0(MapPropOneShotAnimationManagerInternal *ctrl, u8 id, u8 flag);

static BOOL ov01_021E8744(MapPropAnimManagerAux *auxArr, void *a1, FieldSystemUnkSubCC_Sub0_SubStruct *obj, u8 id) {
    GF_ASSERT(ov01_02204554(obj) != -1);

    for (s32 i = 0; i < 2; i++) {
        if (auxArr[i].active != 0 && id == auxArr[i].id && auxArr[i].a1 == a1) {
            return FALSE;
        }
    }

    for (s32 i = 0; i < 2; i++) {
        if (auxArr[i].active == 0) {
            auxArr[i].active = TRUE;
            auxArr[i].id = id;
            auxArr[i].obj = obj;
            auxArr[i].a1 = a1;
            break;
        }
    }

    return TRUE;
}

static void ov01_021E87A8(NARC *narc, FieldSystemUnkSubCC_Sub0 *resource, FieldSystemUnkSubCC_Sub0_SubStruct *obj, s32 fileId, NNSG3dResMdl *model, NNSG3dResTex *texture) {
    GF_ASSERT(fileId != -1);
    void *buf = NARC_AllocAndReadWholeMember(narc, fileId, HEAP_ID_FIELD1);
    GF_ASSERT(buf != NULL);
    ov01_02204470(resource, obj, buf, model, texture);
}

MapPropAnimationManager *MapPropAnimationManager_Init(NARC *narc, FieldSystemUnkSubC8 *unkSubC8) {
    MapPropAnimationManagerInternal *mgr = Heap_Alloc(HEAP_ID_FIELD1, sizeof(MapPropAnimationManagerInternal));

    for (s32 i = 0; i < 16; i++) {
        mgr->slots[i].active = 0;
        mgr->slots[i].id = 0;
        mgr->slots[i].target = 0;
    }

    for (s32 i = 0; i < 2; i++) {
        mgr->aux[i].active = FALSE;
        mgr->aux[i].a1 = NULL;
        mgr->aux[i].obj = NULL;
        mgr->aux[i].id = 0;
    }

    mgr->narc = NARC_New(NARC_a_1_0_6, HEAP_ID_FIELD1);
    mgr->srcNarc = narc;
    mgr->resource = ov01_022041D8(unkSubC8, HEAP_ID_FIELD1, 0x10);

    return (MapPropAnimationManager *)mgr;
}

static FieldSystemUnkSubCC_Sub0_SubStruct *ov01_021E8858(MapPropAnimManagerSlot *a0) {
    if (a0 == NULL) {
        return NULL;
    }
    return a0->obj;
}

static BOOL ov01_021E8864(s32 a0) {
    if (a0 == 8) {
        return FALSE;
    }
    return (a0 & 1) == 1;
}

static BOOL ov01_021E887C(s32 a0) {
    if (a0 == 8) {
        return TRUE;
    }
    return ((a0 >> 1) & 1) == 1;
}

static MapPropAnimManagerSlot *ov01_021E8894(s32 modelNum, s32 animNum, s32 unk8, s32 target, s32 unk10, s32 unkC, BOOL expectedFlag, NNSG3dResMdl *model, NNSG3dResTex *texture, MapPropAnimationManagerInternal *mgr) {
    MapPropAnimResRow row;

    NARC_ReadWholeMember(mgr->srcNarc, modelNum, &row);
    GF_ASSERT(animNum < 4);

    s32 fileId = row.fileId[animNum];
    if (fileId == -1) {
        return NULL;
    }

    if (expectedFlag != ov01_021E8864(row.unk1)) {
        return NULL;
    }

    for (s32 i = 0; i < 16; i++) {
        if (target != 0 && mgr->slots[i].target == target) {
            GF_AssertFail();
        }
    }

    for (s32 i = 0; i < 16; i++) {
        if (mgr->slots[i].active == 0) {
            mgr->slots[i].active = TRUE;

            FieldSystemUnkSubCC_Sub0_SubStruct *obj = ov01_022042FC(mgr->resource);
            GF_ASSERT(obj != NULL);

            ov01_022044C8(obj, unk8, unkC, unk10);
            mgr->slots[i].id = fileId;
            mgr->slots[i].target = target;
            ov01_021E87A8(mgr->narc, mgr->resource, obj, fileId, model, texture);
            mgr->slots[i].obj = obj;
            ov01_022044E0(mgr->slots[i].obj);

            return &mgr->slots[i];
        }
    }

    GF_AssertFail();
    return NULL;
}

BOOL ov01_021E8970(int modelNum, int animNum, int target, UnkStruct_FieldSysC0_SubC *renderObj, MapPropAnimationManager *mapPropAnimationManager) {
    MapPropAnimationManagerInternal *mgr = (MapPropAnimationManagerInternal *)mapPropAnimationManager;

    if (mgr == NULL) {
        GF_AssertFail();
        return FALSE;
    }

    if (modelNum >= ov01_021E8B9C(mgr)) {
        return FALSE;
    }

    MapPropAnimResRow row;
    NARC_ReadWholeMember(mgr->srcNarc, modelNum, &row);
    GF_ASSERT(animNum < 4);

    s32 fileId = row.fileId[animNum];
    if (fileId == -1) {
        return FALSE;
    }

    if (target != ov01_021E887C(row.unk1)) {
        return FALSE;
    }

    for (s32 i = 0; i < 16; i++) {
        if (mgr->slots[i].id == fileId) {
            BOOL added;
            if (row.unk2 != 0) {
                added = ov01_021E8744(mgr->aux, renderObj, mgr->slots[i].obj, (u8)fileId);
            } else {
                added = TRUE;
            }
            if (added) {
                ov01_0220450C(renderObj, mgr->slots[i].obj);
            }
            return TRUE;
        }
    }
    return FALSE;
}

void MapPropAnimationManager_UnloadAllAnimations(MapPropAnimationManager *mapPropAnimationManager) {
    MapPropAnimationManagerInternal *mgr = (MapPropAnimationManagerInternal *)mapPropAnimationManager;

    if (mgr == NULL) {
        return;
    }

    for (s32 i = 0; i < 16; i++) {
        if (mgr->slots[i].active == 0) {
            continue;
        }
        if (mgr->slots[i].active == 1) {
            mgr->slots[i].obj = NULL;
        }
        mgr->slots[i].active = 0;
        mgr->slots[i].target = 0;
    }
}

static void ov01_021E8A50(MapPropAnimManagerSlot *slot, MapPropAnimationManagerInternal *mgr) {
    if (mgr == NULL) {
        return;
    }

    GF_ASSERT(slot != NULL);

    if (slot->active != 0) {
        if (slot->active == 1) {
            ov01_02204500(mgr->resource, slot->obj);
            ov01_0220431C(mgr->resource, slot->obj);
        }
        slot->active = 0;
        slot->target = 0;
    }
}

void ov01_021E8A8C(MapPropAnimationManager *mapPropAnimationManager, UnkStruct_FieldSysC0_SubC *renderObj, int modelNum, int animNum) {
    MapPropAnimationManagerInternal *mgr = (MapPropAnimationManagerInternal *)mapPropAnimationManager;
    MapPropAnimResRow row;

    NARC_ReadWholeMember(mgr->srcNarc, modelNum, &row);
    GF_ASSERT(animNum < 4);

    s32 fileId = row.fileId[animNum];
    GF_ASSERT(fileId != -1);

    for (u8 i = 0; i < 16; i++) {
        if (mgr->slots[i].active == 1 && mgr->slots[i].id == fileId) {
            ov01_02204518(renderObj, mgr->slots[i].obj);
            return;
        }
    }
}

void MapPropAnimationManager_Free(MapPropAnimationManager *mapPropAnimationManager) {
    MapPropAnimationManagerInternal *mgr = (MapPropAnimationManagerInternal *)mapPropAnimationManager;

    if (mgr != NULL) {
        NARC_Delete(mgr->narc);
        Heap_Free(mgr);
    }
}

MapPropAnimationManager *ov01_021E8B04(int modelNum, int animNum, MapPropAnimationManager *mapPropAnimationManager) {
    MapPropAnimationManagerInternal *mgr = (MapPropAnimationManagerInternal *)mapPropAnimationManager;
    MapPropAnimResRow row;

    NARC_ReadWholeMember(mgr->srcNarc, modelNum, &row);
    GF_ASSERT(animNum < 4);

    s32 fileId = row.fileId[animNum];
    MapPropAnimManagerSlot *slot = NULL;

    for (s32 i = 0; i < 16; i++) {
        if (mgr->slots[i].id == fileId) {
            slot = &mgr->slots[i];
            GF_ASSERT(slot->active != 0);
            break;
        }
    }

    GF_ASSERT(slot != NULL);
    return (MapPropAnimationManager *)slot;
}

void ov01_021E8B60(MapPropAnimManagerSlot *slot, s32 unkC) {
    ov01_0220455C(slot->obj, unkC);
}

void ov01_021E8B6C(MapPropAnimationManager *mapPropAnimationManager) {
    MapPropAnimManagerSlot *slot = (MapPropAnimManagerSlot *)mapPropAnimationManager;
    ov01_022044E0(slot->obj);
}

void ov01_021E8B78(MapPropAnimManagerSlot *slot) {
    ov01_02204570(slot->obj);
}

void ov01_021E8B84(MapPropAnimationManager *mapPropAnimationManager, int a1) {
    MapPropAnimManagerSlot *slot = (MapPropAnimManagerSlot *)mapPropAnimationManager;
    ov01_02204590(slot->obj, a1);
}

BOOL ov01_021E8B90(MapPropAnimationManager *mapPropAnimationManager) {
    MapPropAnimManagerSlot *slot = (MapPropAnimManagerSlot *)mapPropAnimationManager;
    return ov01_02204560(slot->obj);
}

u16 ov01_021E8B9C(MapPropAnimationManagerInternal *mgr) {
    return NARC_GetFileCount(mgr->srcNarc);
}

s32 ov01_021E8BAC(MapPropAnimationManagerInternal *mgr, s32 fileId) {
    MapPropAnimResRow row;

    NARC_ReadWholeMember(mgr->srcNarc, fileId, &row);

    if (row.unk0 == 0) {
        return 0;
    }

    u8 i;
    for (i = 0; i < 4; i++) {
        if (row.fileId[i] == -1) {
            break;
        }
    }

    return i;
}

static MapPropOneShotSubCtrl *ov01_021E8BE8(MapPropOneShotAnimationManagerInternal *ctrl, u8 id) {
    GF_ASSERT(id != 0);

    u8 freeIdx = 16;
    for (u8 i = 0; i < 16; i++) {
        if (freeIdx == 16 && ctrl->subCtrls[i].id == 0) {
            freeIdx = i;
        }
    }

    if (freeIdx == 16) {
        GF_AssertFail();
        return NULL;
    }

    ctrl->subCtrls[freeIdx].id = id;
    ctrl->subCtrls[freeIdx].flag = 0;
    return &ctrl->subCtrls[freeIdx];
}

static void ov01_021E8C40(MapPropOneShotSubCtrl *sc) {
    sc->id = 0;
    sc->modelNum = 0;
    sc->current = NULL;

    for (u8 i = 0; i < 6; i++) {
        sc->secondary[i] = NULL;
    }
}

static MapPropOneShotSubCtrl *ov01_021E8C60(MapPropOneShotAnimationManagerInternal *ctrl, u8 id) {
    for (s32 i = 0; i < 16; i++) {
        if (ctrl->subCtrls[i].id == id) {
            return &ctrl->subCtrls[i];
        }
    }
    return NULL;
}

static void ov01_021E8C88(UnkStruct_FieldSysC0_SubC *a0, s32 count, MapPropOneShotSubCtrl *sc) {
    GF_ASSERT(count <= 4);

    if (a0 != NULL) {
        sc->secondary[0] = a0;
    }
    sc->count = count;
}

static void ov01_021E8CA4(MapPropOneShotSubCtrl *sc, s32 idx, MapPropAnimManagerSlot *val) {
    GF_ASSERT(idx < sc->count);
    sc->primary[idx] = val;
}

static MapPropAnimManagerSlot *ov01_021E8CBC(MapPropOneShotSubCtrl *sc, s32 idx) {
    GF_ASSERT(idx < sc->count);

    MapPropAnimManagerSlot *newCurrent = sc->primary[idx];
    FieldSystemUnkSubCC_Sub0_SubStruct *newObj = ov01_021E8858(newCurrent);
    FieldSystemUnkSubCC_Sub0_SubStruct *curObj = ov01_021E8858(sc->current);

    for (u8 i = 0; i < 6; i++) {
        if (sc->secondary[i] != NULL) {
            ov01_02204518(sc->secondary[i], curObj);
            ov01_0220450C(sc->secondary[i], newObj);
        }
    }

    sc->current = newCurrent;
    return newCurrent;
}

static void ov01_021E8D10(s32 modelNum, NNSG3dResMdl *model, NNSG3dResTex *texture, s32 count, s32 unk8, s32 unk10, MapPropAnimationManagerInternal *mgr, MapPropOneShotSubCtrl *sc) {
    for (s32 i = 0; i < count; i++) {
        MapPropAnimManagerSlot *slot = ov01_021E8894(modelNum, i, unk8, 0, unk10, 1, TRUE, model, texture, mgr);
        GF_ASSERT(slot != NULL);
        ov01_021E8CA4(sc, i, slot);
    }
}

static void ov01_021E8D6C(MapPropAnimationManagerInternal *mgr, MapPropOneShotSubCtrl *sc) {
    FieldSystemUnkSubCC_Sub0_SubStruct *obj = ov01_021E8858(sc->current);

    for (s32 i = 0; i < 6; i++) {
        if (sc->secondary[i] != NULL) {
            ov01_02204518(sc->secondary[i], obj);
        }
    }

    for (s32 i = 0; i < sc->count; i++) {
        ov01_021E8A50(sc->primary[i], mgr);
        sc->primary[i] = NULL;
    }
}

MapPropOneShotAnimationManager *ov01_021E8DB4() {
    MapPropOneShotAnimationManagerInternal *ctrl = Heap_Alloc(HEAP_ID_FIELD1, sizeof(MapPropOneShotAnimationManagerInternal));
    MI_CpuClearFast(ctrl, sizeof(MapPropOneShotAnimationManagerInternal));
    return (MapPropOneShotAnimationManager *)ctrl;
}

void ov01_021E8DD4(MapPropOneShotAnimationManager **mapPropOneShotAnimationManager) {
    if (*mapPropOneShotAnimationManager != NULL) {
        Heap_Free(*mapPropOneShotAnimationManager);
        *mapPropOneShotAnimationManager = NULL;
    }
}

void ov01_021E8DE8(MapPropAnimationManagerInternal *mgr, MapPropOneShotAnimationManagerInternal *ctrl, u8 id, s32 modelNum, UnkStruct_FieldSysC0_SubC *a4, NNSG3dResMdl *model, NNSG3dResTex *texture, s32 count, u8 flag, s32 unk10) {
    MapPropOneShotSubCtrl *sc = ov01_021E8BE8(ctrl, id);
    if (sc == NULL) {
        GF_AssertFail();
        return;
    }

    ov01_021E8C88(a4, count, sc);

    GF_ASSERT(flag != 0);
    if (flag == 0) {
        flag = 1;
    }

    ov01_021E8D10(modelNum, model, texture, count, flag, unk10, mgr, sc);
    sc->modelNum = modelNum;
}

void ov01_021E8E40(MapPropOneShotAnimationManagerInternal *ctrl, u8 id, u32 idx, UnkStruct_FieldSysC0_SubC *val) {
    GF_ASSERT(idx < 6);

    MapPropOneShotSubCtrl *sc = ov01_021E8C60(ctrl, id);
    GF_ASSERT(sc->secondary[idx] == NULL);
    sc->secondary[idx] = val;
}

void ov01_021E8E70(MapPropOneShotAnimationManagerInternal *ctrl, u8 id, s32 idx) {
    GF_ASSERT(id != 0);

    MapPropOneShotSubCtrl *sc = ov01_021E8C60(ctrl, id);
    ov01_021E8B60(ov01_021E8CBC(sc, idx), 0);
}

void ov01_021E8E98(MapPropOneShotAnimationManagerInternal *ctrl, u8 id, s32 idx, s32 sndseq) {
    GF_ASSERT(id != 0);

    MapPropOneShotSubCtrl *sc = ov01_021E8C60(ctrl, id);
    MapPropAnimManagerSlot *newCurrent = ov01_021E8CBC(sc, idx);

    if (sndseq != 0) {
        PlaySE(sndseq);
    }

    ov01_021E8B60(newCurrent, 0);
}

void ov01_021E8ED0(MapPropAnimationManagerInternal *mgr, MapPropOneShotAnimationManagerInternal *ctrl, u8 id) {
    GF_ASSERT(id != 0);

    MapPropOneShotSubCtrl *sc = ov01_021E8C60(ctrl, id);
    ov01_021E8D6C(mgr, sc);
    ov01_021E8C40(sc);
}

static MapPropAnimManagerSlot *ov01_021E8EF8(MapPropOneShotAnimationManagerInternal *ctrl, u8 id) {
    GF_ASSERT(id != 0);

    MapPropOneShotSubCtrl *sc = ov01_021E8C60(ctrl, id);
    return sc->current;
}

BOOL ov01_021E8F10(MapPropOneShotAnimationManagerInternal *ctrl, u8 id) {
    MapPropAnimManagerSlot *slot = ov01_021E8EF8(ctrl, id);
    GF_ASSERT(slot != NULL);
    return ov01_02204560(slot->obj) ? TRUE : FALSE;
}

s32 ov01_021E8F30(MapPropOneShotAnimationManagerInternal *ctrl, u8 id) {
    MapPropOneShotSubCtrl *sc = ov01_021E8C60(ctrl, id);
    return sc->modelNum;
}

void ov01_021E8F3C(s32 modelNum, NNSG3dResMdl *model, UnkStruct_FieldSysC0_SubC *renderObj, NNSG3dResTex *texture, MapPropAnimResRow *row, MapPropAnimationManagerInternal *mgr, FieldSystemUnkSub104 *unk104) {
    u8 collectedCount = 0;
    FieldSystemUnkSubCC_Sub0_SubStruct *collected[4];

    if (modelNum < ov01_021E8B9C(mgr) && row->unk0 != 0) {
        u8 *rowPtr = (u8 *)row;

        for (s32 j = 0; j < 4; j++) {
            s32 fileId = *(s32 *)(rowPtr + 8);
            if (fileId == -1) {
                break;
            }

            if (ov01_021E8864(row->unk1) == 0) {
                break;
            }

            BOOL flag14 = (ov01_021E887C(row->unk1) == 0);
            s32 i;

            for (i = 0; i < 16; i++) {
                if (mgr->slots[i].active != 0) {
                    continue;
                }

                mgr->slots[i].active = TRUE;

                FieldSystemUnkSubCC_Sub0_SubStruct *obj = ov01_022042FC(mgr->resource);
                GF_ASSERT(obj != NULL);

                if (row->unk2 != 0) {
                    ov01_022044C8(obj, 1, 1, 0);
                } else {
                    ov01_022044C8(obj, -1, 0, 0);
                }

                mgr->slots[i].id = fileId;
                mgr->slots[i].target = 0;
                ov01_021E87A8(mgr->narc, mgr->resource, obj, fileId, model, texture);
                mgr->slots[i].obj = obj;
                ov01_022044E0(mgr->slots[i].obj);

                if (flag14) {
                    BOOL added = TRUE;
                    if (row->unk2 != 0) {
                        added = ov01_021E8744(mgr->aux, renderObj, mgr->slots[i].obj, (u8)fileId);
                    }
                    if (added) {
                        ov01_0220450C(renderObj, mgr->slots[i].obj);
                    }
                } else if (row->unk1 == 8) {
                    collected[collectedCount] = mgr->slots[i].obj;
                    collectedCount++;
                }

                break;
            }

            GF_ASSERT(i != 16);
            rowPtr += 4;
        }
    }

    if (row->unk1 == 8) {
        s32 timeIndex = ov01_02204834(unk104);
        ov01_0220450C(renderObj, collected[timeIndex]);
        ov01_0220476C(unk104, renderObj, collected, 4);
    }
}

void ov01_021E90B0(MapPropOneShotAnimationManagerInternal *ctrl, u8 id, u8 flag) {
    MapPropOneShotSubCtrl *sc = ov01_021E8C60(ctrl, id);
    sc->flag = flag;
}
