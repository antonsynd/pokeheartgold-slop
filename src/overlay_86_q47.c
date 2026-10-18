#include "global.h"

#include "dex_mon_measures.h"
#include "gf_gfx_loader.h"

void *ov86_021E73EC(int idx, u32 *size) {
    u32 fileSize;
    void *ret = GfGfxLoader_LoadFromNarc_GetSizeOut(GetPokedexDataNarcID(), idx + 0x12, FALSE, (enum HeapID)0x79, TRUE, &fileSize);
    *size = fileSize / 2;
    return ret;
}
