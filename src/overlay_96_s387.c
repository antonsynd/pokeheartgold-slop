#include "global.h"

#include "bg_window.h"
#include "gf_gfx_planes.h"

extern const GraphicsModes ov96_0221B9BC;
extern const BgTemplate ov96_0221B9CC;

void ov96_021EEF0C(BgConfig *bgConfig, enum HeapID heapID) {
    {
        GraphicsModes modes = ov96_0221B9BC;

        SetBothScreensModesAndDisable(&modes);
    }
    {
        BgTemplate template = ov96_0221B9CC;

        InitBgFromTemplate(bgConfig, GF_BG_LYR_MAIN_0, &template, GF_BG_TYPE_TEXT);
        BgClearTilemapBufferAndCommit(bgConfig, GF_BG_LYR_MAIN_0);
        BG_ClearCharDataRange(GF_BG_LYR_MAIN_0, 0x40, 0, heapID);
    }
    GfGfx_EngineATogglePlanes(GX_PLANEMASK_BG3, GF_PLANE_TOGGLE_OFF);
    GfGfx_EngineATogglePlanes(GX_PLANEMASK_BG2, GF_PLANE_TOGGLE_OFF);
    GfGfx_EngineATogglePlanes(GX_PLANEMASK_BG1, GF_PLANE_TOGGLE_OFF);
    GfGfx_EngineATogglePlanes(GX_PLANEMASK_BG0, GF_PLANE_TOGGLE_ON);
    BG_SetMaskColor(GF_BG_LYR_MAIN_0, 0);
    BG_SetMaskColor(GF_BG_LYR_SUB_0, 0);
}
