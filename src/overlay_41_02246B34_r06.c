#include "global.h"

#include "pokepic.h"

typedef struct Ov41_02246CC0 {
    u8 filler_00[0x20];
    PokepicManager *pokepicManager;
    NNSGfdTexKey texKey;
    NNSGfdPlttKey plttKey;
    BOOL initialized;
} Ov41_02246CC0;

void ov41_02246CC0(Ov41_02246CC0 *a0, enum HeapID heapID, u32 texSize, u32 plttSize) {
    a0->pokepicManager = PokepicManager_Create(heapID);
    a0->texKey = NNS_GfdAllocTexVram(texSize, FALSE, 0);
    a0->plttKey = NNS_GfdAllocPlttVram(plttSize, FALSE, NNS_GFD_ALLOC_FROM_LOW);
    PokepicManager_SetCharBaseAddrAndSize(a0->pokepicManager, NNS_GfdGetTexKeyAddr(a0->texKey), NNS_GfdGetTexKeySize(a0->texKey));
    PokepicManager_SetPlttBaseAddrAndSize(a0->pokepicManager, NNS_GfdGetPlttKeyAddr(a0->plttKey), NNS_GfdGetPlttKeySize(a0->plttKey));
    a0->initialized = TRUE;
}
