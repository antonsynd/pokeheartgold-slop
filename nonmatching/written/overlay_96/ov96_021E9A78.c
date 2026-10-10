#include "global.h"
#include "heap.h"
#include "unk_0200A090.h"

typedef struct UnkStruct_ov96_021E9A78 {
    enum HeapID heapId;
    u32 flags;
    u32 unk_08;
    GF_2DGfxResMan *resMan[4];
    u8 filler_1C[0x98];
} UnkStruct_ov96_021E9A78; // size=0xB4

void ov96_021E9D10(UnkStruct_ov96_021E9A78 *param0);

UnkStruct_ov96_021E9A78 *ov96_021E9A78(enum HeapID heapId, u32 flags, u32 param2) {
    u8 counts[4];
    UnkStruct_ov96_021E9A78 *work;
    int i;

    for (i = 0; i < 4; i++) {
        counts[i] = 0;
    }
    if (flags & 0x1) {
        counts[0]++;
        counts[2]++;
        counts[3]++;
    }
    if (flags & 0x4) {
        counts[0]++;
        counts[2]++;
        counts[3]++;
    }
    if (flags & 0x2) {
        counts[0]++;
        counts[2]++;
        counts[3]++;
    }
    if (flags & 0x8) {
        counts[0]++;
        counts[2]++;
        counts[3]++;
    }
    if (flags & 0x10) {
        counts[0]++;
        counts[2]++;
        counts[3]++;
    }
    if (flags & 0x20) {
        counts[0]++;
        counts[2]++;
        counts[3]++;
    }
    if (flags & 0x40) {
        counts[0]++;
        counts[2]++;
        counts[3]++;
    }
    if (flags & 0x80) {
        counts[0]++;
        counts[2]++;
        counts[3]++;
    }
    if (flags & 0x100) {
        counts[0]++;
        counts[2]++;
        counts[3]++;
    }
    if (flags & 0x200) {
        counts[0]++;
        counts[2]++;
        counts[3]++;
    }
    if (flags & 0x400) {
        counts[0]++;
        counts[2]++;
        counts[3]++;
    }
    if (flags & 0x800) {
        counts[0]++;
        counts[2]++;
        counts[3]++;
    }
    counts[1] = 2;
    work = Heap_Alloc(heapId, sizeof(UnkStruct_ov96_021E9A78));
    work->heapId = heapId;
    work->flags = flags;
    work->unk_08 = param2;
    for (i = 0; i < 4; i++) {
        work->resMan[i] = Create2DGfxResObjMan(counts[i], (GfGfxResType)i, work->heapId);
    }
    ov96_021E9D10(work);
    return work;
}
