#include "global.h"

#include "error_handling.h"
#include "filesystem.h"
#include "heap.h"

typedef struct {
    u8 unk0[0xD10];
} UnkOv49_Elem;

typedef struct {
    void *unk0;
    void *unk4;
    int unk8;
    int unkC;
    UnkOv49_Elem unk10[20];
    u8 unk10550[0x2CC];
    NNSFndAllocator allocator;
} UnkOv49_Work;

typedef struct {
    int unk0;
    fx32 unk4;
    fx32 unk8;
    fx32 unkC;
    fx32 unk10;
    fx32 unk14;
    fx32 unk18;
    fx32 unk1C;
    fx32 unk20;
    fx32 unk24;
} UnkOv49_Lerp;

extern void ov49_02265698(UnkOv49_Work *work, NARC *narc, enum HeapID heapId);
extern void ov49_02265738(UnkOv49_Work *work, NARC *narc, enum HeapID heapId);
extern void ov49_022657B4(UnkOv49_Work *work, NARC *narc, enum HeapID heapId);
extern void ov49_0226571C(UnkOv49_Work *work);
extern void ov49_02265760(UnkOv49_Work *work);
extern void ov49_02265858(UnkOv49_Work *work);
extern void ov49_022658E4(UnkOv49_Work *work, UnkOv49_Elem *elem);
extern void ov49_02265920(UnkOv49_Work *work, UnkOv49_Elem *elem);
extern void ov49_02258DAC(void *a0);
extern void *ov49_02258D70(void *a0, u32 index);
extern void ov49_02265890(UnkOv49_Work *work, UnkOv49_Elem *elem, void *a2, int a3);
extern int ov49_02265958(UnkOv49_Elem *elem);
extern fx32 FX_Div(fx32 numerator, fx32 denominator);

UnkOv49_Work *ov49_022652E8(void *a0, int a1, int a2, void *a3, enum HeapID heapId, enum HeapID heapId2);
void ov49_0226535C(UnkOv49_Work *work);
void ov49_02265378(UnkOv49_Work *work);
void ov49_02265398(UnkOv49_Work *work);
void ov49_022653C0(UnkOv49_Work *work, u32 index, int a2);
BOOL ov49_022653F0(UnkOv49_Work *work, u32 index);
void ov49_0226540C(UnkOv49_Lerp *lerp, fx32 x0, fx32 x1, fx32 y0, fx32 y1, fx32 z0, fx32 z1, int frames);
BOOL ov49_02265434(UnkOv49_Lerp *lerp, int frame);

UnkOv49_Work *ov49_022652E8(void *a0, int a1, int a2, void *a3, enum HeapID heapId, enum HeapID heapId2) {
    UnkOv49_Work *work = Heap_Alloc(heapId, sizeof(UnkOv49_Work));
    NARC *narc;
    memset(work, 0, sizeof(UnkOv49_Work));
    work->unk0 = a0;
    work->unk4 = a3;
    work->unk8 = a2;
    work->unkC = a1;
    narc = NARC_New(209, heapId);
    HeapExp_FndInitAllocator(&work->allocator, heapId2, 4);
    ov49_02265698(work, narc, heapId2);
    ov49_02265738(work, narc, heapId2);
    ov49_022657B4(work, narc, heapId2);
    NARC_Delete(narc);
    return work;
}

void ov49_0226535C(UnkOv49_Work *work) {
    ov49_0226571C(work);
    ov49_02265760(work);
    ov49_02265858(work);
    Heap_Free(work);
}

void ov49_02265378(UnkOv49_Work *work) {
    int i;
    for (i = 0; i < 20; i++) {
        ov49_022658E4(work, &work->unk10[i]);
    }
}

void ov49_02265398(UnkOv49_Work *work) {
    int i;
    ov49_02258DAC(work->unk4);
    for (i = 0; i < 20; i++) {
        ov49_02265920(work, &work->unk10[i]);
    }
}

void ov49_022653C0(UnkOv49_Work *work, u32 index, int a2) {
    void *result;
    if (index >= 20) {
        GF_AssertFail();
    }
    result = ov49_02258D70(work->unk4, index);
    if (result != NULL) {
        ov49_02265890(work, &work->unk10[index], result, a2);
    }
}

BOOL ov49_022653F0(UnkOv49_Work *work, u32 index) {
    if (ov49_02265958(&work->unk10[index]) == 1) {
        return FALSE;
    }
    return TRUE;
}

void ov49_0226540C(UnkOv49_Lerp *lerp, fx32 x0, fx32 x1, fx32 y0, fx32 y1, fx32 z0, fx32 z1, int frames) {
    lerp->unk0 = frames;
    lerp->unk4 = x0;
    lerp->unk10 = x1 - x0;
    lerp->unk14 = x0;
    lerp->unk8 = y0;
    lerp->unk18 = y1 - y0;
    lerp->unk1C = y0;
    lerp->unkC = z0;
    lerp->unk20 = z1 - z0;
    lerp->unk24 = z0;
}

BOOL ov49_02265434(UnkOv49_Lerp *lerp, int frame) {
    BOOL done = FALSE;
    if (frame > lerp->unk0) {
        frame = lerp->unk0;
        done = TRUE;
    }
    if (lerp->unk10 != 0) {
        lerp->unk4 = lerp->unk14 + FX_Div(FX_Mul(FX32_CONST(frame), lerp->unk10), FX32_CONST(lerp->unk0));
    }
    if (lerp->unk18 != 0) {
        lerp->unk8 = lerp->unk1C + FX_Div(FX_Mul(FX32_CONST(frame), lerp->unk18), FX32_CONST(lerp->unk0));
    }
    if (lerp->unk20 != 0) {
        lerp->unkC = lerp->unk24 + FX_Div(FX_Mul(FX32_CONST(frame), lerp->unk20), FX32_CONST(lerp->unk0));
    }
    return done;
}
