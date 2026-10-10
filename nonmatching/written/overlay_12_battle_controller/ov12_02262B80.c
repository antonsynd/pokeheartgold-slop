#include "global.h"
#include "battle/battle.h"
#include "battle/battle_system.h"
#include "battle/overlay_12_0224E4FC.h"
#include "party.h"
#include "pokemon.h"

typedef struct {
    u8 command;
    u8 partySlot;
    u8 expPercents[6];
    u8 ballStatus[2][6];
    u16 moves[4];
    u8 curPP[4];
    u8 maxPP[4];
    s16 curHP;
    s16 maxHP;
    u8 ballStatusBattler;
    u8 switchingOrCanPickCommandMask;
    u8 pad[2];
} UnkStruct_ov12_02262B80;

void ov12_02262240(BattleSystem *battleSys, int recipient, int battler, void *message, u8 size);

#define message (frame.m)
#define PARTY_ORDER(ctx, battlerType, i) (((u8 *)(ctx))[0x312C + (battlerType) * 6 + (i)])

void ov12_02262B80(BattleSystem *battleSys, BattleContext *ctx, int battler, int partySlot)
{
    // The game's message sits at the top of the frame; padding after it keeps an overrun from reaching our own spilled locals.
    struct {
        UnkStruct_ov12_02262B80 m;
        u8 overrun[0x400];
    } frame;
    int i;
    int battlerType;
    int cnt;
    Party *party;
    Pokemon *mon;
    u32 battleType;
    u32 mask;
    u32 species;
    s32 hp;
    s32 maxHp;
    u32 status;

    MIi_CpuClearFast(0, (u32 *)&message, 0x2c);
    BattleBuffer_Clear(BattleSystem_GetBattleContext(battleSys), battler);

    mask = 0;
    for (i = 0; i < BattleSystem_GetMaxBattlers(battleSys); i++) {
        if (Battler_CanSelectAction(ctx, i) == 0) {
            mask |= MaskOfFlagNo(i);
        }
    }

    message.command = 0xe;
    message.partySlot = partySlot;
    message.switchingOrCanPickCommandMask = ((u8 *)ctx)[0x3108] | mask;

    battleType = BattleSystem_GetBattleType(battleSys);

    if ((battleType & 2) && !(battleType & 8)) {
        battlerType = battler & 1;
    } else {
        battlerType = battler;
    }

    party = BattleSystem_GetParty(battleSys, battlerType);
    cnt = 0;
    for (i = 0; i < Party_GetCount(party); i++) {
        mon = Party_GetMonByIndex(party, PARTY_ORDER(ctx, battlerType, i));
        species = GetMonData(mon, 0xae, NULL);
        if (species != 0 && species != 0x1ee) {
            if (GetMonData(mon, 0xa3, NULL) == 0) {
                message.ballStatus[0][cnt] = 2;
            } else if (GetMonData(mon, 0xa0, NULL) == 0) {
                message.ballStatus[0][cnt] = 1;
            } else {
                message.ballStatus[0][cnt] = 3;
            }
            if (battleType & 0x2a4) {
                message.expPercents[cnt] = 0;
            } else {
                message.expPercents[cnt] = GetPercentProgressTowardsNextLevel(mon);
            }
            cnt++;
        }
    }

    if ((battleType & 0xc) == 0xc || (battleType & 0x10) || battleType == 0x4b || battleType == 0xcb) {
        if (BattleSystem_GetFieldSide(battleSys, battler) != 0) {
            battlerType = BattleSystem_GetBattlerFromBattlerType(battleSys, 2);
        } else {
            battlerType = BattleSystem_GetBattlerFromBattlerType(battleSys, 3);
        }

        party = BattleSystem_GetParty(battleSys, battlerType);
        cnt = 0;
        for (i = 0; i < Party_GetCount(party); i++) {
            mon = Party_GetMonByIndex(party, PARTY_ORDER(ctx, battlerType, i));
            species = GetMonData(mon, 0xae, NULL);
            if (species != 0 && species != 0x1ee) {
                if (GetMonData(mon, 0xa3, NULL) == 0) {
                    message.ballStatus[1][cnt] = 2;
                } else if (GetMonData(mon, 0xa0, NULL) == 0) {
                    message.ballStatus[1][cnt] = 1;
                } else {
                    message.ballStatus[1][cnt] = 3;
                }
                cnt++;
            }
        }

        if (BattleSystem_GetFieldSide(battleSys, battler) != 0) {
            battlerType = BattleSystem_GetBattlerFromBattlerType(battleSys, 4);
        } else {
            battlerType = BattleSystem_GetBattlerFromBattlerType(battleSys, 5);
        }

        party = BattleSystem_GetParty(battleSys, battlerType);
        cnt = 3;
        for (i = 0; i < Party_GetCount(party); i++) {
            mon = Party_GetMonByIndex(party, PARTY_ORDER(ctx, battlerType, i));
            species = GetMonData(mon, 0xae, NULL);
            if (species != 0 && species != 0x1ee) {
                if (GetMonData(mon, 0xa3, NULL) == 0) {
                    message.ballStatus[1][cnt] = 2;
                } else if (GetMonData(mon, 0xa0, NULL) == 0) {
                    message.ballStatus[1][cnt] = 1;
                } else {
                    message.ballStatus[1][cnt] = 3;
                }
                cnt++;
            }
        }
    } else {
        battlerType = ov12_0223ABB8(battleSys, battler, 2);
        party = BattleSystem_GetParty(battleSys, battlerType);
        cnt = 0;
        for (i = 0; i < Party_GetCount(party); i++) {
            mon = Party_GetMonByIndex(party, PARTY_ORDER(ctx, battlerType, i));
            species = GetMonData(mon, 0xae, NULL);
            if (species != 0 && species != 0x1ee) {
                if (GetMonData(mon, 0xa3, NULL) == 0) {
                    message.ballStatus[1][cnt] = 2;
                } else if (GetMonData(mon, 0xa0, NULL) == 0) {
                    message.ballStatus[1][cnt] = 1;
                } else {
                    message.ballStatus[1][cnt] = 3;
                }
                cnt++;
            }
        }
    }

    for (i = 0; i < 4; i++) {
        message.moves[i] = GetBattlerVar(ctx, battler, 6 + i, NULL);
        message.curPP[i] = GetBattlerVar(ctx, battler, 0x1f + i, NULL);
        message.maxPP[i] = GetBattlerVar(ctx, battler, 0x27 + i, NULL);
    }

    hp = ctx->battleMons[battler].hp;
    message.curHP = hp;
    maxHp = ctx->battleMons[battler].maxHp;
    message.maxHP = maxHp;

    if (message.curHP == 0) {
        message.ballStatusBattler = 2;
    } else {
        status = ctx->battleMons[battler].status;
        if (status == 0) {
            message.ballStatusBattler = 1;
        } else {
            message.ballStatusBattler = 3;
        }
    }

    ov12_02262240(battleSys, 1, battler, &message, 0x2c);
}
