#include "global.h"
#include "bg_window.h"
#include "message_format.h"
#include "msgdata.h"
#include "player_data.h"
#include "pm_string.h"
#include "text.h"
#include "unk_02034354.h"

extern int ov74_0222E85C(int *orderNumbers);

int ov74_0222E8B4(u8 *work, Window *window) {
    int numConnected = 0;
    int numChanged = 0;
    int i;
    MessageFormat *messageFormat;
    MsgData *msgData;
    int orderNumbers[4];
    int netIds[4];
    int yOffset;
    String *string;

    for (i = 1; i < 5; i++) {
        PlayerProfile *profile = sub_02034818(i);
        PlayerProfile **conn = (PlayerProfile **)(work + 0x2c08 + 4 * i);
        int *order = (int *)(work + 0x2c1c + 4 * i);

        if (profile == NULL) {
            if (*conn != NULL) {
                numChanged++;
            }
            *conn = NULL;
            *order = 0x3fff0001;
        } else if (*conn != profile) {
            numChanged++;
            *conn = profile;
            *order = (*(int *)(work + 0x2c3c))++;
            numConnected++;
        } else {
            numConnected++;
        }
    }

    if (numChanged == 0) {
        return numConnected;
    }

    orderNumbers[0] = *(int *)(work + 0x2c20);
    orderNumbers[1] = *(int *)(work + 0x2c24);
    orderNumbers[2] = *(int *)(work + 0x2c28);
    orderNumbers[3] = *(int *)(work + 0x2c2c);
    netIds[0] = ov74_0222E85C(orderNumbers);
    netIds[1] = ov74_0222E85C(orderNumbers);
    netIds[2] = ov74_0222E85C(orderNumbers);
    netIds[3] = ov74_0222E85C(orderNumbers);

    messageFormat = MessageFormat_New(0x55);
    msgData = NewMsgDataFromNarc(1, 0x1b, 0xf7, 0x55);
    yOffset = 0;
    FillWindowPixelBuffer(window, 0);

    for (i = 0; i < numConnected; i++) {
        PlayerProfile *profile = sub_02034818(netIds[i]);

        if (profile != NULL) {
            BufferPlayersName(messageFormat, 0, profile);
            string = ReadMsgData_ExpandPlaceholders(messageFormat, msgData, 0x36, 0x55);
            if (PlayerProfile_GetTrainerGender(profile) == 0) {
                AddTextPrinterParameterizedWithColor(window, 0, string, 0, yOffset, 0xff, MAKE_TEXT_COLOR(5, 6, 0), NULL);
            } else {
                AddTextPrinterParameterizedWithColor(window, 0, string, 0, yOffset, 0xff, MAKE_TEXT_COLOR(3, 4, 0), NULL);
            }
            String_Delete(string);
            BufferIntegerAsString(messageFormat, 0, PlayerProfile_GetTrainerID(profile) & 0xffff, 5, 2, 1);
            string = ReadMsgData_ExpandPlaceholders(messageFormat, msgData, 0x37, 0x55);
            AddTextPrinterParameterizedWithColor(window, 0, string, 0x50, yOffset, 0xff, MAKE_TEXT_COLOR(14, 15, 0), NULL);
            String_Delete(string);
            yOffset += 0x18;
        }
    }

    if (numConnected != 0) {
        CopyWindowToVram(window);
    }
    DestroyMsgData(msgData);
    MessageFormat_Delete(messageFormat);
    return numConnected;
}
