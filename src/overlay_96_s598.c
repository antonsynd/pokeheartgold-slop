#include "global.h"

#include "bg_window.h"

typedef struct Ov96BgTemplates {
    BgTemplate templates[6];
} Ov96BgTemplates;

extern const u8 ov96_0221C290[];
extern const u8 ov96_0221C298[];
extern const GraphicsModes ov96_0221C2B4;
extern const Ov96BgTemplates ov96_0221C338;

void ov96_021F7D30(BgConfig *bgConfig, enum HeapID heapID) {
    {
        GraphicsModes modes = ov96_0221C2B4;

        SetBothScreensModesAndDisable(&modes);
    }
    {
        Ov96BgTemplates templates = ov96_0221C338;
        int i;

        for (i = 0; i < 6; i++) {
            InitBgFromTemplate(bgConfig, ov96_0221C290[i], &templates.templates[i], ov96_0221C298[i]);
            BgClearTilemapBufferAndCommit(bgConfig, ov96_0221C290[i]);
            BG_ClearCharDataRange(ov96_0221C290[i], 0x40, 0, heapID);
        }
    }
}
