#include "global.h"

#include "gf_gfx_loader.h"

void *ov40_0222DD68(enum HeapID heapID, int a1, u32 *pltt) {
    u32 size;
    void *ret = GfGfxLoader_LoadFromNarc_GetSizeOut((NarcId)0x4A, 13, FALSE, heapID, FALSE, &size);
    *pltt = size / 2;
    return ret;
}
