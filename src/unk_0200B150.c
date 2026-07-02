#include "unk_0200B150.h"

#include "global.h"

#include "heap.h"
#include "sprite.h"

typedef struct OamManager {
    u8 mainOamManager[0x1C];
    u8 subOamManager[0x1C];
    enum HeapID heapID;
} OamManager;

static OamManager *sOamManager; // _021D0EB0

// The NNS OAM-manager API is not declared in the (stubbed) SDK headers;
// declare locally to keep lib/include frozen (IPA discipline).
extern BOOL NNS_G2dGetNewOamManagerInstance(void *oamManager, u16 fromOBJ, u16 numOBJ, u16 fromAffine, u16 numAffine, int type);
extern void NNS_G2dApplyAndResetOamManagerBuffer(void *oamManager);
extern BOOL NNS_G2dEntryOamManagerOamWithAffineIdx(void *oamManager, const GXOamAttr *oam, u16 affineIndex);
extern u16 NNS_G2dEntryOamManagerAffine(void *oamManager, const MtxFx22 *mtx);

// Defined in asm/unk_02025C44.s; local prototypes keep unk_02025C44.h frozen
// (IPA discipline).
extern void sub_02025C54(NNSG2dRenderSurface *surface, NNSG2dViewRect *rect, NNSG2dOamRegisterFunction oamRegisterFunc, NNSG2dAffineRegisterFunction affineRegisterFunc, NNSG2dRndCellCullingFunction cullingFunc, NNS_G2D_VRAM_TYPE type, NNSG2dRendererInstance *instance);
extern BOOL sub_02025C98(const NNSG2dCellData *cell, const MtxFx32 *mtx, const NNSG2dViewRect *viewRect);

static void sub_0200B194(int fromOBJmain, int numOBJmain, int fromAffineMain, int numAffineMain, int fromOBJsub, int numOBJsub, int fromAffineSub, int numAffineSub, enum HeapID heapID);
static BOOL sub_0200B2F0(const GXOamAttr *oam, u16 affineIndex, BOOL doubleAffine);
static BOOL sub_0200B310(const GXOamAttr *oam, u16 affineIndex, BOOL doubleAffine);
static u16 sub_0200B334(const MtxFx22 *mtx);
static u16 sub_0200B358(const MtxFx22 *mtx);

#ifdef NONMATCHING
// param-copyprop-cmp (blockers.json): MWCC substitutes the parameter copy
// back to r0 in the entry comparisons ("cmp r0, #4" instead of retail's
// "cmp r4, #4"), so this shape is unreachable from C.
void OamManager_Create(int fromOBJmain, int numOBJmain, int fromAffineMain, int numAffineMain, int fromOBJsub, int numOBJsub, int fromAffineSub, int numAffineSub, enum HeapID heapID) {
    if (fromOBJmain < 4) {
        if (numOBJmain > 0x7C) {
            numOBJmain -= 4 - fromOBJmain;
        }
        fromOBJmain = 4;
    }
    if (fromAffineMain < 1) {
        if (numAffineMain > 0x1E) {
            numAffineMain -= 1 - fromAffineMain;
        }
        fromAffineMain = 1;
    }
    sub_0200B194(fromOBJmain, numOBJmain, fromAffineMain, numAffineMain, fromOBJsub, numOBJsub, fromAffineSub, numAffineSub, heapID);
}
#else
// clang-format off
asm void OamManager_Create(int fromOBJmain, int numOBJmain, int fromAffineMain, int numAffineMain, int fromOBJsub, int numOBJsub, int fromAffineSub, int numAffineSub, enum HeapID heapID) {
    push {r3, r4, lr}
    sub sp, #0x14
    add r4, r0, #0
    cmp r4, #4
    bge _0200B164
    mov r0, #4
    cmp r1, #0x7c
    ble _0200B164
    sub r4, r0, r4
    sub r1, r1, r4
_0200B164:
    cmp r2, #1
    bge _0200B174
    mov r4, #1
    cmp r3, #0x1e
    ble _0200B176
    sub r2, r4, r2
    sub r3, r3, r2
    b _0200B176
_0200B174:
    add r4, r2, #0
_0200B176:
    ldr r2, [sp, #0x20]
    str r2, [sp, #0]
    ldr r2, [sp, #0x24]
    str r2, [sp, #4]
    ldr r2, [sp, #0x28]
    str r2, [sp, #8]
    ldr r2, [sp, #0x2c]
    str r2, [sp, #0xc]
    ldr r2, [sp, #0x30]
    str r2, [sp, #0x10]
    add r2, r4, #0
    bl sub_0200B194
    add sp, #0x14
    pop {r3, r4, pc}
}
// clang-format on
#endif // NONMATCHING

static void sub_0200B194(int fromOBJmain, int numOBJmain, int fromAffineMain, int numAffineMain, int fromOBJsub, int numOBJsub, int fromAffineSub, int numAffineSub, enum HeapID heapID) {
    GF_ASSERT(sOamManager == NULL);
    sOamManager = Heap_Alloc(heapID, sizeof(OamManager));
    GF_ASSERT(sOamManager != NULL);
    sOamManager->heapID = heapID;
    GF_ASSERT(NNS_G2dGetNewOamManagerInstance(sOamManager->mainOamManager, (u16)fromOBJmain, (u16)numOBJmain, (u16)fromAffineMain, (u16)numAffineMain, 0));
    GF_ASSERT(NNS_G2dGetNewOamManagerInstance(sOamManager->subOamManager, (u16)fromOBJsub, (u16)numOBJsub, (u16)fromAffineSub, (u16)numAffineSub, 1));
}

void OamManager_ApplyAndResetBuffers(void) {
    if (sOamManager != NULL) {
        NNS_G2dApplyAndResetOamManagerBuffer(sOamManager->mainOamManager);
        NNS_G2dApplyAndResetOamManagerBuffer(sOamManager->subOamManager);
    }
}

void OamManager_Free(void) {
    GF_ASSERT(sOamManager != NULL);
    thunk_ClearMainOAM(sOamManager->heapID);
    thunk_ClearSubOAM(sOamManager->heapID);
    Heap_Free(sOamManager);
    sOamManager = NULL;
}

void sub_0200B27C(NNSG2dRenderSurface *surface, NNSG2dViewRect *rect, NNS_G2D_VRAM_TYPE type, NNSG2dRendererInstance *instance) {
    GF_ASSERT(sOamManager != NULL);
    if (type == NNS_G2D_VRAM_TYPE_2DMAIN) {
        sub_02025C54(surface, rect, sub_0200B2F0, sub_0200B334, sub_02025C98, type, instance);
    } else {
        sub_02025C54(surface, rect, sub_0200B310, sub_0200B358, sub_02025C98, type, instance);
    }
}

void thunk_ClearMainOAM(enum HeapID heapID) {
    ClearMainOAM(heapID);
}

void thunk_ClearSubOAM(enum HeapID heapID) {
    ClearSubOAM(heapID);
}

static BOOL sub_0200B2F0(const GXOamAttr *oam, u16 affineIndex, BOOL doubleAffine) {
    BOOL result = NNS_G2dEntryOamManagerOamWithAffineIdx(sOamManager->mainOamManager, oam, affineIndex);
    GF_ASSERT(result);
    return result;
}

static BOOL sub_0200B310(const GXOamAttr *oam, u16 affineIndex, BOOL doubleAffine) {
    BOOL result = NNS_G2dEntryOamManagerOamWithAffineIdx(sOamManager->subOamManager, oam, affineIndex);
    GF_ASSERT(result);
    return result;
}

static u16 sub_0200B334(const MtxFx22 *mtx) {
    u16 result = NNS_G2dEntryOamManagerAffine(sOamManager->mainOamManager, mtx);
    GF_ASSERT(result != 0xFFFE);
    return result;
}

static u16 sub_0200B358(const MtxFx22 *mtx) {
    u16 result = NNS_G2dEntryOamManagerAffine(sOamManager->subOamManager, mtx);
    GF_ASSERT(result != 0xFFFE);
    return result;
}
