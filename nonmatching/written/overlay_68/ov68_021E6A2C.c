#include "global.h"
#include "message_format.h"
#include "msgdata.h"
#include "pm_string.h"
#include "pokemon.h"

typedef struct UnkStruct_ov68_021E6A2C_Data {
    /* 0x00 */ Pokemon *mon;
    /* 0x04 */ PlayerProfile *trainerInfo;
    /* 0x08 */ u8 filler_08[0x11];
    /* 0x19 */ u8 isMoveTutor;
} UnkStruct_ov68_021E6A2C_Data;

typedef struct UnkStruct_ov68_021E6A2C {
    /* 0x000 */ UnkStruct_ov68_021E6A2C_Data *data;
    /* 0x004 */ u8 filler_004[0xF8 - 0x4];
    /* 0x0F8 */ MsgData *msgData;
    /* 0x0FC */ MessageFormat *msgFmt;
    /* 0x100 */ String *string;
} UnkStruct_ov68_021E6A2C;

extern const int ov68_021E7DA4[][11];

u16 ov68_021E6BEC(UnkStruct_ov68_021E6A2C *ctl);
u16 ov68_021E6BFC(UnkStruct_ov68_021E6A2C *ctl);

void ov68_021E6A2C(UnkStruct_ov68_021E6A2C *ctl, u32 str) {
    String *string;

    switch (str) {
    case 0:
        BufferBoxMonNickname(ctl->msgFmt, 0, Mon_GetBoxMon(ctl->data->mon));
        break;
    case 1:
        BufferMoveName(ctl->msgFmt, 1, ov68_021E6BEC(ctl));
        break;
    case 2:
        BufferBoxMonNickname(ctl->msgFmt, 0, Mon_GetBoxMon(ctl->data->mon));
        break;
    case 3:
        BufferBoxMonNickname(ctl->msgFmt, 0, Mon_GetBoxMon(ctl->data->mon));
        BufferMoveName(ctl->msgFmt, 1, ov68_021E6BEC(ctl));
        break;
    case 4:
        BufferBoxMonNickname(ctl->msgFmt, 0, Mon_GetBoxMon(ctl->data->mon));
        BufferMoveName(ctl->msgFmt, 1, ov68_021E6BEC(ctl));
        break;
    case 5:
        BufferBoxMonNickname(ctl->msgFmt, 0, Mon_GetBoxMon(ctl->data->mon));
        BufferMoveName(ctl->msgFmt, 1, ov68_021E6BFC(ctl));
        break;
    case 6:
        BufferBoxMonNickname(ctl->msgFmt, 0, Mon_GetBoxMon(ctl->data->mon));
        BufferMoveName(ctl->msgFmt, 1, ov68_021E6BEC(ctl));
        break;
    case 7:
        BufferMoveName(ctl->msgFmt, 1, ov68_021E6BEC(ctl));
        break;
    case 8:
        BufferBoxMonNickname(ctl->msgFmt, 0, Mon_GetBoxMon(ctl->data->mon));
        BufferMoveName(ctl->msgFmt, 1, ov68_021E6BEC(ctl));
        break;
    case 9:
        BufferPlayersName(ctl->msgFmt, 2, ctl->data->trainerInfo);
        break;
    case 10:
        BufferMoveName(ctl->msgFmt, 0, ov68_021E6BFC(ctl));
        break;
    }
    string = NewString_ReadMsgData(ctl->msgData, ov68_021E7DA4[ctl->data->isMoveTutor][str]);
    StringExpandPlaceholders(ctl->msgFmt, ctl->string, string);
    String_Delete(string);
}
