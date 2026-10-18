#include "global.h"

#include "files/msgdata/msg.naix"

#include "bg_window.h"
#include "field_system.h"
#include "font.h"
#include "message_format.h"
#include "msgdata.h"
#include "player_data.h"
#include "save_pokegear.h"
#include "text.h"

void ov01_021EEE44(FieldSystem *fieldSystem, Window *window) {
    MsgData *msgData;
    MessageFormat *msgFormat;
    String *string;
    String *template;
    u32 x;

    FillWindowPixelRect(window, 15, 0, 128, 128, 16);
    FillWindowPixelRect(window, 15, 0, 384, 128, 16);
    msgData = NewMsgDataFromNarc(MSGDATA_LOAD_DIRECT, NARC_msgdata_msg, msg_0191, HEAP_ID_FIELD1);
    msgFormat = MessageFormat_New(HEAP_ID_FIELD1);
    string = String_New(16, HEAP_ID_FIELD1);
    template = NewString_ReadMsgData(msgData, 332);
    BufferIntegerAsString(msgFormat, 0, PhoneCallPersistentState_MomSavings_BalanceAction(SaveData_GetPhoneCallPersistentState(fieldSystem->saveData), 0, 0), 6, PRINTING_MODE_LEFT_ALIGN, TRUE);
    StringExpandPlaceholders(msgFormat, string, template);
    x = 128 - FontID_String_GetWidth(FONT_SYSTEM, string, 0);
    AddTextPrinterParameterized(window, FONT_SYSTEM, string, x, 16, TEXT_SPEED_NOTRANSFER, NULL);
    BufferIntegerAsString(msgFormat, 0, PlayerProfile_GetMoney(Save_PlayerData_GetProfile(fieldSystem->saveData)), 6, PRINTING_MODE_LEFT_ALIGN, TRUE);
    StringExpandPlaceholders(msgFormat, string, template);
    x = 128 - FontID_String_GetWidth(FONT_SYSTEM, string, 0);
    AddTextPrinterParameterized(window, FONT_SYSTEM, string, x, 48, TEXT_SPEED_NOTRANSFER, NULL);
    String_Delete(template);
    String_Delete(string);
    MessageFormat_Delete(msgFormat);
    DestroyMsgData(msgData);
    ScheduleWindowCopyToVram(window);
}
