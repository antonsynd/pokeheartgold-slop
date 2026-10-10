#include "global.h"
#include "heap.h"
#include "party.h"
#include "pokemon.h"

extern void *sub_02030E88(void *saveData);
extern void *sub_02030FA0(void *saveData);
extern void sub_02030E7C(void *arcadeSave);
extern void *Save_VarsFlags_Get(void *saveData);
extern u16 Save_VarsFlags_GetVar4052(void *varsFlags);
extern u32 sub_02030FE4(void *persistentSave, u32 type, u32 challengeType, u32 arg3, u32 arg4);
extern u16 sub_02030F34(void *arcadeSave, u32 type, u8 index, u32 arg3, u32 arg4);
extern void *Save_Frontier_GetStatic(void *saveData);
extern u8 sub_0205C2C0(u32 challengeType);
extern u32 sub_0205C268(u32 arg);
extern u16 FrontierSave_GetStat(void *frontierSave, int a1, int a2);
extern u8 BattleArcade_GetMonCount(u8 type, int arg1);
extern BOOL BattleArcade_MultiplayerCheck(int type);
extern void ov80_0222A840(void *saveData);

typedef struct UnkStruct_BattleArcadeData {
    u32 heapID;
    void *saveData;
    void *arcadeSave;
    u8 filler_0C[4];
    u8 challengeType;
    u8 currentBattle;
    u8 cursorRandomized;
    u8 activeEffect;
    u8 filler_14[4];
    u16 currentStreak;
    u16 currentRound;
    u8 rouletteSpeed;
    u8 filler_1D[0x24 - 0x1D];
    u32 unused;
    u8 filler_28[4];
    u8 partySlots[3];
    u8 filler_2F[0x70 - 0x2F];
    Party *playersParty;
    Party *opponentsParty;
    u8 filler_78[0x412 - 0x78];
    u16 savedHeldItems[3];
    u8 filler_418[0xA80 - 0x418];
    u16 *unk_A80;
    u8 filler_A84[4];
} UnkStruct_BattleArcadeData;

extern UnkStruct_BattleArcadeData *ov80_0223DD4C;

UnkStruct_BattleArcadeData *BattleArcadeData_Alloc(void *saveData, u32 resumingFromSave, u8 challengeType, u32 partySlot1, u16 partySlot2, u16 partySlot3, u16 *param6) {
    void *arcadeSave;
    void *persistentSave;
    void *frontierSave;
    u8 streakActive;
    Party *fieldParty;
    int partySize;
    u16 i;
    Pokemon *mon;
    u32 noItem;
    u32 exp;

    ov80_0223DD4C = Heap_Alloc((enum HeapID)0xB, sizeof(UnkStruct_BattleArcadeData));
    MI_CpuFill8(ov80_0223DD4C, 0, sizeof(UnkStruct_BattleArcadeData));
    ov80_0223DD4C->arcadeSave = sub_02030E88(saveData);
    ov80_0223DD4C->saveData = saveData;
    ov80_0223DD4C->heapID = 0xB;
    ov80_0223DD4C->playersParty = SaveArray_Party_Alloc((enum HeapID)0xB);
    ov80_0223DD4C->opponentsParty = SaveArray_Party_Alloc((enum HeapID)0xB);
    ov80_0223DD4C->unk_A80 = param6;
    ov80_0223DD4C->activeEffect = 0x20;
    arcadeSave = ov80_0223DD4C->arcadeSave;
    persistentSave = sub_02030FA0(saveData);

    if (resumingFromSave == 0) {
        ov80_0223DD4C->challengeType = challengeType;
        ov80_0223DD4C->currentBattle = 0;
        ov80_0223DD4C->rouletteSpeed = 3;
        ov80_0223DD4C->cursorRandomized = 0;
        sub_02030E7C(arcadeSave);

        if (ov80_0223DD4C->challengeType == 3) {
            streakActive = Save_VarsFlags_GetVar4052(Save_VarsFlags_Get(ov80_0223DD4C->saveData));
        } else {
            streakActive = sub_02030FE4(persistentSave, 8, ov80_0223DD4C->challengeType, 0, 0);
        }

        if (streakActive == 1) {
            frontierSave = Save_Frontier_GetStatic(ov80_0223DD4C->saveData);
            ov80_0223DD4C->currentStreak = FrontierSave_GetStat(frontierSave, sub_0205C2C0(ov80_0223DD4C->challengeType),
                                                                sub_0205C268(sub_0205C2C0(ov80_0223DD4C->challengeType)));
        } else {
            ov80_0223DD4C->currentStreak = 0;
        }

        ov80_0223DD4C->currentRound = ov80_0223DD4C->currentStreak / 7;
        ov80_0223DD4C->unused = 0;
        ov80_0223DD4C->partySlots[0] = partySlot1;
        ov80_0223DD4C->partySlots[1] = partySlot2;
        ov80_0223DD4C->partySlots[2] = partySlot3;
    } else {
        ov80_0223DD4C->challengeType = sub_02030F34(arcadeSave, 0, 0, 0, 0);
        ov80_0223DD4C->currentBattle = sub_02030F34(arcadeSave, 2, 0, 0, 0);
        ov80_0223DD4C->rouletteSpeed = sub_02030F34(arcadeSave, 3, 0, 0, 0);
        ov80_0223DD4C->cursorRandomized = sub_02030F34(arcadeSave, 1, 0, 0, 0);
        frontierSave = Save_Frontier_GetStatic(ov80_0223DD4C->saveData);
        ov80_0223DD4C->currentStreak = FrontierSave_GetStat(frontierSave, sub_0205C2C0(ov80_0223DD4C->challengeType),
                                                            sub_0205C268(sub_0205C2C0(ov80_0223DD4C->challengeType)));
        ov80_0223DD4C->currentRound = ov80_0223DD4C->currentStreak / 7;

        for (i = 0; i < 3; i++) {
            ov80_0223DD4C->partySlots[i] = sub_02030F34(arcadeSave, 6, i, 0, 0);
        }
    }

    for (i = 0; i < 3; i++) {
        mon = Party_GetMonByIndex(SaveArray_Party_Get(ov80_0223DD4C->saveData), ov80_0223DD4C->partySlots[i]);
        ov80_0223DD4C->savedHeldItems[i] = GetMonData(mon, 6, NULL);
    }

    fieldParty = SaveArray_Party_Get(ov80_0223DD4C->saveData);
    partySize = BattleArcade_GetMonCount(ov80_0223DD4C->challengeType, 0);

    for (i = 0; i < partySize; i++) {
        Party_AddMon(ov80_0223DD4C->playersParty, Party_GetMonByIndex(fieldParty, ov80_0223DD4C->partySlots[i]));

        mon = Party_GetMonByIndex(ov80_0223DD4C->playersParty, i);

        noItem = 0;
        SetMonData(mon, 6, &noItem);

        if (GetMonData(mon, 0xA1, NULL) > 0x32) {
            exp = GetMonExpBySpeciesAndLevel(GetMonData(mon, 5, NULL), 0x32);
            SetMonData(mon, 8, &exp);
            CalcMonLevelAndStats(mon);
        }
    }

    if (BattleArcade_MultiplayerCheck(ov80_0223DD4C->challengeType) == 1) {
        ov80_0222A840(ov80_0223DD4C->saveData);
    }

    return ov80_0223DD4C;
}
