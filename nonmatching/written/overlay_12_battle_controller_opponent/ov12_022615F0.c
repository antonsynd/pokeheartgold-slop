#include "global.h"
#include "battle/battle.h"
#include "battle/battle_system.h"

typedef struct {
    u8 command;
    u8 pad_01[3];
    u8 partySlot[4];
} UnkStruct_ov12_022615F0_Message;

#define SLOT(b) (((u8 *)message)[4 + (b)])

void ov12_022615F0(BattleSystem *battleSys, void *battlerData, UnkStruct_ov12_022615F0_Message *message, BattleMessage *battleMsg)
{
    u32 callerR5;
    u32 callerR7;
    u32 battleType;
    int battler1;
    int battler2;
    u32 doubles;
    u32 link;
    u32 twoVsTwo;
    u8 networkID;

    __asm__ volatile("movs %0, r5" : "=l"(callerR5) : : "cc");
    __asm__ volatile("movs %0, r7" : "=l"(callerR7) : : "cc");

    battleType = BattleSystem_GetBattleType(battleSys);

    if (((u8 *)battlerData)[0x195] & 1) {
        doubles = battleType & 2;
        if (doubles) {
            battler1 = ((u8 *)battlerData)[0x194];
            battler2 = BattleSystem_GetBattlerIdPartner(battleSys, battler1);
        } else {
            battler1 = ((u8 *)battlerData)[0x194];
            battler2 = battler1;
        }

        if (battleType & 4) {
            if (battleType & 0x80) {
                battleMsg->id = 0x3df;
                battleMsg->tag = 0x3c;
                battleMsg->param[0] = battler1;
                battleMsg->param[1] = battler1;
                battleMsg->param[2] = battler1 | (SLOT(battler1) << 8);
                battleMsg->param[3] = battler2;
                battleMsg->param[4] = battler2;
                battleMsg->param[5] = battler2 | (SLOT(battler2) << 8);
            } else if (battleType & 8) {
                battleMsg->id = 0x3d0;
                battleMsg->tag = 0x38;
                battleMsg->param[0] = battler1;
                battleMsg->param[1] = battler1 | (SLOT(battler1) << 8);
                battleMsg->param[2] = battler2;
                battleMsg->param[3] = battler2 | (SLOT(battler2) << 8);
            } else if (doubles) {
                battleMsg->id = 0x3cf;
                battleMsg->tag = 0x31;
                battleMsg->param[0] = battler1;
                battleMsg->param[1] = battler1 | (SLOT(battler1) << 8);
                battleMsg->param[2] = battler2 | (SLOT(battler2) << 8);
            } else {
                battleMsg->id = 0x3ce;
                battleMsg->tag = 0x1b;
                battleMsg->param[0] = battler1;
                battleMsg->param[1] = battler1 | (SLOT(battler1) << 8);
            }
        } else {
            if ((battleType & 0x10) || (battleType & 8)) {
                battleMsg->id = 0x3df;
                battleMsg->tag = 0x3c;
                battleMsg->param[0] = battler1;
                battleMsg->param[1] = battler1;
                battleMsg->param[2] = battler1 | (SLOT(battler1) << 8);
                battleMsg->param[3] = battler2;
                battleMsg->param[4] = battler2;
                battleMsg->param[5] = battler2 | (SLOT(battler2) << 8);
            } else if (doubles) {
                battleMsg->id = 0x3cd;
                battleMsg->tag = 0x39;
                battleMsg->param[0] = battler1;
                battleMsg->param[1] = battler1;
                battleMsg->param[2] = battler1 | (SLOT(battler1) << 8);
                battleMsg->param[3] = battler2 | (SLOT(battler2) << 8);
            } else {
                battleMsg->id = 0x3cc;
                battleMsg->tag = 0x32;
                battleMsg->param[0] = battler1;
                battleMsg->param[1] = battler1;
                battleMsg->param[2] = battler1 | (SLOT(battler1) << 8);
            }
        }
        return;
    }

    battler1 = callerR5;
    battler2 = callerR7;

    link = battleType & 4;
    if (link) {
        networkID = ov12_0223BFC0(battleSys);
        twoVsTwo = battleType & 8;
        if (twoVsTwo) {
            switch (ov12_0223BFCC(battleSys, networkID)) {
            case 0:
            case 3:
                battler1 = BattleSystem_GetBattlerFromBattlerType(battleSys, 4);
                battler2 = BattleSystem_GetBattlerFromBattlerType(battleSys, 2);
                break;
            case 1:
            case 2:
                battler1 = BattleSystem_GetBattlerFromBattlerType(battleSys, 2);
                battler2 = BattleSystem_GetBattlerFromBattlerType(battleSys, 4);
                break;
            }
        } else if (battleType & 2) {
            battler1 = BattleSystem_GetBattlerFromBattlerType(battleSys, 2);
            battler2 = BattleSystem_GetBattlerFromBattlerType(battleSys, 4);
        } else {
            battler1 = BattleSystem_GetBattlerFromBattlerType(battleSys, 0);
            battler2 = battler1;
        }
    } else {
        twoVsTwo = battleType & 8;
        if (twoVsTwo) {
            battler1 = BattleSystem_GetBattlerIdPartner(battleSys, ((u8 *)battlerData)[0x194]);
            battler2 = ((u8 *)battlerData)[0x194];
        } else if (battleType & 2) {
            battler1 = BattleSystem_GetBattlerFromBattlerType(battleSys, 2);
            battler2 = BattleSystem_GetBattlerFromBattlerType(battleSys, 4);
        } else {
            battler1 = ((u8 *)battlerData)[0x194];
            battler2 = battler1;
        }
    }

    if (link) {
        if (twoVsTwo) {
            battleMsg->id = 0x3d1;
            battleMsg->tag = 0x31;
            battleMsg->param[0] = battler1;
            battleMsg->param[1] = battler1 | (SLOT(battler1) << 8);
            battleMsg->param[2] = battler2 | (SLOT(battler2) << 8);
        } else if (battleType & 2) {
            battleMsg->id = 0x3d2;
            battleMsg->tag = 9;
            battleMsg->param[0] = battler1 | (SLOT(battler1) << 8);
            battleMsg->param[1] = battler2 | (SLOT(battler2) << 8);
        } else {
            battleMsg->id = 0x3d3;
            battleMsg->tag = 2;
            battleMsg->param[0] = battler1 | (SLOT(battler1) << 8);
        }
    } else {
        if (twoVsTwo) {
            battleMsg->id = 0x3e1;
            battleMsg->tag = 0x39;
            battleMsg->param[0] = battler1;
            battleMsg->param[1] = battler1;
            battleMsg->param[2] = battler1 | (SLOT(battler1) << 8);
            battleMsg->param[3] = battler2 | (SLOT(battler2) << 8);
        } else if (battleType & 2) {
            battleMsg->id = 0x3d2;
            battleMsg->tag = 9;
            battleMsg->param[0] = battler1 | (SLOT(battler1) << 8);
            battleMsg->param[1] = battler2 | (SLOT(battler2) << 8);
        } else {
            battleMsg->id = 0x3d3;
            battleMsg->tag = 2;
            battleMsg->param[0] = battler1 | (SLOT(battler1) << 8);
        }
    }
}
