#include "global.h"

#include "message_format.h"
#include "msgdata.h"
#include "pm_version.h"

typedef struct Ov45_0222E4A8 {
    u8 filler_00[4];
    u32 activity;
    u32 count;
    u8 filler_0C[4];
    String *names[4];
} Ov45_0222E4A8;

extern const u16 ov45_02254BCA[];
extern const u16 ov45_02254BD2[];

BOOL ov45_0222E5B4(u32 activity, u32 count);

BOOL ov45_0222E4A8(Ov45_0222E4A8 *a0, int a1, MessageFormat *msgFormat, MsgData *msgData, String *dest) {
    String *string;
    u32 i;

    if (!ov45_0222E5B4(a0->activity, a0->count)) {
        return FALSE;
    }
    BufferWiFiPlazaActivityName(msgFormat, 0, a0->activity);
    for (i = 0; i < a0->count; i++) {
        BufferString(msgFormat, i + 1, a0->names[i], 0, 1, gGameLanguage);
    }
    if (a0->activity <= 1) {
        string = NewString_ReadMsgData(msgData, ov45_02254BCA[a0->count]);
    } else {
        string = NewString_ReadMsgData(msgData, ov45_02254BD2[a0->count]);
    }
    StringExpandPlaceholders(msgFormat, dest, string);
    String_Delete(string);
    return TRUE;
}
