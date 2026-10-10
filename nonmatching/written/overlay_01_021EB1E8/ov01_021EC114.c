typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef int s32;
typedef int BOOL;

typedef struct {
    u32 unk0;
    u32 unk4;
    u32 szByte;
    u8 rawData[1];
} ScreenData_ov01_021EC114;

void GfGfx_EngineATogglePlanes(u32 planes, u32 enable);
void *NARC_AllocAndReadWholeMember(void *narc, u32 member, u32 heapId);
void GF_AssertFail(void);
BOOL NNS_G2dGetUnpackedScreenData(void *file, ScreenData_ov01_021EC114 **out);
void BgCopyOrUncompressTilemapBufferRangeToVram(void *bgConfig, u8 layer, const void *data, u32 size, u32 offset);
void BG_LoadScreenTilemapData(void *bgConfig, u8 layer, const void *data, u32 size);
void BgTilemapRectChangePalette(void *bgConfig, u8 layer, u8 x, u8 y, u8 w, u8 h, u8 pal);
void BgCommitTilemapBufferToVram(void *bgConfig, u8 layer);
void Heap_Free(void *p);

void ov01_021EC114(char *mgr, s32 idx)
{
    void *file;
    ScreenData_ov01_021EC114 *scr;

    if (idx == 0xFFFF) {
        return;
    }
    GfGfx_EngineATogglePlanes(4, 0);
    file = NARC_AllocAndReadWholeMember(*(void **)(mgr + 0x108), *(u32 *)(*(char **)(mgr + 4) + idx * 0xc + 8), 4);
    if (file == 0) {
        GF_AssertFail();
    }
    NNS_G2dGetUnpackedScreenData(file, &scr);
    BgCopyOrUncompressTilemapBufferRangeToVram(*(void **)(*(char **)(mgr + 0x104) + 8), 2, scr->rawData, scr->szByte, 0);
    BG_LoadScreenTilemapData(*(void **)(*(char **)(mgr + 0x104) + 8), 2, scr->rawData, scr->szByte);
    BgTilemapRectChangePalette(*(void **)(*(char **)(mgr + 0x104) + 8), 2, 0, 0, 0x20, 0x20, 6);
    BgCommitTilemapBufferToVram(*(void **)(*(char **)(mgr + 0x104) + 8), 2);
    Heap_Free(file);
}
