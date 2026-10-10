#include "global.h"

typedef struct {
    u32 words[4];
} UnkWindow_ov102_021EB77C;

extern void *NewMsgDataFromNarc(u32 type, u32 narc, s32 fileId, u32 heapID);
extern void DestroyMsgData(void *msgData);
extern void *NewString_ReadMsgData(void *msgData, s32 strno);
extern BOOL sub_02091C38(void *a0, int a1);
extern void GF_AssertFail(void);
extern void AddWindowParameterized(void *bgConfig, void *window, u8 bgId, u8 x, u8 y, u8 width, u8 height, u8 paletteNum, u16 baseTile);
extern void FillWindowPixelBuffer(void *window, u8 fillValue);
extern u32 FontID_String_GetWidth(u32 fontId, void *string, u32 letterSpacing);
extern u8 AddTextPrinterParameterizedWithColor(void *window, u32 fontId, void *string, u32 x, u32 y, u32 textSpeed, u32 color, void *callback);
extern void PutWindowTilemap(void *window);
extern void CopyWindowPixelsToVram_TextMode(void *window);
extern void String_Delete(void *string);
extern void RemoveWindow(void *window);

u32 ov102_021EB77C(u8 *ctx, void *bgConfig, u32 baseTile) {
    void *loader = NewMsgDataFromNarc(1, 0x1b, 0x11a, 0x23);
    int left = 1;
    int top = 9;
    int i;

    for (i = 0; i < 12; i++) {
        void *string;
        u32 color;
        UnkWindow_ov102_021EB77C window;
        u32 x;

        if (i != 0 && i % 3 == 0) {
            left = 1;
            top += 3;
        }
        if (sub_02091C38(*(void **)(ctx + 8), i)) {
            string = NewString_ReadMsgData(loader, i);
            color = 0x1020f;
        } else {
            string = NewString_ReadMsgData(loader, 0xc);
            color = 0x3040f;
        }
        if (baseTile >= 0x3ee) {
            GF_AssertFail();
        }
        AddWindowParameterized(bgConfig, &window, 1, left, top, 9, 2, 0xb, baseTile);
        FillWindowPixelBuffer(&window, 0xf);
        x = (0x48 - FontID_String_GetWidth(0, string, 0)) / 2;
        AddTextPrinterParameterizedWithColor(&window, 0, string, x, 0, 0xff, color, NULL);
        PutWindowTilemap(&window);
        CopyWindowPixelsToVram_TextMode(&window);
        String_Delete(string);
        RemoveWindow(&window);
        baseTile += 0x12;
        left += 10;
    }
    DestroyMsgData(loader);
    return baseTile;
}
