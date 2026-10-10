#include "global.h"
#include "bg_window.h"

extern const GraphicsModes ov106_021E6F24;
extern const BgTemplate ov106_021E6F74;
extern const BgTemplate ov106_021E6F90;
extern const BgTemplate ov106_021E6FAC;

void ov106_021E6418(BgConfig **pBgConfig) {
    *pBgConfig = BgConfig_Alloc((enum HeapID)0x99);
    {
        GraphicsModes modes = ov106_021E6F24;
        SetBothScreensModesAndDisable(&modes);
    }
    {
        BgTemplate tmpl = ov106_021E6F74;
        InitBgFromTemplate(*pBgConfig, 0, &tmpl, 0);
        BgClearTilemapBufferAndCommit(*pBgConfig, 0);
        BG_ClearCharDataRange(0, 0x40, 0, (enum HeapID)0x99);
    }
    {
        BgTemplate tmpl = ov106_021E6F90;
        InitBgFromTemplate(*pBgConfig, 1, &tmpl, 0);
        BgClearTilemapBufferAndCommit(*pBgConfig, 1);
        BG_ClearCharDataRange(1, 0x40, 0, (enum HeapID)0x99);
    }
    {
        BgTemplate tmpl = ov106_021E6FAC;
        InitBgFromTemplate(*pBgConfig, 2, &tmpl, 0);
        BgClearTilemapBufferAndCommit(*pBgConfig, 2);
        BG_ClearCharDataRange(2, 0x40, 0, (enum HeapID)0x99);
    }
    BG_SetMaskColor(0, 0);
    BG_SetMaskColor(4, 0);
}
