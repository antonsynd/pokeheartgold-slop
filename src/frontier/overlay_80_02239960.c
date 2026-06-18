#include "frontier/overlay_80_02239960.h"

#include "global.h"

#include "nnsys/gfd.h"

#include "camera.h"
#include "heap.h"
#include "unk_02026E30.h"

typedef struct {
    SPLEmitter *slots[8];
    u16 heapId;
} UnkStruct_ov80_02239960;

UnkStruct_ov80_02239960 *ov80_02239960(enum HeapID heapId);
void ov80_02239980(UnkStruct_ov80_02239960 *manager);
SPLEmitter *ov80_022399A4(UnkStruct_ov80_02239960 *manager, u32 idx, int fileId, int a3);
void ov80_02239A1C(UnkStruct_ov80_02239960 *manager, u32 idx);
BOOL ov80_02239A38(void);
BOOL ov80_02239A74(UnkStruct_ov80_02239960 *manager);
static void ov80_02239A98(SPLEmitter *emitter);
static u32 ov80_02239AB0(u32 szByte, BOOL is4x4comp);
static u32 ov80_02239AD4(u32 szByte, BOOL is4pltt);

UnkStruct_ov80_02239960 *ov80_02239960(enum HeapID heapId) {
    UnkStruct_ov80_02239960 *manager = Heap_Alloc(heapId, sizeof(UnkStruct_ov80_02239960));
    MI_CpuFill8(manager, 0, sizeof(UnkStruct_ov80_02239960));
    manager->heapId = heapId;
    sub_02014DA0();
    return manager;
}

void ov80_02239980(UnkStruct_ov80_02239960 *manager) {
    int i;
    for (i = 0; i < 8; i++) {
        if (manager->slots[i] != NULL) {
            ov80_02239A98(manager->slots[i]);
        }
    }
    Heap_Free(manager);
}

SPLEmitter *ov80_022399A4(UnkStruct_ov80_02239960 *manager, u32 idx, int fileId, int a3) {
    SPLEmitter *emitter;
    void *particleHeap;
    GF_ASSERT(manager->slots[idx] == NULL);
    particleHeap = Heap_Alloc((enum HeapID)manager->heapId, 0x12 << 0xA);
    emitter = sub_02014DB4(ov80_02239AB0, ov80_02239AD4, particleHeap, 0x12 << 0xA, 1, (enum HeapID)manager->heapId);
    Camera_SetPerspectiveClippingPlane(1 << 0xC, 0xE1 << 0xE, sub_02015524(emitter));
    sub_02015528(emitter, a3);
    sub_0201526C(emitter, sub_02015264((NarcId)0xBC, fileId, (enum HeapID)manager->heapId), 0xA, 1);
    manager->slots[idx] = emitter;
    return emitter;
}

void ov80_02239A1C(UnkStruct_ov80_02239960 *manager, u32 idx) {
    GF_ASSERT(manager->slots[idx]);
    ov80_02239A98(manager->slots[idx]);
    manager->slots[idx] = NULL;
}

BOOL ov80_02239A38(void) {
    Thunk_G3X_Reset();
    if (sub_02015420() == 0) {
        return FALSE;
    }
    if (sub_0201543C() > 0) {
        Thunk_G3X_Reset();
    }
    sub_02015460();
    return TRUE;
}

SPLEmitter *ov80_02239A60(u32 a0, u32 a1) {
    UnkStruct_ov80_02239960 *manager = (UnkStruct_ov80_02239960 *)a0;
    GF_ASSERT(manager->slots[a1]);
    return manager->slots[a1];
}

BOOL ov80_02239A74(UnkStruct_ov80_02239960 *manager) {
    int i;
    for (i = 0; i < 8; i++) {
        if (manager->slots[i] != NULL && sub_020154B0(manager->slots[i]) > 0) {
            return FALSE;
        }
    }
    return TRUE;
}

static void ov80_02239A98(SPLEmitter *emitter) {
    void *particleHeap = sub_020154D0(emitter);
    sub_02014EBC(emitter);
    Heap_Free(particleHeap);
}

static u32 ov80_02239AB0(u32 szByte, BOOL is4x4comp) {
    NNSGfdTexKey texKey = NNS_GfdAllocTexVram(szByte, is4x4comp, 0);
    GF_ASSERT(texKey);
    sub_02015354(texKey);
    return NNS_GfdGetTexKeyAddr(texKey);
}

static u32 ov80_02239AD4(u32 szByte, BOOL is4pltt) {
    NNSGfdPlttKey plttKey = NNS_GfdAllocPlttVram(szByte, is4pltt, 1);
    GF_ASSERT(plttKey);
    sub_02015394(plttKey);
    return NNS_GfdGetPlttKeyAddr(plttKey);
}
