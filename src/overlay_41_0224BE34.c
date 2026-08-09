#include "msgdata/msg.naix"

#include "bg_window.h"
#include "fashion_case.h"
#include "filesystem.h"
#include "font.h"
#include "heap.h"
#include "message_format.h"
#include "msgdata.h"
#include "pm_string.h"
#include "sprite.h"
#include "text.h"

typedef struct UnkStruct_ov41_0224BE34 {
    SaveFashionDataSub *unk_000; // 000
    u8 padding_004[0x194];       // 004
    Sprite *unk_198;             // 198
    Window *unk_19C;             // 19C
} UnkStruct_ov41_0224BE34;

void sub_0202BE60(SaveFashionDataSub *fashionDataSub, String *dest);
u16 sub_0202BE98(SaveFashionDataSub *fashionDataSub);

void ov41_0224BE34(UnkStruct_ov41_0224BE34 *param0);
void ov41_0224BE5C(UnkStruct_ov41_0224BE34 *param0);

static void ov41_0224BE80(UnkStruct_ov41_0224BE34 *param0);

void ov41_0224BE34(UnkStruct_ov41_0224BE34 *param0) {
    ClearWindowTilemapAndCopyToVram(param0->unk_19C);
    RemoveWindow(param0->unk_19C);
    WindowArray_Delete(param0->unk_19C, 1);
}

void ov41_0224BE5C(UnkStruct_ov41_0224BE34 *param0) {
    FillWindowPixelBuffer(param0->unk_19C, 0);
    ov41_0224BE80(param0);
    CopyWindowToVram(param0->unk_19C);
}

static void ov41_0224BE80(UnkStruct_ov41_0224BE34 *param0) {
    MsgData *msgData;
    MessageFormat *messageFormat;
    String *name;
    String *expanded;
    String *msgStr;
    VecFx32 matrix;
    int width;

    msgData = NewMsgDataFromNarc(MSGDATA_LOAD_DIRECT, NARC_msgdata_msg, NARC_msg_msg_0215_bin, HEAP_ID_13);
    GF_ASSERT(msgData != NULL);
    messageFormat = MessageFormat_New(HEAP_ID_13);

    Sprite_SetAnimCtrlSeq(param0->unk_198, 5);
    matrix.x = FX32_CONST(48);
    matrix.y = FX32_CONST(144);
    matrix.z = 0;
    Sprite_SetMatrix(param0->unk_198, &matrix);

    name = String_New(12, HEAP_ID_13);
    sub_0202BE60(param0->unk_000, name);
    width = FontID_String_GetWidth(0, name, 0);
    AddTextPrinterParameterizedWithColor(param0->unk_19C, 0, name, 128 - width / 2, 7, 0, MAKE_TEXT_COLOR(1, 2, 0), NULL);
    String_Delete(name);

    BufferECWord(messageFormat, 0, sub_0202BE98(param0->unk_000));
    expanded = String_New(200, HEAP_ID_13);
    msgStr = NewString_ReadMsgData(msgData, 45);
    StringExpandPlaceholders(messageFormat, expanded, msgStr);
    width = FontID_String_GetWidth(0, expanded, 0);
    AddTextPrinterParameterizedWithColor(param0->unk_19C, 0, expanded, 128 - width / 2, 27, 0, MAKE_TEXT_COLOR(1, 2, 0), NULL);
    String_Delete(expanded);
    String_Delete(msgStr);
    DestroyMsgData(msgData);
    MessageFormat_Delete(messageFormat);
}
