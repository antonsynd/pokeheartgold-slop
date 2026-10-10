#include "global.h"

extern const u32 ov82_0223FE28[4];
extern const u32 ov82_0223FE38[7];
extern const u32 ov82_0223FE54[7];
extern const u32 ov82_0223FE70[7];
extern const u32 ov82_0223FE8C[7];
extern const u32 ov82_0223FEA8[7];

extern void SetBothScreensModesAndDisable(void *modes);
extern void InitBgFromTemplate(void *bgConfig, u32 bgId, void *tmpl, u32 mode);
extern void BG_ClearCharDataRange(u32 bgId, u32 size, u32 offset, u32 heapId);
extern void BgClearTilemapBufferAndCommit(void *bgConfig, u32 bgId);
extern void GfGfx_EngineATogglePlanes(u32 planes, u32 on);

static void CopyTemplate(u32 *dst, const u32 *src) {
    dst[0] = src[0];
    dst[1] = src[1];
    dst[2] = src[2];
    dst[3] = src[3];
    dst[4] = src[4];
    dst[5] = src[5];
    dst[6] = src[6];
}

void ov82_0223EC68(void *bgConfig) {
    u32 tmplBg4[7];
    u32 tmplBg5[7];
    u32 tmplBg3[7];
    u32 tmplBg1[7];
    u32 tmplBg0[7];
    u32 modes[4];
    u16 reg;

    modes[0] = ov82_0223FE28[0];
    modes[1] = ov82_0223FE28[1];
    modes[2] = ov82_0223FE28[2];
    modes[3] = ov82_0223FE28[3];
    SetBothScreensModesAndDisable(modes);

    CopyTemplate(tmplBg0, ov82_0223FE54);
    InitBgFromTemplate(bgConfig, 0, tmplBg0, 0);
    BG_ClearCharDataRange(0, 0x20, 0, 0x69);
    BgClearTilemapBufferAndCommit(bgConfig, 0);

    CopyTemplate(tmplBg1, ov82_0223FE70);
    InitBgFromTemplate(bgConfig, 1, tmplBg1, 0);
    BG_ClearCharDataRange(1, 0x20, 0, 0x69);
    BgClearTilemapBufferAndCommit(bgConfig, 1);

    CopyTemplate(tmplBg3, ov82_0223FE8C);
    InitBgFromTemplate(bgConfig, 3, tmplBg3, 0);
    BgClearTilemapBufferAndCommit(bgConfig, 3);

    CopyTemplate(tmplBg5, ov82_0223FEA8);
    InitBgFromTemplate(bgConfig, 5, tmplBg5, 0);
    BgClearTilemapBufferAndCommit(bgConfig, 5);

    CopyTemplate(tmplBg4, ov82_0223FE38);
    InitBgFromTemplate(bgConfig, 4, tmplBg4, 0);
    BgClearTilemapBufferAndCommit(bgConfig, 4);

    reg = *(volatile u16 *)0x04000008;
    *(volatile u16 *)0x04000008 = reg & ~3;
    GfGfx_EngineATogglePlanes(1, 1);
}
