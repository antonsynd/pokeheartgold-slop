#include "global.h"
#include "heap.h"
#include "party.h"
#include "pokemon.h"

extern void *sub_02030CC8(void *saveData);
extern void *sub_02030E08(void *saveData);
extern void sub_02030CBC(void *castleSave);
extern void *Save_VarsFlags_Get(void *saveData);
extern u16 Save_VarsFlags_GetVar4052(void *varsFlags);
extern u8 sub_02030E58(void *persistentSave, int type, u32 challengeType, int arg3, int arg4);
extern u16 sub_02030D84(void *castleSave, int type, u8 index, int arg3, int arg4);
extern void *Save_Frontier_GetStatic(void *saveData);
extern int sub_0205C1A0(u8 challengeType);
extern int sub_0205C1F0(u8 challengeType);
extern int sub_0205C218(u8 challengeType);
extern int sub_0205C174(u8 challengeType, u8 rank);
extern u32 sub_0205C268(u32 arg);
extern u16 FrontierSave_GetStat(void *frontierSave, int a1, int a2);
extern void sub_02031108(void *frontierSave, int a1, int a2, int a3);
extern void sub_02031228(void *frontierSave, int a1, int a2, int a3);
extern int ov80_02237B24(u32 challengeType, int arg1);
extern int ov80_02237D8C(u32 challengeType);
extern void ov80_0222A840(void *saveData);

typedef struct UnkStruct_ov80_022324C4 {
    u32 heapID;
    void *saveData;
    void *castleSave;
    u8 filler_0C[4];
    u8 challengeType;
    u8 currentBattle;
    u8 filler_12[2];
    u16 currentStreak;
    u16 currentRound;
    u32 unused;
    u8 filler_1C[4];
    u16 initialCP;
    u8 filler_22[2];
    u8 partySlots[3];
    u8 filler_27;
    Party *playersParty;
    Party *opponentsParty;
    u8 filler_30[0x36A - 0x30];
    u16 savedHeldItems[3];
    u8 filler_370[0xA20 - 0x370];
    u16 *unk_A20;
    u8 filler_A24[4];
} UnkStruct_ov80_022324C4;

extern UnkStruct_ov80_022324C4 *ov80_0223DD48;

UnkStruct_ov80_022324C4 *ov80_022324C4(void *saveData, u32 resumingFromSave, u8 challengeType, u32 partySlot1, u16 partySlot2, u16 partySlot3, u16 *param6) {
    void *castleSave;
    void *persistentSave;
    void *frontierSave;
    u8 streakActive;
    Party *fieldParty;
    int partySize;
    u16 i;
    Pokemon *mon;
    u32 noItem;
    u32 exp;

    ov80_0223DD48 = Heap_Alloc((enum HeapID)0xB, sizeof(UnkStruct_ov80_022324C4));
    MI_CpuFill8(ov80_0223DD48, 0, sizeof(UnkStruct_ov80_022324C4));
    ov80_0223DD48->castleSave = sub_02030CC8(saveData);
    ov80_0223DD48->saveData = saveData;
    ov80_0223DD48->heapID = 0xB;
    ov80_0223DD48->playersParty = SaveArray_Party_Alloc((enum HeapID)0xB);
    ov80_0223DD48->opponentsParty = SaveArray_Party_Alloc((enum HeapID)0xB);
    ov80_0223DD48->unk_A20 = param6;
    castleSave = ov80_0223DD48->castleSave;
    persistentSave = sub_02030E08(saveData);

    if (resumingFromSave == 0) {
        ov80_0223DD48->challengeType = challengeType;
        ov80_0223DD48->currentBattle = 0;
        sub_02030CBC(castleSave);

        if (ov80_0223DD48->challengeType == 3) {
            streakActive = Save_VarsFlags_GetVar4052(Save_VarsFlags_Get(ov80_0223DD48->saveData));
        } else {
            streakActive = sub_02030E58(persistentSave, 9, ov80_0223DD48->challengeType, 0, 0);
        }

        if (streakActive == 1) {
            frontierSave = Save_Frontier_GetStatic(ov80_0223DD48->saveData);
            ov80_0223DD48->currentStreak = FrontierSave_GetStat(frontierSave, sub_0205C1A0(ov80_0223DD48->challengeType),
                                                                sub_0205C268(sub_0205C1A0(ov80_0223DD48->challengeType)));
        } else {
            ov80_0223DD48->currentStreak = 0;

            frontierSave = Save_Frontier_GetStatic(ov80_0223DD48->saveData);
            sub_02031108(frontierSave, sub_0205C1F0(ov80_0223DD48->challengeType), sub_0205C268(sub_0205C1F0(ov80_0223DD48->challengeType)), 0);

            frontierSave = Save_Frontier_GetStatic(ov80_0223DD48->saveData);
            sub_02031108(frontierSave, sub_0205C218(challengeType), sub_0205C268(sub_0205C218(challengeType)), 0);

            for (i = 0; i < 3; i++) {
                frontierSave = Save_Frontier_GetStatic(ov80_0223DD48->saveData);
                sub_02031108(frontierSave, sub_0205C174(ov80_0223DD48->challengeType, i),
                             sub_0205C268(sub_0205C174(ov80_0223DD48->challengeType, i)), 1);
            }
        }

        ov80_0223DD48->currentRound = ov80_0223DD48->currentStreak / 7;
        ov80_0223DD48->unused = 0;
        ov80_0223DD48->partySlots[0] = partySlot1;
        ov80_0223DD48->partySlots[1] = partySlot2;
        ov80_0223DD48->partySlots[2] = partySlot3;

        frontierSave = Save_Frontier_GetStatic(ov80_0223DD48->saveData);
        ov80_0223DD48->initialCP = FrontierSave_GetStat(frontierSave, sub_0205C1F0(ov80_0223DD48->challengeType),
                                                        sub_0205C268(sub_0205C1F0(ov80_0223DD48->challengeType)));

        frontierSave = Save_Frontier_GetStatic(ov80_0223DD48->saveData);
        sub_02031228(frontierSave, sub_0205C1F0(ov80_0223DD48->challengeType), sub_0205C268(sub_0205C1F0(ov80_0223DD48->challengeType)), 10);
    } else {
        ov80_0223DD48->challengeType = sub_02030D84(castleSave, 0, 0, 0, 0);
        ov80_0223DD48->currentBattle = sub_02030D84(castleSave, 1, 0, 0, 0);
        frontierSave = Save_Frontier_GetStatic(ov80_0223DD48->saveData);
        ov80_0223DD48->currentStreak = FrontierSave_GetStat(frontierSave, sub_0205C1A0(ov80_0223DD48->challengeType),
                                                            sub_0205C268(sub_0205C1A0(ov80_0223DD48->challengeType)));
        ov80_0223DD48->currentRound = ov80_0223DD48->currentStreak / 7;

        for (i = 0; i < 3; i++) {
            ov80_0223DD48->partySlots[i] = sub_02030D84(castleSave, 7, i, 0, 0);
        }
    }

    for (i = 0; i < 3; i++) {
        mon = Party_GetMonByIndex(SaveArray_Party_Get(ov80_0223DD48->saveData), ov80_0223DD48->partySlots[i]);
        ov80_0223DD48->savedHeldItems[i] = GetMonData(mon, 6, NULL);
    }

    fieldParty = SaveArray_Party_Get(ov80_0223DD48->saveData);
    partySize = ov80_02237B24(ov80_0223DD48->challengeType, 0);

    for (i = 0; i < partySize; i++) {
        Party_AddMon(ov80_0223DD48->playersParty, Party_GetMonByIndex(fieldParty, ov80_0223DD48->partySlots[i]));

        mon = Party_GetMonByIndex(ov80_0223DD48->playersParty, i);

        noItem = 0;
        SetMonData(mon, 6, &noItem);

        if (GetMonData(mon, 0xA1, NULL) > 0x32) {
            exp = GetMonExpBySpeciesAndLevel(GetMonData(mon, 5, NULL), 0x32);
            SetMonData(mon, 8, &exp);
            CalcMonLevelAndStats(mon);
        }
    }

    if (ov80_02237D8C(ov80_0223DD48->challengeType) == 1) {
        ov80_0222A840(ov80_0223DD48->saveData);
    }

    return ov80_0223DD48;
}
