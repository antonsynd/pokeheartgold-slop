#include "global.h"

#include "font.h"
#include "heap.h"
#include "options.h"
#include "render_text.h"
#include "render_window.h"
#include "text.h"

void FieldMessage_LoadTextPalettes(int location, int a1);
void sub_0205B514(BgConfig *bgConfig, Window *window, int a2);
void sub_0205B564(Window *window, Options *options);
void sub_0205B5A8(Window *window);
u8 sub_0205B5B4(Window *window, String *string, Options *options, BOOL speedupFlag);
u32 sub_0205B5EC(Window *window, String *message, FontID fontId, u32 textFrame, u8 speedUpEnabled, u32 a4);
BOOL IsPrintFinished(u8 printerId);
void sub_0205B63C(BgConfig *bgConfig, Window *window, u32 a, u32 b);
void sub_0205B6A0(Window *window, u32 a, u32 b);

extern void sub_0200EC0C(BgConfig *bgConfig, u8 a1, u16 a2, u8 a3, u8 a4, u32 a5, enum HeapID heapID);
extern void DrawFrameAndWindow3(Window *window, BOOL dont_copy_to_vram, u16 baseTile, u8 palette_num, u8 a4);

void FieldMessage_LoadTextPalettes(int location, int a1) {
    if (a1 == 1) {
        ResetAllTextPrinters();
    }
    LoadFontPal0((enum GFPalLoadLocation)location, GF_PAL_SLOT_13_OFFSET, HEAP_ID_FIELD1);
    LoadFontPal1((enum GFPalLoadLocation)location, GF_PAL_SLOT_12_OFFSET, HEAP_ID_FIELD1);
}

void sub_0205B514(BgConfig *bgConfig, Window *window, int a2) {
    if (a2 == 3) {
        AddWindowParameterized(bgConfig, window, 3, 2, 0x13, 0x1b, 4, 0xc, 0x237);
    } else {
        AddWindowParameterized(bgConfig, window, 7, 2, 0x13, 0x1b, 4, 0xc, 0x65 << 2);
    }
}

void sub_0205B564(Window *window, Options *options) {
    u8 bgId = GetWindowBgId(window);
    u8 frame = Options_GetFrame(options);
    LoadUserFrameGfx2(window->bgConfig, (GFBgLayer)bgId, 0x3E2, 0xa, frame, HEAP_ID_FIELD1);
    sub_0205B5A8(window);
    DrawFrameAndWindow2(window, 0, 0x3E2, 0xa);
}

void sub_0205B5A8(Window *window) {
    FillWindowPixelBuffer(window, 0xf);
}

u8 sub_0205B5B4(Window *window, String *string, Options *options, BOOL speedupFlag) {
    TextFlags_SetCanABSpeedUpPrint(speedupFlag);
    TextFlags_SetAutoScrollParam(0);
    TextFlags_SetCanTouchSpeedUpPrint(0);
    return AddTextPrinterParameterized(window, 1, string, 0, 0, Options_GetTextFrameDelay(options), NULL);
}

u32 sub_0205B5EC(Window *window, String *message, FontID fontId, u32 textFrame, u8 speedUpEnabled, u32 a4) {
    TextFlags_SetCanABSpeedUpPrint(speedUpEnabled);
    TextFlags_SetAutoScrollParam(a4);
    TextFlags_SetCanTouchSpeedUpPrint(0);
    return AddTextPrinterParameterized(window, fontId, message, 0, 0, textFrame, NULL);
}

BOOL IsPrintFinished(u8 printerId) {
    u8 ret;
    if (TextPrinterCheckActive(printerId) == 0) {
        ret = TRUE;
    } else {
        ret = FALSE;
    }
    return ret;
}

void sub_0205B63C(BgConfig *bgConfig, Window *window, u32 a, u32 b) {
    int x;
    int width;
    if (a <= 1) {
        x = 9;
        width = 0x14;
    } else {
        x = 2;
        width = 0x1b;
    }
    if (b == 3) {
        AddWindowParameterized(bgConfig, window, 3, x, 0x13, width, 4, 9, 0x237);
    } else {
        AddWindowParameterized(bgConfig, window, 7, x, 0x13, width, 4, 9, 0x65 << 2);
    }
}

void sub_0205B6A0(Window *window, u32 a, u32 b) {
    u8 bgId = GetWindowBgId(window);
    sub_0200EC0C(window->bgConfig, bgId, 0x2A3, 9, a, b, HEAP_ID_FIELD1);
    FillWindowPixelBuffer(window, 0xf);
    DrawFrameAndWindow3(window, 0, 0x2A3, 9, a);
}
