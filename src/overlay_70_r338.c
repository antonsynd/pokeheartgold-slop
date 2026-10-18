#include "global.h"

#include "communication_error.h"
#include "heap.h"
#include "message_format.h"
#include "msgdata.h"
#include "pokemon.h"
#include "unk_0202DB34.h"
#include "unk_02037C94.h"

typedef struct Ov70PlayerData {
    UnkStruct_0202DB34 *globalTrade;
} Ov70PlayerData;

typedef struct Ov70_02240240 {
    Ov70PlayerData *playerData;
    u8 filler_0004[0x24];
    int depositReturnError;
    int currentScreenInstruction;
    u8 filler_0030[0x6];
    u16 isPokemonListed;
    u8 filler_0038[0x4];
    int commsErrorMessage;
    u8 filler_0040[0xFC];
    u8 receivedListing[0xA60];
    MessageFormat *msgFormat;
    MsgData *msgData;
    u8 filler_0BA4[0x658];
    int fadeBothScreens;
    u8 filler_1200[0x404];
    int networkTimeoutCounter;
} Ov70_02240240;

BOOL ov70_02237F38(Ov70_02240240 *a0);
int ov70_02237F58(void);
void ov70_022404D4(Ov70_02240240 *a0);
int ov70_02240D00(Ov70_02240240 *a0, void *listing);
void ov70_02238F80(Ov70_02240240 *a0);
void ov70_02244FA4(Ov70_02240240 *a0, MsgData *msgData, int msgId, int a3, u16 color);
void ov70_02238D84(Ov70_02240240 *a0, int a1, int a2);
void ov70_02240A7C(Ov70_02240240 *a0, Pokemon *mon, int a2, int a3);

int ov70_02240240(Ov70_02240240 *a0) {
    if (ov70_02237F38(a0)) {
        int error = ov70_02237F58();

        a0->networkTimeoutCounter = 0;
        switch (error) {
        case 0:
            a0->currentScreenInstruction = 26;
            break;
        case 1:
            a0->isPokemonListed = 1;
            switch (ov70_02240D00(a0, a0->receivedListing)) {
            case 1:
                ov70_02238F80(a0);
                ov70_02244FA4(a0, a0->msgData, 29, 1, 0xF0F);
                ov70_02238D84(a0, 37, 28);
                break;
            case 2:
                ov70_02238F80(a0);
                ov70_02244FA4(a0, a0->msgData, 35, 1, 0xF0F);
                ov70_02238D84(a0, 37, 28);
                break;
            case 0:
                a0->currentScreenInstruction = 18;
                a0->fadeBothScreens = TRUE;
                break;
            }
            break;
        case -3:
            a0->isPokemonListed = 0;
            if (sub_0202DB54(a0->playerData->globalTrade)) {
                Pokemon *mon = AllocMonZeroed(HEAP_ID_61);

                sub_0202DB64(a0->playerData->globalTrade, mon);
                BufferBoxMonNickname(a0->msgFormat, 0, Mon_GetBoxMon(mon));
                a0->depositReturnError = 2;
                a0->currentScreenInstruction = 34;
                ov70_02240A7C(a0, mon, sub_0202DBA0(a0->playerData->globalTrade), 0);
                sub_0202DB5C(a0->playerData->globalTrade, 0);
                Heap_Free(mon);
            } else {
                ov70_022404D4(a0);
            }
            break;
        case -4:
            a0->isPokemonListed = 0;
            if (sub_0202DB54(a0->playerData->globalTrade)) {
                Pokemon *mon = AllocMonZeroed(HEAP_ID_61);

                sub_0202DB64(a0->playerData->globalTrade, mon);
                BufferBoxMonNickname(a0->msgFormat, 0, Mon_GetBoxMon(mon));
                a0->depositReturnError = 3;
                a0->currentScreenInstruction = 34;
                sub_0202DB5C(a0->playerData->globalTrade, 0);
                Heap_Free(mon);
            }
            break;
        case -15:
        case -14:
        case -12:
        case -2:
            a0->commsErrorMessage = error;
            a0->currentScreenInstruction = 38;
            break;
        case -13:
            ShowCommunicationError(HEAP_ID_3, 1, 0);
            while (TRUE) { }
        }
    } else {
        a0->networkTimeoutCounter++;
        if (a0->networkTimeoutCounter == 3600) {
            sub_020399EC();
        }
    }
    return 3;
}
