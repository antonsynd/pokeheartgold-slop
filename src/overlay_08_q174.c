#include "global.h"

#include "constants/items.h"
#include "constants/moves.h"

#include "battle/battle_system.h"

#include "filesystem_files_def.h"
#include "item.h"
#include "message_format.h"
#include "msgdata.h"
#include "party.h"
#include "player_data.h"
#include "pm_string.h"
#include "pokemon.h"
#include "pokemon_storage_system.h"

typedef struct BattleBagContext {
    BattleSystem *battleSys;
    PlayerProfile *trainerInfo;
    u8 filler_08[4];
    enum HeapID heapID;
    int battler;
    u8 filler_14[4];
    int embargoRemainingTurns;
    u16 selectedItem;
    u8 filler_1E[4];
    u8 hasTwoOpponents;
    u8 opponentHidden;
    u8 opponentSubstituted;
} BattleBagContext;

typedef struct BattleBag {
    BattleBagContext *context;
    u8 filler_0004[0xC];
    MsgData *msgData;
    MessageFormat *msgFormat;
    String *string;
    u8 filler_001C[0x112F];
    u8 queuedState;
    u8 filler_114C;
    u8 currentPocket;
} BattleBag;

int ov08_02223374(BattleBag *battleBag);
void ov08_02223390(BattleSystem *battleSys, u16 item, u8 pocket, enum HeapID heapID);
void ov08_02223B20(BattleBag *battleBag);

u8 ov08_02222B8C(BattleBag *battleBag) {
    BattleBagContext *context = battleBag->context;

    if (battleBag->currentPocket == 3) {
        int partySlot = ov08_02223374(battleBag);
        u32 battleUse = GetItemAttr(context->selectedItem, ITEMATTR_BATTLEUSEFUNC, context->heapID);

        if (context->embargoRemainingTurns != 0 && context->selectedItem != ITEM_GUARD_SPEC_ && battleUse != 3) {
            Pokemon *mon = BattleSystem_GetPartyMon(context->battleSys, context->battler, partySlot);
            String *string = NewString_ReadMsgData(battleBag->msgData, 46);

            BufferBoxMonNickname(battleBag->msgFormat, 0, Mon_GetBoxMon(mon));
            BufferMoveName(battleBag->msgFormat, 1, MOVE_EMBARGO);
            StringExpandPlaceholders(battleBag->msgFormat, battleBag->string, string);
            String_Delete(string);

            ov08_02223B20(battleBag);
            battleBag->queuedState = 8;

            return 9;
        }

        if (BattleSystem_RecoverStatus(context->battleSys, context->battler, partySlot, 0, context->selectedItem) == TRUE) {
            ov08_02223390(context->battleSys, context->selectedItem, battleBag->currentPocket, context->heapID);
            return 13;
        } else if (battleUse == 3) {
            if (!(BattleSystem_GetBattleType(context->battleSys) & BATTLE_TYPE_TRAINER)) {
                ov08_02223390(context->battleSys, context->selectedItem, battleBag->currentPocket, context->heapID);
                return 13;
            } else {
                MsgData *msgData = NewMsgDataFromNarc(MSGDATA_LOAD_LAZY, NARC_msgdata_msg, 40, context->heapID);
                String *string = NewString_ReadMsgData(msgData, 37);
                BufferPlayersName(battleBag->msgFormat, 0, context->trainerInfo);
                StringExpandPlaceholders(battleBag->msgFormat, battleBag->string, string);
                String_Delete(string);
                DestroyMsgData(msgData);
                ov08_02223B20(battleBag);
                battleBag->queuedState = 8;
                return 9;
            }
        } else {
            ReadMsgDataIntoString(battleBag->msgData, 34, battleBag->string);
            ov08_02223B20(battleBag);
            battleBag->queuedState = 8;
            return 9;
        }
    } else if (battleBag->currentPocket == 2) {
        if (context->hasTwoOpponents == TRUE) {
            ReadMsgDataIntoString(battleBag->msgData, 44, battleBag->string);
            ov08_02223B20(battleBag);
            battleBag->queuedState = 8;
            return 9;
        }

        if (context->opponentHidden == TRUE) {
            ReadMsgDataIntoString(battleBag->msgData, 47, battleBag->string);
            ov08_02223B20(battleBag);
            battleBag->queuedState = 8;
            return 9;
        }

        if (context->opponentSubstituted == TRUE) {
            ReadMsgDataIntoString(battleBag->msgData, 48, battleBag->string);
            ov08_02223B20(battleBag);
            battleBag->queuedState = 8;
            return 9;
        }

        Party *party = BattleSystem_GetParty(context->battleSys, context->battler);
        PCStorage *pcStorage = BattleSystem_GetPcStorage(context->battleSys);

        if (Party_GetCount(party) == PARTY_SIZE && PCStorage_FindFirstBoxWithEmptySlot(pcStorage) == NUM_BOXES) {
            ReadMsgDataIntoString(battleBag->msgData, 45, battleBag->string);
            ov08_02223B20(battleBag);
            battleBag->queuedState = 8;
            return 9;
        }
    }

    return 13;
}
