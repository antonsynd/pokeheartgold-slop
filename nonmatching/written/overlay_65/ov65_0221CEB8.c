#include "global.h"
#include "bg_window.h"
#include "heap.h"

extern const GraphicsModes ov65_0221FD58;
extern const BgTemplate ov65_0221FDF0;
extern const BgTemplate ov65_0221FDB8;
extern const BgTemplate ov65_0221FE0C;
extern const BgTemplate ov65_0221FE28;
extern const BgTemplate ov65_0221FD80;
extern const BgTemplate ov65_0221FD9C;
extern const BgTemplate ov65_0221FDD4;

#define COPY_WORDS(dst, src, n)                          \
    do {                                                 \
        const u32 *s_ = (const u32 *)(src);              \
        u32 *d_ = (u32 *)(dst);                          \
        int k_;                                          \
        for (k_ = 0; k_ < (n); k_++) {                   \
            d_[k_] = s_[k_];                             \
        }                                                \
    } while (0)

void ov65_0221CEB8(BgConfig *bgConfig) {
    GraphicsModes modes;
    BgTemplate tmpl;
    int i;
    vu32 *dispcnt = (vu32 *)0x04000000;
    vu16 *winin = (vu16 *)0x04000048;
    vu16 *winout = (vu16 *)0x0400004A;
    vu16 *win0h = (vu16 *)0x04000040;
    vu16 *win0v = (vu16 *)0x04000044;
    vu16 *powcnt = (vu16 *)0x04000304;

    COPY_WORDS(&modes, &ov65_0221FD58, 4);
    SetBothScreensModesAndDisable(&modes);

    COPY_WORDS(&tmpl, &ov65_0221FDF0, 7);
    InitBgFromTemplate(bgConfig, 0, &tmpl, 0);
    BgClearTilemapBufferAndCommit(bgConfig, 0);

    COPY_WORDS(&tmpl, &ov65_0221FDB8, 7);
    InitBgFromTemplate(bgConfig, 1, &tmpl, 0);
    BgClearTilemapBufferAndCommit(bgConfig, 1);

    COPY_WORDS(&tmpl, &ov65_0221FE0C, 7);
    InitBgFromTemplate(bgConfig, 2, &tmpl, 0);
    BgClearTilemapBufferAndCommit(bgConfig, 2);

    COPY_WORDS(&tmpl, &ov65_0221FE28, 7);
    InitBgFromTemplate(bgConfig, 3, &tmpl, 0);

    COPY_WORDS(&tmpl, &ov65_0221FD80, 7);
    InitBgFromTemplate(bgConfig, 4, &tmpl, 0);
    BgClearTilemapBufferAndCommit(bgConfig, 4);

    COPY_WORDS(&tmpl, &ov65_0221FD9C, 7);
    InitBgFromTemplate(bgConfig, 5, &tmpl, 0);

    COPY_WORDS(&tmpl, &ov65_0221FDD4, 7);
    InitBgFromTemplate(bgConfig, 6, &tmpl, 0);

    BG_ClearCharDataRange(0, 0x20, 0, 0x1A);
    BG_ClearCharDataRange(1, 0x20, 0, 0x1A);
    BG_ClearCharDataRange(4, 0x20, 0, 0x1A);

    for (i = 0; i < 4; i++) {
        BgSetPosTextAndCommit(bgConfig, i, 0, 0);
        BgSetPosTextAndCommit(bgConfig, i, 3, 0);
        BgSetPosTextAndCommit(bgConfig, i + 4, 0, 0);
        BgSetPosTextAndCommit(bgConfig, i + 4, 3, 0);
    }

    ToggleBgLayer(0, 0);
    ToggleBgLayer(1, 0);
    ToggleBgLayer(2, 0);
    ToggleBgLayer(3, 0);
    ToggleBgLayer(4, 0);
    ToggleBgLayer(5, 0);
    ToggleBgLayer(6, 0);

    *dispcnt = *dispcnt & 0xFFFF1FFF;
    *winin = (*winin & ~0x3F) | 0x1F;
    *winout = (*winout & ~0x3F) | 0x1F | 0x20;
    *win0h = 0xF000;
    *win0v = 0x10;
    *powcnt = *powcnt & 0x7FFF;
}
