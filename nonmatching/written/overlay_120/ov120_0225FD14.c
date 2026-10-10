#include "global.h"
#include "gf_gfx_loader.h"

void *ov120_0225FD14(NARC *narc, s32 fileId, NNSG2dCharacterData **ppCharData, enum HeapID heapID) {
    void *ret = GfGfxLoader_LoadFromOpenNarc(narc, fileId, FALSE, heapID, FALSE);
    NNS_G2dGetUnpackedBGCharacterData(ret, ppCharData);
    return ret;
}
