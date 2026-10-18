#include "global.h"

#include "constants/items.h"

#include "bag.h"
#include "bg_window.h"
#include "message_format.h"
#include "msgdata.h"
#include "save.h"
#include "unk_0202C034.h"
#include "unk_02034354.h"
#include "unk_02035900.h"
#include "unk_020379A0.h"
#include "unk_02037C94.h"

typedef struct TradeRoom TradeRoom;
typedef int (*TradeRoomFunc)(TradeRoom *tradeRoom);

struct TradeRoom {
    u8 filler_0000[4];
    SaveData *saveData;
    u8 filler_0008[0x17C];
    MessageFormat *strTemplate;
    u8 filler_0188[8];
    MsgData *msgLoader;
    u8 filler_0194[0x420];
    Window window;
    u8 filler_05C4[0x1C5C];
    TradeRoomFunc subStepCallback;
    u8 filler_2224[0x13D4];
    int pendingRegistrationFlags[32];
    int registrationTargetNetId;
    u8 filler_367C[4];
    MessageFormat *palPadStrTemplate;
    MsgData *palPadMsgLoader;
};

BOOL sub_0202C2DC(WiFiList *wifiList, int index);
void ov65_0221FB90(Window *window, int msgId, int fontId, MsgData *msgData, MessageFormat *msgFormat);
void ov65_0221E330(TradeRoom *tradeRoom, int msgId);
int ov65_0221E72C(TradeRoom *tradeRoom);
int ov65_0221E684(TradeRoom *tradeRoom);

int ov65_0221E740(TradeRoom *tradeRoom) {
    tradeRoom->registrationTargetNetId = -1;
    for (int i = 0; i < sub_02037454(); i++) {
        if (tradeRoom->pendingRegistrationFlags[i] == 2) {
            tradeRoom->registrationTargetNetId = i;
            tradeRoom->pendingRegistrationFlags[i] = 0;
            break;
        }
    }
    if (tradeRoom->registrationTargetNetId == -1) {
        DestroyMsgData(tradeRoom->palPadMsgLoader);
        MessageFormat_Delete(tradeRoom->palPadStrTemplate);
        sub_02037AC0(19);
        ov65_0221FB90(&tradeRoom->window, 28, 1, tradeRoom->msgLoader, tradeRoom->strTemplate);
        tradeRoom->subStepCallback = ov65_0221E72C;
        return 0;
    }
    if (Bag_HasItem(Save_Bag_Get(tradeRoom->saveData), ITEM_PAL_PAD, 1, HEAP_ID_26) == TRUE) {
        PlayerProfile *profile = sub_02034818(tradeRoom->registrationTargetNetId);

        BufferPlayersName(tradeRoom->palPadStrTemplate, 0, profile);
        ov65_0221E330(tradeRoom, 62);
        tradeRoom->subStepCallback = ov65_0221E684;
        return 0;
    }
    WiFiList *wifiList = sub_0202C6F4(tradeRoom->saveData);

    for (int i = 0; i < 32; i++) {
        if (!sub_0202C2DC(wifiList, i)) {
            sub_0203A280(tradeRoom->saveData, tradeRoom->registrationTargetNetId, i, HEAP_ID_26, 0);
            break;
        }
    }
    tradeRoom->subStepCallback = ov65_0221E740;
    return 0;
}
