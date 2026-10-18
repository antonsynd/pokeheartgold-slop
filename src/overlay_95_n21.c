#include "global.h"

#include "heap.h"

typedef struct Ov95_021E5E90_Args {
    enum HeapID heapID;
    void *unk4;
} Ov95_021E5E90_Args;

typedef struct Ov95_021E5E90 {
    Ov95_021E5E90_Args args;
    u8 filler_8[4];
    void *unkC;
} Ov95_021E5E90;

void *ov95_021E5E18(enum HeapID heapID, int a1, void *a2);
void sub_02015528(void *a0, int a1);

Ov95_021E5E90 *ov95_021E5E90(Ov95_021E5E90_Args *args) {
    Ov95_021E5E90 *work = Heap_Alloc(args->heapID, sizeof(Ov95_021E5E90));

    GF_ASSERT(work != NULL);
    work->args = *args;
    work->unkC = ov95_021E5E18(work->args.heapID, 0x74, work->args.unk4);
    sub_02015528(work->unkC, 1);
    return work;
}
