#include "global.h"

#include "gf_3d_loader.h"
#include "heap.h"
#include "obj_char_transfer.h"
#include "obj_pltt_transfer.h"
#include "unk_02009D48.h"
#include "unk_0200A090.h"
#include "unk_0200B150.h"

typedef struct UnkStruct_ov41_02245EA0 {
    u8 unk0[0x34];
    GF_2DGfxRawResMan *unk34;
    void *unk38;
    int unk3C;
    u8 unk40[4];
    SpriteList *unk44;
    GF_2DGfxResMan *unk48;
    GF_2DGfxResMan *unk4C;
    GF_2DGfxResMan *unk50;
    GF_2DGfxResMan *unk54;
    G2dRenderer unk58;
} UnkStruct_ov41_02245EA0;

static const ObjCharTransferTemplate ov41_0224BFA4 = {
    8,
    0x8000,
    0x4000,
    HEAP_ID_14
};

void ov41_02246A50(UnkStruct_ov41_02245EA0 *a0) {
    a0->unk34 = GF2dGfxRawResMan_Create(0x77, HEAP_ID_14);
    a0->unk38 = Heap_Alloc(HEAP_ID_14, 0x77 * 4);
    memset(a0->unk38, 0, 0x77 * 4);
    a0->unk3C = 0x77;
}

void ov41_02246A7C(UnkStruct_ov41_02245EA0 *a0) {
    Heap_Free(a0->unk38);
    GF2dGfxRawResObj_Destroy(a0->unk34);
    a0->unk3C = 0;
}

void ov41_02246A94(UnkStruct_ov41_02245EA0 *a0) {
    ObjCharTransferTemplate template = ov41_0224BFA4;
    ObjCharTransfer_InitEx(&template, GX_OBJVRAMMODE_CHAR_1D_32K, GX_OBJVRAMMODE_CHAR_1D_32K);
    ObjPlttTransfer_Init(5, HEAP_ID_14);
    ObjCharTransfer_ClearBuffers();
    ObjPlttTransfer_Reset();
    NNS_G2dInitOamManagerModule();
    OamManager_Create(0, 0x7C, 0, 0x1F, 0, 0x7C, 0, 0x1F, HEAP_ID_14);
    a0->unk44 = G2dRenderer_Init(0x30, &a0->unk58, HEAP_ID_14);
    G2dRenderer_SetSubSurfaceCoords(&a0->unk58, 0, 0x200000);
    a0->unk48 = Create2DGfxResObjMan(8, GF_GFX_RES_TYPE_CHAR, HEAP_ID_14);
    a0->unk4C = Create2DGfxResObjMan(5, GF_GFX_RES_TYPE_PLTT, HEAP_ID_14);
    a0->unk50 = Create2DGfxResObjMan(0x30, GF_GFX_RES_TYPE_CELL, HEAP_ID_14);
    a0->unk54 = Create2DGfxResObjMan(0x30, GF_GFX_RES_TYPE_ANIM, HEAP_ID_14);
}
