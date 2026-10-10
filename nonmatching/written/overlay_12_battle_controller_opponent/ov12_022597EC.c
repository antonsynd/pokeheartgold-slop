#include "global.h"
#include "battle/battle.h"
#include "battle/battle_system.h"
#include "party.h"
#include "pokemon.h"

typedef struct {
    u8 command;
    u8 pad_01;
    u16 recordedInputCount;
    u32 resultMask;
    u8 recordedInputs[1];
} UnkStruct_ov12_022597EC;

void ov12_0226430C(BattleSystem *battleSys, u8 battler, u8 command);
void ov12_02259928(void *opponentData);

void ov12_022597EC(BattleSystem *battleSys, void *opponentData)
{
    UnkStruct_ov12_022597EC *message = (UnkStruct_ov12_022597EC *)((u8 *)opponentData + 0x94);
    Party *party;
    Pokemon *mon;
    int slot;
    int battler;
    int playerHP = 0;
    int enemyHP = 0;

    ov12_0223BF14(battleSys, message->recordedInputCount, message->recordedInputs);

    if (BattleSystem_GetBattleType(battleSys) & 0x80) {
        BattleSystem_SetBattleOutcomeFlags(battleSys, message->resultMask);
    } else {
        for (battler = 0; battler < BattleSystem_GetMaxBattlers(battleSys); battler++) {
            party = BattleSystem_GetParty(battleSys, battler);

            for (slot = 0; slot < Party_GetCount(party); slot++) {
                mon = Party_GetMonByIndex(party, slot);

                if (GetMonData(mon, 5, NULL) != 0 && GetMonData(mon, 0x4c, NULL) == 0) {
                    if (BattleSystem_GetFieldSide(battleSys, battler) != 0) {
                        enemyHP += GetMonData(mon, 0xa3, NULL);
                    } else {
                        playerHP += GetMonData(mon, 0xa3, NULL);
                    }
                }
            }
        }

        if (playerHP == 0 && enemyHP == 0) {
            BattleSystem_SetBattleOutcomeFlags(battleSys, 3);
        } else if (playerHP == 0) {
            BattleSystem_SetBattleOutcomeFlags(battleSys, 2);
        } else {
            BattleSystem_SetBattleOutcomeFlags(battleSys, 1);
        }
    }

    ov12_0226430C(battleSys, ((u8 *)opponentData)[0x194], message->command);
    ov12_02259928(opponentData);
}
