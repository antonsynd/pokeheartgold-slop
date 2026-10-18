#include "global.h"

#include "heap.h"

typedef struct Ov15Anims {
    u8 filler_00[0x58];
    void *unk58;
    void *dataA[8];
    void *dataB[8];
    void *unk9C;
    NNSG3dAnmObj *anmObjsA[8];
    NNSG3dAnmObj *anmObjsB[8];
    NNSG3dAnmObj *anmObjC;
} Ov15Anims;

typedef struct Ov15_021FDF20 {
    u8 filler_000[0x808];
    NNSFndAllocator allocator;
    u8 filler_818[4];
    Ov15Anims anims;
} Ov15_021FDF20;

void ov15_021FDF20(Ov15_021FDF20 *a0) {
    Ov15Anims *anims = &a0->anims;
    u32 i;

    for (i = 0; i < 8; i++) {
        NNS_G3dFreeAnmObj(&a0->allocator, anims->anmObjsA[i]);
        NNS_G3dFreeAnmObj(&a0->allocator, anims->anmObjsB[i]);
        Heap_Free(anims->dataA[i]);
        Heap_Free(anims->dataB[i]);
    }
    NNS_G3dFreeAnmObj(&a0->allocator, anims->anmObjC);
    Heap_Free(anims->unk9C);
    Heap_Free(anims->unk58);
}
