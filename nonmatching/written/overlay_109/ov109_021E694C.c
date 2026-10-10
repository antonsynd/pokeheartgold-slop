#include "global.h"

typedef struct UnkStruct_ov109_021E694C {
    u32 heapId;
    u8 unk4[0x10];
    void *bgConfig;
} UnkStruct_ov109_021E694C;

extern void ov109_021E692C(UnkStruct_ov109_021E694C *data);
extern void *BgConfig_Alloc(u32 heapId);
extern void SetBothScreensModesAndDisable(const void *modes);
extern void InitBgFromTemplate(void *bgConfig, u8 bgId, const void *tmpl, u8 mode);
extern void BgClearTilemapBufferAndCommit(void *bgConfig, u8 bgId);
extern void BG_ClearCharDataRange(u32 bg, u32 size, u32 offset, u32 heapId);
extern void BgSetPosTextAndCommit(void *bgConfig, u8 bgId, u32 op, s32 value);

extern const u32 ov109_021E78B8[4];
extern const u32 ov109_021E7944[7];
extern const u32 ov109_021E797C[7];
extern const u32 ov109_021E7998[7];
extern const u32 ov109_021E790C[7];
extern const u32 ov109_021E7928[7];
extern const u32 ov109_021E7960[7];
extern const u32 ov109_021E79B4[7];

static inline void CopyWords(u32 *dst, const u32 *src, int n) {
    int i;
    for (i = 0; i < n; i++) {
        dst[i] = src[i];
    }
}

void ov109_021E694C(UnkStruct_ov109_021E694C *data) {
    u32 modes[4];
    u32 tmpl[7];

    ov109_021E692C(data);
    data->bgConfig = BgConfig_Alloc(data->heapId);
    CopyWords(modes, ov109_021E78B8, 4);
    SetBothScreensModesAndDisable(modes);
    *(vu16 *)0x04000304 &= 0x7FFF;

    CopyWords(tmpl, ov109_021E7944, 7);
    InitBgFromTemplate(data->bgConfig, 4, tmpl, 0);
    BgClearTilemapBufferAndCommit(data->bgConfig, 4);

    CopyWords(tmpl, ov109_021E797C, 7);
    InitBgFromTemplate(data->bgConfig, 7, tmpl, 2);
    BgClearTilemapBufferAndCommit(data->bgConfig, 7);

    CopyWords(tmpl, ov109_021E7998, 7);
    InitBgFromTemplate(data->bgConfig, 6, tmpl, 0);
    BgClearTilemapBufferAndCommit(data->bgConfig, 6);

    CopyWords(tmpl, ov109_021E790C, 7);
    InitBgFromTemplate(data->bgConfig, 0, tmpl, 0);
    BgClearTilemapBufferAndCommit(data->bgConfig, 0);

    CopyWords(tmpl, ov109_021E7928, 7);
    InitBgFromTemplate(data->bgConfig, 1, tmpl, 0);
    BgClearTilemapBufferAndCommit(data->bgConfig, 1);

    CopyWords(tmpl, ov109_021E7960, 7);
    InitBgFromTemplate(data->bgConfig, 2, tmpl, 2);
    BgClearTilemapBufferAndCommit(data->bgConfig, 2);

    CopyWords(tmpl, ov109_021E79B4, 7);
    InitBgFromTemplate(data->bgConfig, 3, tmpl, 2);
    BgClearTilemapBufferAndCommit(data->bgConfig, 3);

    BG_ClearCharDataRange(4, 0x20, 0, data->heapId);
    BG_ClearCharDataRange(6, 0x20, 0, data->heapId);
    BG_ClearCharDataRange(0, 0x20, 0, data->heapId);
    BG_ClearCharDataRange(3, 0x40, 0, data->heapId);
    BgSetPosTextAndCommit(data->bgConfig, 7, 0, -4);
}
