#include "global.h"

#include "bg_window.h"

typedef struct Ov112BgTemplates {
    BgTemplate templates[5];
} Ov112BgTemplates;

typedef struct Ov112_021F179C {
    u8 filler_00[4];
    enum HeapID heapID;
    u8 filler_08[0xC];
    BgConfig *bgConfig;
} Ov112_021F179C;

extern const GraphicsModes ov112_021FF2F4;
extern const Ov112BgTemplates ov112_021FF434;
extern const u8 ov112_021FF4C0[];

void ov112_021F179C(Ov112_021F179C *a0) {
    int i;

    a0->bgConfig = BgConfig_Alloc(a0->heapID);
    {
        GraphicsModes modes = ov112_021FF2F4;

        SetBothScreensModesAndDisable(&modes);
    }
    {
        Ov112BgTemplates templates = ov112_021FF434;

        for (i = 0; i < 5; i++) {
            InitBgFromTemplate(a0->bgConfig, ov112_021FF4C0[i], &templates.templates[i], GF_BG_TYPE_TEXT);
            BgClearTilemapBufferAndCommit(a0->bgConfig, ov112_021FF4C0[i]);
            BG_FillCharDataRange(a0->bgConfig, ov112_021FF4C0[i], 0, 1, 0);
        }
    }
}
