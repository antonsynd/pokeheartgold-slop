#include "global.h"

#include "bg_window.h"

typedef struct Ov99BgTemplates {
    BgTemplate templates[7];
} Ov99BgTemplates;

typedef struct Ov99_021E7D30 {
    BgConfig *bgConfig;
    u8 filler_04[8];
    enum HeapID heapID;
} Ov99_021E7D30;

extern const GraphicsModes ov99_021E9F80;
extern const Ov99BgTemplates ov99_021EA0BC;
extern const u8 ov99_021EA348[];

void ov99_021E7D30(Ov99_021E7D30 *a0) {
    int i;

    a0->bgConfig = BgConfig_Alloc(a0->heapID);
    {
        GraphicsModes modes = ov99_021E9F80;

        SetBothScreensModesAndDisable(&modes);
    }
    {
        Ov99BgTemplates templates = ov99_021EA0BC;

        for (i = 0; i < 7; i++) {
            InitBgFromTemplate(a0->bgConfig, ov99_021EA348[i], &templates.templates[i], GF_BG_TYPE_TEXT);
            BgClearTilemapBufferAndCommit(a0->bgConfig, ov99_021EA348[i]);
            BG_ClearCharDataRange(ov99_021EA348[i], 0x20, 0, a0->heapID);
        }
    }
}
