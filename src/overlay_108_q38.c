#include "global.h"

#include "bg_window.h"
#include "gf_gfx_planes.h"

typedef struct Ov108BgTemplates {
    BgTemplate templates[8];
} Ov108BgTemplates;

typedef struct Ov108_021E6C68 {
    enum HeapID heapId;
    u8 filler_004[0x33C];
    BgConfig *bgConfig;
} Ov108_021E6C68;

extern const GraphicsModes ov108_021EA738;
extern const Ov108BgTemplates ov108_021EA898;

void ov108_021E6C48(Ov108_021E6C68 *a0);

void ov108_021E6C68(Ov108_021E6C68 *a0) {
    int i;
    int bg;

    ov108_021E6C48(a0);
    GX_SetDispSelect(GX_DISP_SELECT_SUB_MAIN);
    a0->bgConfig = BgConfig_Alloc(a0->heapId);
    {
        GraphicsModes modes = ov108_021EA738;

        SetBothScreensModesAndDisable(&modes);
    }
    {
        Ov108BgTemplates templates = ov108_021EA898;

        bg = 0;
        for (i = 0; i < 8; i++) {
            InitBgFromTemplate(a0->bgConfig, bg, &templates.templates[i], GF_BG_TYPE_TEXT);
            BgClearTilemapBufferAndCommit(a0->bgConfig, bg);
            BG_ClearCharDataRange(bg, 0x40, 0, a0->heapId);
            bg++;
        }
    }
    G2_SetBlendAlpha(GX_BLEND_PLANEMASK_BG1, GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ, 28, 4);
    G2S_SetBlendAlpha(GX_BLEND_PLANEMASK_BG0, GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ, 28, 4);
}
