#include "global.h"

#include "bg_window.h"

extern const BgTemplate ov28_0225EAC0;
extern const BgTemplate ov28_0225EADC;
extern const BgTemplate ov28_0225EAF8;

void ov28_0225D650(BgConfig *bgConfig) {
    GXS_SetGraphicsMode(GX_BGMODE_0);
    {
        BgTemplate template = ov28_0225EAC0;

        InitBgFromTemplate(bgConfig, GF_BG_LYR_SUB_0, &template, GF_BG_TYPE_TEXT);
        BG_ClearCharDataRange(GF_BG_LYR_SUB_0, 0x20, 0, HEAP_ID_8);
        BgClearTilemapBufferAndCommit(bgConfig, GF_BG_LYR_SUB_0);
    }
    {
        BgTemplate template = ov28_0225EADC;

        InitBgFromTemplate(bgConfig, GF_BG_LYR_SUB_1, &template, GF_BG_TYPE_TEXT);
    }
    {
        BgTemplate template = ov28_0225EAF8;

        InitBgFromTemplate(bgConfig, GF_BG_LYR_SUB_2, &template, GF_BG_TYPE_TEXT);
    }
}
