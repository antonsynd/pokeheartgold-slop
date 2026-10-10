#include "global.h"

extern void ClearWindowTilemapAndScheduleTransfer(void *window);
extern void ov83_0224755C(void *p, u32 x);
extern void ov83_02247568(void *p, u32 x, u32 y);
extern void *GfGfxLoader_GetScrnDataFromOpenNarc(void *narc, u32 fileId, u32 compressed, void **out, u32 heapId);
extern void LoadRectToBgTilemapRect(void *bgConfig, u32 bgId, void *src, u32 x, u32 y, u32 w, u32 h);
extern void ScheduleBgTilemapBufferTransfer(void *bgConfig, u32 bgId);
extern void Heap_Free(void *ptr);
extern void FillWindowPixelBuffer(void *window, u32 fillValue);
extern void AddTextPrinterParameterizedWithColor(void *window, u32 fontId, void *msg, u32 x, u32 y, u32 speed, u32 color, void *callback);
extern u32 ov83_02240EC4(void *app, u16 x, u8 y);
extern void ov83_02240C48(void *app, u32 a, u32 b, u32 c, u32 d);
extern void ov83_02241DD8(void *app, void *window, void *x, u32 a, u32 b, u32 c, u32 d, u32 e, u32 f);
extern void ScheduleWindowCopyToVram(void *window);

void ov83_022428A8(u8 *app, u32 selected) {
    u32 i;
    void *scrn;
    void *out;
    int idx;
    u32 w;
    u8 *entries;

    for (i = 0; i < 6; i++) {
        ClearWindowTilemapAndScheduleTransfer(app + 0x50 + (i + 0x30) * 16);
        if (i == selected) {
            ov83_02247568(*(void **)(app + i * 4 + 0x784), 0x44, 0x4c);
        } else {
            ov83_0224755C(*(void **)(app + i * 4 + 0x784), 0);
        }
    }
    ov83_0224755C(*(void **)(app + 0x77c), 0);

    scrn = GfGfxLoader_GetScrnDataFromOpenNarc(*(void **)(app + 0x7a8), 0x27, 1, &out, 0x6b);
    LoadRectToBgTilemapRect(*(void **)(app + 0x4c), 2, (u8 *)out + 0xc, 0, 0, 0x20, 0x18);
    ScheduleBgTilemapBufferTransfer(*(void **)(app + 0x4c), 2);
    Heap_Free(scrn);

    FillWindowPixelBuffer(app + 0x3b0, 0);
    FillWindowPixelBuffer(app + 0x3c0, 0);

    idx = (*(s16 *)(app + 0x862) * 6 + selected) * 8;
    AddTextPrinterParameterizedWithColor(app + 0x3b0, 0, *(void **)(*(u8 **)(app + 0x4dc) + idx), 0, 0, 0xff, 0x10200, 0);

    entries = *(u8 **)(app + 0x4dc);
    w = *(u32 *)(entries + idx + 4);
    ov83_02240C48(app, 0, ov83_02240EC4(app, (u16)w, app[0x13]), 2, 0);
    ov83_02241DD8(app, app + 0x3c0, *(void **)(app + 0x20), 0x68, 0, 0, 0, 0x10200, 0);
    ScheduleWindowCopyToVram(app + 0x3b0);
    ScheduleWindowCopyToVram(app + 0x3c0);
}
