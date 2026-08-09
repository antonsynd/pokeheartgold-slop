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
void ov01_021E8DE8(MapPropAnimationManagerInternal *mgr, MapPropOneShotAnimationManagerInternal *ctrl, int id, s32 modelNum, UnkStruct_FieldSysC0_SubC *a4, NNSG3dResMdl *model, NNSG3dResTex *texture, s32 count, u8 flag, s32 unk10);
void ov01_021E8E40(MapPropOneShotAnimationManagerInternal *ctrl, u8 id, u32 idx, UnkStruct_FieldSysC0_SubC *val);
void ov01_021E8E70(MapPropOneShotAnimationManagerInternal *ctrl, u8 id, s32 idx);
void ov01_021E8E98(MapPropOneShotAnimationManagerInternal *ctrl, u8 id, s32 idx, s32 sndseq);
void ov01_021E8ED0(MapPropAnimationManagerInternal *mgr, MapPropOneShotAnimationManagerInternal *ctrl, u8 id);
BOOL ov01_021E8F10(MapPropOneShotAnimationManagerInternal *ctrl, u8 id);
s32 ov01_021E8F30(MapPropOneShotAnimationManagerInternal *ctrl, u8 id);
void ov01_021E8F3C(s32 modelNum, NNSG3dResMdl *model, UnkStruct_FieldSysC0_SubC *renderObj, NNSG3dResTex *texture, MapPropAnimResRow *row, MapPropAnimationManagerInternal *mgr, FieldSystemUnkSub104 *unk104);
void ov01_021E90B0(MapPropOneShotAnimationManagerInternal *ctrl, u8 id, u8 flag);

static BOOL ov01_021E8744(MapPropAnimManagerAux *auxArr, void *a1, FieldSystemUnkSubCC_Sub0_SubStruct *obj, u8 id) {
    MapPropAnimManagerAux *aux;
    s32 i;
    s32 j;

    GF_ASSERT(ov01_02204554(obj) != -1);

    for (i = 0; i < 2; i++) {
        if (auxArr[i].active != 0 && id == auxArr[i].id && auxArr[i].a1 == a1) {
            return FALSE;
        }
    }

    for (j = 0, aux = auxArr; j < 2; j++, aux++) {
        if (aux->active == 0) {
            auxArr[j].active = TRUE;
            auxArr[j].id = id;
            auxArr[j].obj = obj;
            auxArr[j].a1 = a1;
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

// NONMATCHING: 12-instruction pure r5/r6 exchange in the second loop -- retail puts the generated induction pointer in r5 and the (zero-constant-coalesced) index in r6; MWCC gives us the reverse.
// Everything else in the function is byte-exact; see patterns
// loop2-induction-pointer-regalloc and c89-decl-order-fixes-swapped-registers.
#ifdef NONMATCHING
MapPropAnimationManager *MapPropAnimationManager_Init(NARC *narc, FieldSystemUnkSubC8 *unkSubC8) {
    MapPropAnimationManagerInternal *mgr = Heap_Alloc(HEAP_ID_FIELD1, sizeof(MapPropAnimationManagerInternal));
    s32 j;
    s32 i;

    for (i = 0; i < 16; i++) {
        mgr->slots[i].active = 0;
        mgr->slots[i].id = 0;
        mgr->slots[i].target = 0;
    }

    for (j = 0; j < 2; j++) {
        mgr->aux[j].active = FALSE;
        mgr->aux[j].a1 = NULL;
        mgr->aux[j].obj = NULL;
        mgr->aux[j].id = 0;
    }

    mgr->narc = NARC_New(NARC_a_1_0_6, HEAP_ID_FIELD1);
    mgr->srcNarc = narc;
    mgr->resource = ov01_022041D8(unkSubC8, HEAP_ID_FIELD1, 0x10);

    return (MapPropAnimationManager *)mgr;
}
#else
// clang-format off
asm MapPropAnimationManager *MapPropAnimationManager_Init(NARC *narc, FieldSystemUnkSubC8 *unkSubC8) {
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #8
    str r1, [sp, #4]
    mov r1, #0x4f
    str r0, [sp, #0]
    mov r0, #4
    lsl r1, r1, #2
    bl Heap_Alloc
    add r7, r0, #0
    mov r0, #0
    add r1, r7, #0
    add r6, r0, #0
_021E87FE:
    str r6, [r1, #0x14]
    str r6, [r1, #0x18]
    str r6, [r1, #0x1c]
    add r0, r0, #1
    add r1, #0x10
    cmp r0, #0x10
    blt _021E87FE
    mov r0, #0x11
    lsl r0, r0, #4
    add r2, r0, #0
    add r3, r0, #0
    add r5, r7, #0
    mov r4, #0
    add r1, r0, #4
    add r2, #8
    add r3, #0xc
_021E881E:
    str r4, [r5, r0]
    str r4, [r5, r1]
    str r4, [r5, r2]
    str r4, [r5, r3]
    add r6, r6, #1
    add r5, #0x10
    cmp r6, #2
    blt _021E881E
    mov r0, #0x6a
    mov r1, #4
    bl NARC_New
    mov r1, #0x13
    lsl r1, r1, #4
    str r0, [r7, r1]
    ldr r0, [sp, #0]
    add r1, r1, #4
    str r0, [r7, r1]
    ldr r0, [sp, #4]
    mov r1, #4
    mov r2, #0x10
    bl ov01_022041D8
    mov r1, #0x4e
    lsl r1, r1, #2
    str r0, [r7, r1]
    add r0, r7, #0
    add sp, #8
    pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on
#endif // NONMATCHING

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
    return (a0 & 1) == 1 ? TRUE : FALSE;
}

static BOOL ov01_021E887C(s32 a0) {
    if (a0 == 8) {
        return TRUE;
    }
    return ((a0 >> 1) & 1) == 1;
}

// NONMATCHING: 7-instruction index/induction-pointer register exchange in the second loop.
// Everything else in the function is byte-exact; see patterns
// loop2-induction-pointer-regalloc and c89-decl-order-fixes-swapped-registers.
#ifdef NONMATCHING
static MapPropAnimManagerSlot *ov01_021E8894(s32 modelNum, s32 animNum, s32 unk8, s32 target, s32 unk10, s32 unkC, BOOL expectedFlag, NNSG3dResMdl *model, NNSG3dResTex *texture, MapPropAnimationManagerInternal *mgr) {
    MapPropAnimResRow row;
    s32 i;
    s32 j;
    s32 fileId;
    FieldSystemUnkSubCC_Sub0_SubStruct *obj;

    NARC_ReadWholeMember(mgr->srcNarc, modelNum, &row);
    GF_ASSERT(animNum < 4);

    fileId = row.fileId[animNum];
    if (fileId == -1) {
        return NULL;
    }

    if (expectedFlag != ov01_021E8864(row.unk1)) {
        return NULL;
    }

    for (i = 0; i < 16; i++) {
        if (target != 0 && target == mgr->slots[i].target) {
            GF_AssertFail();
        }
    }

    for (j = 0; j < 16; j++) {
        if (mgr->slots[j].active == 0) {
            mgr->slots[j].active = TRUE;

            obj = ov01_022042FC(mgr->resource);
            GF_ASSERT(obj != NULL);

            ov01_022044C8(obj, unk8, unkC, unk10);
            mgr->slots[j].id = fileId;
            mgr->slots[j].target = target;
            ov01_021E87A8(mgr->narc, mgr->resource, obj, fileId, model, texture);
            mgr->slots[j].obj = obj;
            ov01_022044E0(mgr->slots[j].obj);

            return &mgr->slots[j];
        }
    }

    GF_AssertFail();
    return NULL;
}
#else
// clang-format off
static asm MapPropAnimManagerSlot *ov01_021E8894(s32 modelNum, s32 animNum, s32 unk8, s32 target, s32 unk10, s32 unkC, BOOL expectedFlag, NNSG3dResMdl *model, NNSG3dResTex *texture, MapPropAnimationManagerInternal *mgr) {
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #0x28
    add r6, r0, #0
    mov r0, #0x4d
    ldr r7, [sp, #0x54]
    lsl r0, r0, #2
    add r4, r1, #0
    str r2, [sp, #8]
    ldr r0, [r7, r0]
    add r1, r6, #0
    add r2, sp, #0x10
    add r5, r3, #0
    bl NARC_ReadWholeMember
    cmp r4, #4
    blt _021E88B8
    bl GF_AssertFail
_021E88B8:
    lsl r1, r4, #2
    add r0, sp, #0x18
    ldr r0, [r0, r1]
    mov r1, #0
    mvn r1, r1
    str r0, [sp, #0xc]
    cmp r0, r1
    bne _021E88CE
    add sp, #0x28
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
_021E88CE:
    add r0, sp, #0x10
    ldrb r0, [r0, #1]
    bl ov01_021E8864
    ldr r1, [sp, #0x48]
    cmp r1, r0
    beq _021E88E2
    add sp, #0x28
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
_021E88E2:
    mov r6, #0
    add r4, r7, #0
_021E88E6:
    cmp r5, #0
    beq _021E88F4
    ldr r0, [r4, #0x1c]
    cmp r5, r0
    bne _021E88F4
    bl GF_AssertFail
_021E88F4:
    add r6, r6, #1
    add r4, #0x10
    cmp r6, #0x10
    blt _021E88E6
    mov r2, #0
    add r1, r7, #0
_021E8900:
    ldr r0, [r1, #0x14]
    cmp r0, #0
    bne _021E895E
    lsl r4, r2, #4
    mov r1, #1
    add r0, r7, r4
    str r1, [r0, #0x14]
    mov r0, #0x4e
    lsl r0, r0, #2
    ldr r0, [r7, r0]
    bl ov01_022042FC
    add r6, r0, #0
    bne _021E8920
    bl GF_AssertFail
_021E8920:
    ldr r1, [sp, #8]
    ldr r2, [sp, #0x44]
    ldr r3, [sp, #0x40]
    add r0, r6, #0
    bl ov01_022044C8
    ldr r0, [sp, #0xc]
    add r1, r7, r4
    str r0, [r1, #0x18]
    str r5, [r1, #0x1c]
    ldr r0, [sp, #0x4c]
    mov r1, #0x13
    str r0, [sp, #0]
    ldr r0, [sp, #0x50]
    lsl r1, r1, #4
    str r0, [sp, #4]
    ldr r0, [r7, r1]
    add r1, #8
    ldr r1, [r7, r1]
    ldr r3, [sp, #0xc]
    add r2, r6, #0
    bl ov01_021E87A8
    add r7, #0x10
    str r6, [r7, r4]
    ldr r0, [r7, r4]
    bl ov01_022044E0
    add sp, #0x28
    add r0, r7, r4
    pop {r3, r4, r5, r6, r7, pc}
_021E895E:
    add r2, r2, #1
    add r1, #0x10
    cmp r2, #0x10
    blt _021E8900
    bl GF_AssertFail
    mov r0, #0
    add sp, #0x28
    pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on
#endif // NONMATCHING

BOOL ov01_021E8970(int modelNum, int animNum, int target, UnkStruct_FieldSysC0_SubC *renderObj, MapPropAnimationManager *mapPropAnimationManager) {
    MapPropAnimationManagerInternal *mgr = (MapPropAnimationManagerInternal *)mapPropAnimationManager;
    MapPropAnimResRow row;
    s32 i;
    s32 fileId;
    BOOL added;

    if (mgr == NULL) {
        GF_AssertFail();
        return FALSE;
    }

    if (modelNum >= ov01_021E8B9C(mgr)) {
        return FALSE;
    }

    NARC_ReadWholeMember(mgr->srcNarc, modelNum, &row);
    GF_ASSERT(animNum < 4);

    fileId = row.fileId[animNum];
    if (fileId == -1) {
        return FALSE;
    }

    if (target != ov01_021E887C(row.unk1)) {
        return FALSE;
    }

    for (i = 0; i < 16; i++) {
        if (mgr->slots[i].id == fileId) {
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
    u8 i;
    u8 freeIdx;

    GF_ASSERT(id != 0);

    freeIdx = 16;
    for (i = 0; i < 16; i++) {
        if (freeIdx == 16 && ctrl->subCtrls[i].id == 0) {
            freeIdx = i;
        }
    }

    if (freeIdx != 16) {
        ctrl->subCtrls[freeIdx].id = id;
        ctrl->subCtrls[freeIdx].flag = 0;
    } else {
        GF_AssertFail();
        return NULL;
    }

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
    s32 i;
    MapPropOneShotSubCtrl *ret = NULL;

    for (i = 0; i < 16; i++) {
        if (id == ctrl->subCtrls[i].id) {
            ret = &ctrl->subCtrls[i];
            break;
        }
    }
    return ret;
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
    MapPropAnimManagerSlot *slot;
    s32 i;

    for (i = 0; i < count; i++) {
        slot = ov01_021E8894(modelNum, i, unk8, 0, unk10, 1, TRUE, model, texture, mgr);
        GF_ASSERT(slot != NULL);
        ov01_021E8CA4(sc, i, slot);
    }
}

// NONMATCHING: 7-instruction index/induction-pointer register exchange in the second loop.
// Everything else in the function is byte-exact; see patterns
// loop2-induction-pointer-regalloc and c89-decl-order-fixes-swapped-registers.
#ifdef NONMATCHING
static void ov01_021E8D6C(MapPropAnimationManagerInternal *mgr, MapPropOneShotSubCtrl *sc) {
    FieldSystemUnkSubCC_Sub0_SubStruct *obj = ov01_021E8858(sc->current);
    s32 i;
    s32 j;

    for (i = 0; i < 6; i++) {
        if (sc->secondary[i] != NULL) {
            ov01_02204518(sc->secondary[i], obj);
        }
    }

    for (j = 0; j < sc->count; j++) {
        ov01_021E8A50(sc->primary[j], mgr);
        sc->primary[j] = NULL;
    }
}
#else
// clang-format off
static asm void ov01_021E8D6C(MapPropAnimationManagerInternal *mgr, MapPropOneShotSubCtrl *sc) {
    push {r3, r4, r5, r6, r7, lr}
    add r6, r1, #0
    str r0, [sp, #0]
    ldr r0, [r6, #0x2c]
    bl ov01_021E8858
    add r7, r0, #0
    mov r4, #0
    add r5, r6, #0
_021E8D7E:
    ldr r0, [r5, #0x14]
    cmp r0, #0
    beq _021E8D8A
    add r1, r7, #0
    bl ov01_02204518
_021E8D8A:
    add r4, r4, #1
    add r5, r5, #4
    cmp r4, #6
    blt _021E8D7E
    ldr r0, [r6, #0x10]
    mov r5, #0
    cmp r0, #0
    ble _021E8DB0
    add r4, r6, #0
    add r7, r5, #0
_021E8D9E:
    ldr r0, [r4, #0]
    ldr r1, [sp, #0]
    bl ov01_021E8A50
    stmia r4!, {r7}
    ldr r0, [r6, #0x10]
    add r5, r5, #1
    cmp r5, r0
    blt _021E8D9E
_021E8DB0:
    pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on
#endif // NONMATCHING

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

void ov01_021E8DE8(MapPropAnimationManagerInternal *mgr, MapPropOneShotAnimationManagerInternal *ctrl, int id, s32 modelNum, UnkStruct_FieldSysC0_SubC *a4, NNSG3dResMdl *model, NNSG3dResTex *texture, s32 count, u8 flag, s32 unk10) {
    s32 v;
    MapPropOneShotSubCtrl *sc;

    sc = ov01_021E8BE8(ctrl, id);
    if (sc == NULL) {
        GF_AssertFail();
        return;
    }

    ov01_021E8C88(a4, count, sc);

    v = flag;
    GF_ASSERT(v != 0);
    if (v == 0) {
        v = 1;
    }

    ov01_021E8D10(modelNum, model, texture, count, v, unk10, mgr, sc);
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

// NONMATCHING: Control flow and instruction selection match exactly; retail spills `row` to its own argument slot and keeps `obj` in r6 while MWCC does the reverse, costing 16 bytes of reloads.
// Everything else in the function is byte-exact; see patterns
// loop2-induction-pointer-regalloc and c89-decl-order-fixes-swapped-registers.
#ifdef NONMATCHING
void ov01_021E8F3C(s32 modelNum, NNSG3dResMdl *model, UnkStruct_FieldSysC0_SubC *renderObj, NNSG3dResTex *texture, MapPropAnimResRow *row, MapPropAnimationManagerInternal *mgr, FieldSystemUnkSub104 *unk104) {
    FieldSystemUnkSubCC_Sub0_SubStruct *collected[4];
    s32 fileId;
    s32 j;
    u8 collectedCount;
    BOOL flag14;
    s32 i;
    s32 timeIndex;

    collectedCount = 0;

    if (modelNum >= ov01_021E8B9C(mgr)) {
        return;
    }

    if (row->unk0 == 0) {
        return;
    }

    for (j = 0; j < 4; j++) {
        fileId = row->fileId[j];
        if (fileId == -1) {
            return;
        }

        if (ov01_021E8864(row->unk1)) {
            return;
        }

        if (ov01_021E887C(row->unk1) == 0) {
            flag14 = TRUE;
        } else {
            flag14 = FALSE;
        }

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
            ov01_022044E0(obj);

            if (flag14) {
                BOOL added;
                if (row->unk2 != 0) {
                    added = ov01_021E8744(mgr->aux, renderObj, mgr->slots[i].obj, (u8)fileId);
                } else {
                    added = TRUE;
                }

                if (added) {
                    ov01_0220450C(renderObj, mgr->slots[i].obj);
                }
            } else if (row->unk1 == 8) {
                collected[collectedCount++] = mgr->slots[i].obj;
            }

            break;
        }

        GF_ASSERT(i != 16);
    }

    if (row->unk1 == 8) {
        timeIndex = ov01_02204834(unk104);
        ov01_0220450C(renderObj, collected[timeIndex]);
        ov01_0220476C(unk104, renderObj, collected, 4);
    }
}
#else
// clang-format off
asm void ov01_021E8F3C(s32 modelNum, NNSG3dResMdl *model, UnkStruct_FieldSysC0_SubC *renderObj, NNSG3dResTex *texture, MapPropAnimResRow *row, MapPropAnimationManagerInternal *mgr, FieldSystemUnkSub104 *unk104) {
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #0x38
    add r4, r0, #0
    ldr r0, [sp, #0x50]
    ldr r7, [sp, #0x54]
    str r0, [sp, #0x50]
    mov r0, #0
    str r0, [sp, #0x1c]
    add r0, r7, #0
    str r1, [sp, #8]
    str r2, [sp, #0xc]
    str r3, [sp, #0x10]
    bl ov01_021E8B9C
    cmp r4, r0
    bge _021E8F86
    ldr r0, [sp, #0x50]
    ldrb r0, [r0, #0]
    cmp r0, #0
    beq _021E8F86
    mov r0, #0
    str r0, [sp, #0x20]
    ldr r0, [sp, #0x50]
    str r0, [sp, #0x18]
_021E8F6C:
    ldr r0, [sp, #0x18]
    mov r1, #0
    ldr r0, [r0, #8]
    mvn r1, r1
    str r0, [sp, #0x24]
    cmp r0, r1
    beq _021E8F86
    ldr r0, [sp, #0x50]
    ldrb r0, [r0, #1]
    bl ov01_021E8864
    cmp r0, #0
    beq _021E8F88
_021E8F86:
    b _021E90AC
_021E8F88:
    ldr r0, [sp, #0x50]
    ldrb r0, [r0, #1]
    bl ov01_021E887C
    cmp r0, #0
    bne _021E8F9A
    mov r0, #1
    str r0, [sp, #0x14]
    b _021E8F9E
_021E8F9A:
    mov r0, #0
    str r0, [sp, #0x14]
_021E8F9E:
    mov r4, #0
    add r1, r7, #0
_021E8FA2:
    ldr r0, [r1, #0x14]
    cmp r0, #0
    bne _021E9062
    lsl r0, r4, #4
    add r5, r7, r0
    mov r0, #1
    str r0, [r5, #0x14]
    mov r0, #0x4e
    lsl r0, r0, #2
    ldr r0, [r7, r0]
    bl ov01_022042FC
    add r6, r0, #0
    bne _021E8FC2
    bl GF_AssertFail
_021E8FC2:
    ldr r0, [sp, #0x50]
    ldrb r0, [r0, #2]
    cmp r0, #0
    beq _021E8FD8
    mov r1, #1
    add r0, r6, #0
    add r2, r1, #0
    mov r3, #0
    bl ov01_022044C8
    b _021E8FE6
_021E8FD8:
    mov r1, #0
    mov r2, #0
    add r0, r6, #0
    mvn r1, r1
    add r3, r2, #0
    bl ov01_022044C8
_021E8FE6:
    ldr r0, [sp, #0x24]
    mov r1, #0x13
    str r0, [r5, #0x18]
    mov r0, #0
    str r0, [r5, #0x1c]
    ldr r0, [sp, #8]
    lsl r1, r1, #4
    str r0, [sp, #0]
    ldr r0, [sp, #0x10]
    ldr r3, [sp, #0x24]
    str r0, [sp, #4]
    ldr r0, [r7, r1]
    add r1, #8
    ldr r1, [r7, r1]
    add r2, r6, #0
    bl ov01_021E87A8
    add r0, r6, #0
    str r6, [r5, #0x10]
    bl ov01_022044E0
    ldr r0, [sp, #0x14]
    cmp r0, #0
    beq _021E9044
    ldr r0, [sp, #0x50]
    ldrb r0, [r0, #2]
    cmp r0, #0
    beq _021E9034
    ldr r3, [sp, #0x24]
    mov r0, #0x11
    lsl r0, r0, #4
    lsl r3, r3, #0x18
    ldr r1, [sp, #0xc]
    ldr r2, [r5, #0x10]
    add r0, r7, r0
    lsr r3, r3, #0x18
    bl ov01_021E8744
    b _021E9036
_021E9034:
    mov r0, #1
_021E9036:
    cmp r0, #0
    beq _021E906A
    ldr r0, [sp, #0xc]
    ldr r1, [r5, #0x10]
    bl ov01_0220450C
    b _021E906A
_021E9044:
    ldr r0, [sp, #0x50]
    ldrb r0, [r0, #1]
    cmp r0, #8
    bne _021E906A
    ldr r0, [sp, #0x1c]
    add r1, r0, #0
    add r1, r1, #1
    lsl r1, r1, #0x18
    lsr r1, r1, #0x18
    str r1, [sp, #0x1c]
    ldr r2, [r5, #0x10]
    lsl r1, r0, #2
    add r0, sp, #0x28
    str r2, [r0, r1]
    b _021E906A
_021E9062:
    add r4, r4, #1
    add r1, #0x10
    cmp r4, #0x10
    blt _021E8FA2
_021E906A:
    cmp r4, #0x10
    bne _021E9072
    bl GF_AssertFail
_021E9072:
    ldr r0, [sp, #0x18]
    add r0, r0, #4
    str r0, [sp, #0x18]
    ldr r0, [sp, #0x20]
    add r0, r0, #1
    str r0, [sp, #0x20]
    cmp r0, #4
    bge _021E9084
    b _021E8F6C
_021E9084:
    ldr r0, [sp, #0x50]
    ldrb r0, [r0, #1]
    cmp r0, #8
    bne _021E90AC
    ldr r0, [sp, #0x58]
    bl ov01_02204834
    add r1, r0, #0
    lsl r2, r1, #2
    add r1, sp, #0x28
    ldr r0, [sp, #0xc]
    ldr r1, [r1, r2]
    bl ov01_0220450C
    ldr r0, [sp, #0x58]
    ldr r1, [sp, #0xc]
    add r2, sp, #0x28
    mov r3, #4
    bl ov01_0220476C
_021E90AC:
    add sp, #0x38
    pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on
#endif // NONMATCHING

void ov01_021E90B0(MapPropOneShotAnimationManagerInternal *ctrl, u8 id, u8 flag) {
    MapPropOneShotSubCtrl *sc = ov01_021E8C60(ctrl, id);
    sc->flag = flag;
}
