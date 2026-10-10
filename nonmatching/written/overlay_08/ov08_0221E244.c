#include "global.h"

typedef struct UnkWindow_ov08_0221E244 {
    u8 data[16];
} UnkWindow_ov08_0221E244;

typedef struct UnkContext_ov08_0221E244 {
    u8 pad_00[0xc];
    s32 heapID;
} UnkContext_ov08_0221E244;

typedef struct UnkStruct_ov08_0221E244 {
    UnkContext_ov08_0221E244 *context;
    u8 pad_004[0x1fa4];
    void *messageLoader;
    void *stringTemplate;
    u8 pad_1FB0[0xc0];
    UnkWindow_ov08_0221E244 *windows;
} UnkStruct_ov08_0221E244;

void *String_New(int size, int heapID);
void *NewString_ReadMsgData(void *msgData, int msgId);
void BufferMoveName(void *template, int idx, int move);
void StringExpandPlaceholders(void *template, void *dst, void *src);
u8 GetWindowWidth(void *window);
u32 FontID_String_GetWidth(int font, void *str, int letterSpacing);
void AddTextPrinterParameterizedWithColor(void *window, int font, void *str, u32 x, u32 y, u32 speed, u32 color, void *callback);
void String_Delete(void *str);
void ScheduleWindowCopyToVram(void *window);

void ov08_0221E244(UnkStruct_ov08_0221E244 *ctx, u32 move, u32 windowIndex, u32 textID, u16 font, u16 yOffset, u32 color) {
    UnkWindow_ov08_0221E244 *window = &ctx->windows[windowIndex];
    void *formatted = String_New(16, ctx->context->heapID);
    void *string = NewString_ReadMsgData(ctx->messageLoader, textID);
    u32 xOffset;

    BufferMoveName(ctx->stringTemplate, 0, move);
    StringExpandPlaceholders(ctx->stringTemplate, formatted, string);

    if (font == 4) {
        xOffset = (GetWindowWidth(window) * 8 - FontID_String_GetWidth(font, formatted, 0)) / 2;
    } else {
        xOffset = 0;
    }

    AddTextPrinterParameterizedWithColor(window, font, formatted, xOffset, yOffset, 0xff, color, NULL);
    String_Delete(string);
    String_Delete(formatted);
    ScheduleWindowCopyToVram(window);
}
