#include "global.h"

#include "bg_window.h"
#include "message_format.h"
#include "msgdata.h"
#include "player_data.h"
#include "text.h"
#include "unk_02035900.h"

typedef struct Ov85Member {
    PlayerProfile *profile;
    int unk4;
} Ov85Member;

typedef struct Ov85App {
    u8 filler_000[0x34];
    MessageFormat *msgFormat;
    MsgData *msgData;
    String *names[5];
    u8 filler_050[0x324];
    Ov85Member members[5];
} Ov85App;

BOOL ov85_021EA010(Ov85App *app);

BOOL ov85_021E9EC0(Window *window, int unused, u32 color, Ov85App *app) {
    int i;
    int myId;

    myId = sub_0203769C();
    if (!ov85_021EA010(app)) {
        return FALSE;
    }
    FillWindowPixelBuffer(window, 0);
    for (i = 0; i < 5; i++) {
        if (app->members[i].profile != NULL) {
            u32 trainerId = PlayerProfile_GetTrainerID_VisibleHalf(app->members[i].profile);
            String *idString;

            PlayerName_FlatToString(app->members[i].profile, app->names[i]);
            BufferIntegerAsString(app->msgFormat, 0, trainerId, 5, PRINTING_MODE_LEADING_ZEROS, TRUE);
            idString = ReadMsgData_ExpandPlaceholders(app->msgFormat, app->msgData, 1, HEAP_ID_102);
            if (myId == i) {
                AddTextPrinterParameterizedWithColor(window, FONT_SYSTEM, app->names[i], 5, i * 18 + 1, TEXT_SPEED_NOTRANSFER, MAKE_TEXT_COLOR(2, 3, 0), NULL);
                AddTextPrinterParameterizedWithColor(window, FONT_SYSTEM, idString, 70, i * 18 + 1, TEXT_SPEED_NOTRANSFER, MAKE_TEXT_COLOR(2, 3, 0), NULL);
            } else {
                AddTextPrinterParameterizedWithColor(window, FONT_SYSTEM, app->names[i], 5, i * 18 + 1, TEXT_SPEED_NOTRANSFER, color, NULL);
                AddTextPrinterParameterizedWithColor(window, FONT_SYSTEM, idString, 70, i * 18 + 1, TEXT_SPEED_NOTRANSFER, color, NULL);
            }
            String_Delete(idString);
        }
    }
    CopyWindowToVram(window);
    return TRUE;
}
