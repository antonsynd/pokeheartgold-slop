#include "global.h"

typedef struct UnkContext_ov08_02223A3C {
    u8 pad_00[0xc];
    s32 heapID;
} UnkContext_ov08_02223A3C;

typedef struct UnkStruct_ov08_02223A3C {
    UnkContext_ov08_02223A3C *context;
    u8 pad_04[0x28];
    u8 *windows;
    /* 0x30..0x3c unknown */
    u8 pad_30[0xc];
    u16 items[0x20][2]; /* placeholder for layout; indexed through raw offsets below */
} UnkStruct_ov08_02223A3C;

extern void *String_New(u32 size, s32 heapID);
extern void String_Delete(void *string);
extern void GetItemDescIntoString(void *string, u16 item, u16 heapID);
extern u8 AddTextPrinterParameterizedWithColor(void *window, u8 fontId, void *string, u32 x, u32 y, u32 speed, u32 color, void *callback);
extern void ScheduleWindowCopyToVram(void *window);

void ov08_02223A3C(UnkStruct_ov08_02223A3C *a, u32 slot) {
    u8 *base = (u8 *)a;
    u8 *window = a->windows + 0x20;
    void *string = String_New(0x82, a->context->heapID);
    u16 item = *(u16 *)(base + base[0x114d] * 0x90 + slot * 4 + 0x3c);
    /* the asm loads the whole word and narrows it afterwards (matters for unaligned context) */
    u32 heapWord = a->context->heapID;
    GetItemDescIntoString(string, item, (u16)heapWord);
    AddTextPrinterParameterizedWithColor(window, 0, string, 4, 0, 0xff, 0x10200, NULL);
    String_Delete(string);
    ScheduleWindowCopyToVram(window);
}
