#include "global.h"

#include "filesystem.h"
#include "heap.h"
#include "sprite_system.h"
#include "unk_02013FDC.h"

void ov96_021EED64(Sprite *sprite, void *buffer, u32 size);
void ov96_021EEB84(void *a0, int a1, int a2, int a3);

void ov96_021EEA94(Sprite *sprite, int narcMember, u32 texIdx, enum HeapID heapID) {
    NARC *narc;
    void *header;
    NNSG3dResTex *tex;
    NNSG3dResDictTexData *texData;
    u8 *texImage;
    u32 texOffset;
    void *buffer;
    NNS_G2D_VRAM_TYPE vramType;
    u32 plttOffset;
    u32 plttLocation;

    thunk_Sprite_SetDrawFlag(sprite, FALSE);
    narc = NARC_New(NARC_data_mmodel_mmodel, heapID);
    header = NARC_AllocAndReadWholeMember(narc, narcMember, heapID);
    tex = NNS_G3dGetTex(header);
    texData = NNS_G3dGetTexDataByIdx(tex, texIdx);
    texOffset = (texData->texImageParam & 0xFFFF) << 3;
    texImage = (u8 *)tex + tex->texInfo.ofsTex;
    buffer = Heap_AllocAtEnd(heapID, 0x200);
    sub_020145B4(texImage + texOffset, 4, 0, 0, 4, 4, buffer);
    ov96_021EED64(sprite, buffer, 0x200);
    Heap_Free(buffer);

    vramType = Sprite_GetVramType(sprite);
    plttOffset = tex->plttInfo.ofsPlttData;
    DC_FlushRange((u8 *)tex + plttOffset, 0x20);
    plttLocation = NNS_G2dGetImagePaletteLocation(Sprite_GetPaletteProxy(sprite), vramType);
    if (vramType == NNS_G2D_VRAM_TYPE_2DMAIN) {
        GX_LoadOBJPltt((u8 *)tex + plttOffset, plttLocation, 0x20);
    } else {
        GXS_LoadOBJPltt((u8 *)tex + plttOffset, plttLocation, 0x20);
    }
    Heap_Free(header);
    NARC_Delete(narc);
    thunk_Sprite_SetDrawFlag(sprite, TRUE);
}

void ov96_021EEB74(void ***a0, int a1, int a2, int a3) {
    ov96_021EEB84(*a0[a2], a1, a2, a3);
}
