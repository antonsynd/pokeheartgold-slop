#include "global.h"

#include "bg_window.h"

typedef struct Ov41_022468FC {
    u8 filler_00[0x40];
    BgConfig *bgConfig;
} Ov41_022468FC;

extern const BgTemplate ov41_0224BFC4;
extern const BgTemplate ov41_0224BFE0;
extern const BgTemplate ov41_0224BFFC;
extern const BgTemplate ov41_0224C034;
extern const BgTemplate ov41_0224C050;

void ov41_022468FC(Ov41_022468FC *a0) {
    {
        BgTemplate template = ov41_0224BFE0;

        InitBgFromTemplate(a0->bgConfig, GF_BG_LYR_MAIN_1, &template, GF_BG_TYPE_TEXT);
        BG_ClearCharDataRange(GF_BG_LYR_MAIN_1, 0x20, 0, HEAP_ID_14);
        BgClearTilemapBufferAndCommit(a0->bgConfig, GF_BG_LYR_MAIN_1);
    }
    {
        BgTemplate template = ov41_0224BFFC;

        InitBgFromTemplate(a0->bgConfig, GF_BG_LYR_MAIN_2, &template, GF_BG_TYPE_TEXT);
        BG_ClearCharDataRange(GF_BG_LYR_MAIN_2, 0x20, 0, HEAP_ID_14);
        BgClearTilemapBufferAndCommit(a0->bgConfig, GF_BG_LYR_MAIN_2);
    }
    {
        BgTemplate template = ov41_0224C034;

        InitBgFromTemplate(a0->bgConfig, GF_BG_LYR_MAIN_3, &template, GF_BG_TYPE_TEXT);
        BG_ClearCharDataRange(GF_BG_LYR_MAIN_3, 0x20, 0, HEAP_ID_14);
        BgClearTilemapBufferAndCommit(a0->bgConfig, GF_BG_LYR_MAIN_3);
    }
    {
        BgTemplate template = ov41_0224BFC4;

        InitBgFromTemplate(a0->bgConfig, GF_BG_LYR_SUB_0, &template, GF_BG_TYPE_TEXT);
        BG_ClearCharDataRange(GF_BG_LYR_SUB_0, 0x20, 0, HEAP_ID_14);
        BgClearTilemapBufferAndCommit(a0->bgConfig, GF_BG_LYR_SUB_0);
    }
    {
        BgTemplate template = ov41_0224C050;

        InitBgFromTemplate(a0->bgConfig, GF_BG_LYR_SUB_1, &template, GF_BG_TYPE_TEXT);
        BG_ClearCharDataRange(GF_BG_LYR_SUB_1, 0x20, 0, HEAP_ID_14);
        BgClearTilemapBufferAndCommit(a0->bgConfig, GF_BG_LYR_SUB_1);
    }
}
