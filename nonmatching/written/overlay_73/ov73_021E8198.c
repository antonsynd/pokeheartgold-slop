typedef unsigned char u8;
typedef unsigned int u32;
typedef int s32;

void *NARC_New(u32 narcId, u32 heapId);
void NNS_G2dInitOamManagerModule(void);
void OamManager_Create(u32 a, u32 b, u32 c, u32 d, u32 e, u32 f, u32 g, u32 h, u32 heapId);
void *G2dRenderer_Init(u32 a, void *renderer, u32 heapId);
void G2dRenderer_SetSubSurfaceCoords(void *renderer, s32 x, s32 y);
void *Create2DGfxResObjMan(u32 a, u32 b, u32 heapId);
void *AddCharResObjFromOpenNarc(void *mgr, void *narc, u32 fileId, u32 compressed, u32 vramType, u32 resId, u32 heapId);
void *AddPlttResObjFromOpenNarc(void *mgr, void *narc, u32 fileId, u32 compressed, u32 vramType, u32 resId, u32 count, u32 heapId);
void *AddCellOrAnimResObjFromOpenNarc(void *mgr, void *narc, u32 fileId, u32 compressed, u32 vramType, u32 resId, u32 heapId);
void SpriteTransfer_CreateCharTransferTask(void *obj);
void SpriteTransfer_CreateExtPlttTransferTask(void *obj);
void NARC_Delete(void *narc);

void ov73_021E8198(u8 *work)
{
    void *narc;
    s32 i;

    narc = NARC_New(0x64, 0x96);
    NNS_G2dInitOamManagerModule();
    OamManager_Create(0, 0x7e, 0, 0x20, 0, 0x7e, 0, 0x20, 0x96);
    *(void **)(work + 0xbf8) = G2dRenderer_Init(10, work + 0xbfc, 0x96);
    G2dRenderer_SetSubSurfaceCoords(work + 0xbfc, 0, 0x100000);

    for (i = 0; i < 4; i++) {
        *(void **)(work + 0xd24 + i * 4) = Create2DGfxResObjMan(2, i, 0x96);
    }

    *(void **)(work + 0xd34) = AddCharResObjFromOpenNarc(*(void **)(work + 0xd24), narc, 0x2e, 1, 0, 1, 0x96);
    *(void **)(work + 0xd38) = AddPlttResObjFromOpenNarc(*(void **)(work + 0xd28), narc, 0xa, 0, 0, 1, 3, 0x96);
    *(void **)(work + 0xd3c) = AddCellOrAnimResObjFromOpenNarc(*(void **)(work + 0xd2c), narc, 0x2f, 1, 0, 2, 0x96);
    *(void **)(work + 0xd40) = AddCellOrAnimResObjFromOpenNarc(*(void **)(work + 0xd30), narc, 0x30, 1, 0, 3, 0x96);
    SpriteTransfer_CreateCharTransferTask(*(void **)(work + 0xd34));
    SpriteTransfer_CreateExtPlttTransferTask(*(void **)(work + 0xd38));
    NARC_Delete(narc);
}
