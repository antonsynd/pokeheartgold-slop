#include "global.h"

#include "bg_window.h"
#include "font.h"
#include "gf_gfx_loader.h"
#include "message_format.h"
#include "msgdata.h"
#include "pm_string.h"
#include "text.h"

typedef struct UnkStruct_ov43_0222CE48_A {
    Window unk_00;
    Window unk_10;
    Window unk_20;
    void *unk_30;
    NNSG2dScreenData *unk_34;
} UnkStruct_ov43_0222CE48_A;

typedef struct UnkStruct_ov43_0222CE48_B {
    u8 padding_00[4];
    void *saveData;
} UnkStruct_ov43_0222CE48_B;

typedef struct UnkStruct_ov43_0222CE48_C {
    BgConfig *unk_00;
    u8 padding_04[0x4C];
    MessageFormat *unk_50;
    MsgData *unk_54;
    NARC *unk_58;
} UnkStruct_ov43_0222CE48_C;

extern void *sub_0202C6F4(void *saveData);
extern void *sub_0202C08C(void *a);
extern unsigned long long DWC_CreateFriendKey(void *a);
extern void ov43_0222AAA4(void *a, u32 lo, u32 hi);

void ov43_0222CE48(UnkStruct_ov43_0222CE48_A *param0, UnkStruct_ov43_0222CE48_B *param1, UnkStruct_ov43_0222CE48_C *param2, enum HeapID heapID) {
    String *string;
    String *fmtString;
    unsigned long long friendKey;
    u32 width;

    InitWindow(&param0->unk_00);
    AddWindowParameterized(param2->unk_00, &param0->unk_00, 3, 4, 0xb, 0x18, 8, 0xb, 1);

    InitWindow(&param0->unk_10);
    AddWindowParameterized(param2->unk_00, &param0->unk_10, 3, 9, 6, 0xe, 2, 0xb, 0xc1);

    InitWindow(&param0->unk_20);
    AddWindowParameterized(param2->unk_00, &param0->unk_20, 3, 0x15, 0x15, 9, 2, 0xb, 0xdd);

    FillWindowPixelBuffer(&param0->unk_00, 0);
    FillWindowPixelBuffer(&param0->unk_10, 0);
    FillWindowPixelBuffer(&param0->unk_20, 0);

    string = String_New(0x80, heapID);
    fmtString = String_New(0x80, heapID);

    friendKey = DWC_CreateFriendKey(sub_0202C08C(sub_0202C6F4(param1->saveData)));
    if (friendKey != 0) {
        ReadMsgDataIntoString(param2->unk_54, 0x35, string);
        width = FontID_String_GetWidthMultiline(0, string, 0);
        AddTextPrinterParameterizedWithColor(&param0->unk_00, 0, string, (0xc0 - width) >> 1, 0, 0xff, 0x10200, NULL);

        ov43_0222AAA4(param2, (u32)friendKey, (u32)(friendKey >> 32));
        ReadMsgDataIntoString(param2->unk_54, 0x34, fmtString);
        StringExpandPlaceholders(param2->unk_50, string, fmtString);
        AddTextPrinterParameterizedWithColor(&param0->unk_10, 0, string, 0, 0, 0xff, 0xF0200, NULL);
    } else {
        ReadMsgDataIntoString(param2->unk_54, 0x36, string);
        width = FontID_String_GetWidthMultiline(0, string, 0);
        AddTextPrinterParameterizedWithColor(&param0->unk_00, 0, string, (0xc0 - width) >> 1, 0, 0xff, 0x10200, NULL);
    }

    ReadMsgDataIntoString(param2->unk_54, 0x33, string);
    AddTextPrinterParameterizedWithColor(&param0->unk_20, 4, string, 0, 0, 0xff, 0x10F00, NULL);

    String_Delete(string);
    String_Delete(fmtString);

    param0->unk_30 = GfGfxLoader_GetScrnDataFromOpenNarc(param2->unk_58, 0xe, 1, &param0->unk_34, heapID);
}
