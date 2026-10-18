#include "global.h"

#include "bg_window.h"
#include "font.h"
#include "gf_gfx_loader.h"
#include "gf_gfx_planes.h"
#include "options.h"
#include "render_window.h"
#include "system.h"

typedef struct Ov47_02258AA0 {
    BgConfig *bgConfig;
} Ov47_02258AA0;

extern const GraphicsModes ov47_02259E48;
extern const u32 ov47_02259E68[4];
extern const BgTemplate ov47_02259F18[4];

void ov47_02258AA0(Ov47_02258AA0 *a0, Options *options, enum HeapID heapId) {
    int i;

    SetBothScreensModesAndDisable(&ov47_02259E48);
    a0->bgConfig = BgConfig_Alloc(heapId);
    gSystem.screensFlipped = FALSE;
    GfGfx_SwapDisplay();
    for (i = 0; i < 4; i++) {
        InitBgFromTemplate(a0->bgConfig, ov47_02259E68[i], &ov47_02259F18[i], GF_BG_TYPE_TEXT);
        BG_ClearCharDataRange(ov47_02259E68[i], 0x20, 0, heapId);
        BgClearTilemapBufferAndCommit(a0->bgConfig, ov47_02259E68[i]);
    }
    LoadFontPal1(GF_PAL_LOCATION_MAIN_BG, GF_PAL_SLOT_4_OFFSET, heapId);
    LoadUserFrameGfx2(a0->bgConfig, GF_BG_LYR_MAIN_1, 1, 5, Options_GetFrame(options), heapId);
    LoadUserFrameGfx1(a0->bgConfig, GF_BG_LYR_MAIN_1, 1 + (18 + 12), 6, 0, heapId);
    GfGfxLoader_LoadCharData(NARC_a_1_9_6, 2, a0->bgConfig, GF_BG_LYR_SUB_0, 0, 0, FALSE, heapId);
    GfGfxLoader_LoadScrnData(NARC_a_1_9_6, 6, a0->bgConfig, GF_BG_LYR_SUB_0, 0, 0, FALSE, heapId);
    GfGfxLoader_GXLoadPal(NARC_a_1_9_6, 0, GF_PAL_LOCATION_SUB_BG, GF_PAL_SLOT_0_OFFSET, 0, heapId);
}
