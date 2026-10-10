typedef unsigned char u8;
typedef unsigned int u32;
typedef int s32;

void ov71_022472C4(void *animResources, u32 narcId, u32 a, u32 b);
void NNS_G2dInitImagePaletteProxy(void *proxy);
void NNS_G2dInitImageProxy(void *proxy);
u32 GfGfxLoader_LoadImageMapping(u32 narcId, s32 memberNo, int isCompressed, u32 layer, u32 szByte, u32 type, u32 baseAddr, u32 heapId, void *imgProxy);
void GfGfxLoader_PartiallyLoadPalette(u32 narcId, s32 memberNo, u32 type, u32 baseAddr, u32 heapId, void *pltProxy);
void ov71_02247320(void *header, void *animResources, void *imgProxy, void *pltProxy, int flag);
void SetMTRNGSeed(u32 seed);
u32 MTRandom(void);
void *ov71_02247340(void *sequenceData, void *header, s32 x, s32 y, u32 a, u32 b);
void Sprite_SetAnimCtrlSeq(void *sprite, int seq);
void Sprite_SetDrawFlag(void *sprite, int flag);

void ov71_02248A08(u8 *ttPhase)
{
    u8 plttProxy[20];
    u8 imgProxy[36];
    u8 header[36];
    s32 i;
    u32 x;
    u32 y;

    ov71_022472C4(ttPhase + 0xc, 0x59, 0xb, 0xc);

    NNS_G2dInitImagePaletteProxy(plttProxy);
    NNS_G2dInitImageProxy(imgProxy);

    GfGfxLoader_LoadImageMapping(0x59, 0xd, 1, 0, 0, 1, 0, 0x39, imgProxy);
    GfGfxLoader_LoadImageMapping(0x59, 0xd, 1, 0, 0, 2, 0, 0x39, imgProxy);
    GfGfxLoader_PartiallyLoadPalette(0x59, 0xe, 1, 0, 0x39, plttProxy);
    GfGfxLoader_PartiallyLoadPalette(0x59, 0xe, 2, 0, 0x39, plttProxy);
    ov71_02247320(header, ttPhase + 0xc, imgProxy, plttProxy, 1);
    SetMTRNGSeed(0x035947D1);

    for (i = 0; i < 0x14; i++) {
        x = 12 + (MTRandom() % 232);
        y = (MTRandom() % 452) - 28;

        *(void **)(ttPhase + 0x1c + i * 8) = ov71_02247340(*(void **)ttPhase, header, x, y, 0, 1);
        *(void **)(ttPhase + 0x20 + i * 8) = ov71_02247340(*(void **)ttPhase, header, x, y + 56, 0, 1);

        Sprite_SetAnimCtrlSeq(*(void **)(ttPhase + 0x1c + i * 8), 0);
        Sprite_SetAnimCtrlSeq(*(void **)(ttPhase + 0x20 + i * 8), 1);
        Sprite_SetDrawFlag(*(void **)(ttPhase + 0x1c + i * 8), 0);
        Sprite_SetDrawFlag(*(void **)(ttPhase + 0x20 + i * 8), 0);
    }
}
