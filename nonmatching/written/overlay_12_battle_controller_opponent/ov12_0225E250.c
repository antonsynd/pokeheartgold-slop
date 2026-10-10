#include "global.h"
#include "battle/battle.h"
#include "battle/battle_system.h"
#include "battle/battle_input.h"
#include "battle/battle_hp_bar.h"
#include "battle/battle_02261FD4.h"
#include "filesystem.h"
#include "heap.h"
#include "sys_task_api.h"
#include "unk_02005D10.h"

typedef struct {
    BattleSystem *battleSys;
    BattleHpBar *healthbox;
    int input;
    u16 moves[4];
    u8 ppCur[4];
    u8 ppMax[4];
    u8 command;
    u8 battler;
    u8 battlerType;
    u8 partySlot;
    u8 state;
} UnkStruct_ov12_0225E250;

typedef struct {
    u16 moves[4];
    u8 ppCur[4];
    u8 ppMax[4];
    u8 battlerType;
    u8 pad[3];
} UnkStruct_ov12_0225E250_MenuData;

void ov12_02262FE0(BattleSystem *battleSys, int battler, int input);
void ov12_0226430C(BattleSystem *battleSys, u8 battler, u8 command);

void ov12_0225E250(SysTask *task, void *data)
{
    UnkStruct_ov12_0225E250 *d = data;
    BattleInput *input;
    OpponentData *opponentData;
    int partner;
    BattleHpBar *healthbox;

    BattleSystem_GetBgConfig(d->battleSys);
    input = BattleSystem_GetBattleInput(d->battleSys);
    opponentData = BattleSystem_GetOpponentData(d->battleSys, d->battler);
    partner = BattleSystem_GetBattlerIdPartner(d->battleSys, d->battler);

    if (partner != d->battler) {
        healthbox = BattleSystem_GetHpBar(d->battleSys, partner);
    } else {
        healthbox = NULL;
    }

    switch (d->state) {
    case 0:
        if (BattleInput_CheckFeedbackDone(input) == 0) {
            break;
        } else {
            MsgData *msgLoader = BattleSystem_GetMessageLoader(d->battleSys);
            BattleMessage msg;
            UnkStruct_ov12_0225E250_MenuData menuData;
            NARC *bgNarc;
            NARC *objNarc;
            int i;

            msg.tag = 2;
            msg.param[0] = d->battler | (d->partySlot << 8);
            msg.id = 0x399;
            BattleSystem_PrintBattleMessage(d->battleSys, msgLoader, &msg, 0);

            BattleInput_EnableBallGauge(input);

            bgNarc = NARC_New(7, 5);
            objNarc = NARC_New(8, 5);

            for (i = 0; i < 4; i++) {
                menuData.moves[i] = d->moves[i];
                menuData.ppCur[i] = d->ppCur[i];
                menuData.ppMax[i] = d->ppMax[i];
            }
            menuData.battlerType = d->battlerType;

            BattleInput_ChangeMenu(bgNarc, objNarc, input, 0xb, 0, (int *)&menuData);
            NARC_Delete(bgNarc);
            NARC_Delete(objNarc);
            d->state++;
            return;
        }
    case 1:
        d->input = BattleInput_CheckTouch(input);
        if (d->input != -1) {
            PlaySE(0x5dd);
            d->state++;
        }
        break;
    case 2:
        if (d->input != 0xff) {
            if ((BattleSystem_GetBattleType(d->battleSys) & 2) == 0) {
                BattleInput_Deadstriped_022698AC(input, 0);
                ov12_02265D74(healthbox);
                ov12_02264EB4(d->healthbox);
                ov12_02262014(opponentData);
            }
            BattleInput_DisableBallGauge(input);
        }
        ov12_02262FE0(d->battleSys, d->battler, d->input);
        d->state++;
        break;
    case 3:
        d->state++;
    default:
        if (ov12_022698B0(input) == 1) {
            ov12_0223BB10(d->battleSys, 1);
            ov12_0226430C(d->battleSys, d->battler, d->command);
            Heap_Free(data);
            SysTask_Destroy(task);
        }
        break;
    }
}
