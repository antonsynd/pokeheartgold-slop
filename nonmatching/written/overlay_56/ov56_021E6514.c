#include "global.h"

#include "bg_window.h"

typedef struct UnkStruct_ov56_021E6514 {
    enum HeapID heapID;
    u8 padding_04[0x14];
    BgConfig *bgConfig;
} UnkStruct_ov56_021E6514;

extern const BgTemplate ov56_021E6E80[5];

void ov56_021E64F4(void);

void ov56_021E6514(UnkStruct_ov56_021E6514 *param0) {
    GraphicsModes modes;
    BgTemplate templates[5];
    const u32 *src;
    u32 *dst;
    u16 v0;
    int i;

    ov56_021E64F4();
    param0->bgConfig = BgConfig_Alloc(param0->heapID);

    modes.dispMode = 1;
    modes.bgMode = 0;
    modes.subMode = 0;
    modes._2d3dMode = 0;
    SetBothScreensModesAndDisable(&modes);

    v0 = *(volatile u16 *)0x04000304;
    *(volatile u16 *)0x04000304 = v0 & 0x7FFF;

    src = (const u32 *)ov56_021E6E80;
    dst = (u32 *)templates;
    for (i = 0; i < 35; i++) {
        dst[i] = src[i];
    }

    InitBgFromTemplate(param0->bgConfig, 0, &templates[0], 0);
    InitBgFromTemplate(param0->bgConfig, 1, &templates[1], 0);
    InitBgFromTemplate(param0->bgConfig, 2, &templates[2], 0);
    InitBgFromTemplate(param0->bgConfig, 3, &templates[3], 0);
    InitBgFromTemplate(param0->bgConfig, 4, &templates[4], 0);
    BgClearTilemapBufferAndCommit(param0->bgConfig, 0);
    BgClearTilemapBufferAndCommit(param0->bgConfig, 1);
    BgClearTilemapBufferAndCommit(param0->bgConfig, 2);
    BgClearTilemapBufferAndCommit(param0->bgConfig, 3);
    BgClearTilemapBufferAndCommit(param0->bgConfig, 4);
    BG_ClearCharDataRange(0, 0x20, 0, param0->heapID);
    BG_ClearCharDataRange(1, 0x20, 0, param0->heapID);
    BG_ClearCharDataRange(2, 0x20, 0, param0->heapID);
    BG_ClearCharDataRange(3, 0x20, 0, param0->heapID);
    BG_ClearCharDataRange(4, 0x20, 0, param0->heapID);
}
