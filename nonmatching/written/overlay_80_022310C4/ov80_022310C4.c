#include "global.h"
#include "heap.h"
#include "party.h"
#include "pokemon.h"

extern void *sub_02030B04(void *saveData);
extern void *sub_02030C5C(void *saveData);
extern void sub_02030AF8(void *hallSave);
extern void *Save_VarsFlags_Get(void *saveData);
extern u16 Save_VarsFlags_GetVar4052(void *varsFlags);
extern u8 sub_02030CA0(void *streakFlags, int type, u32 challengeType, int arg3, int arg4);
extern u16 sub_02030B88(void *hallSave, int type, u8 index, int arg3, int arg4);
extern void *Save_Frontier_GetStatic(void *saveData);
extern int sub_0205C0CC(u8 challengeType);
extern u32 sub_0205C268(u32 arg);
extern u16 FrontierSave_GetStat(void *frontierSave, int a1, int a2);
extern u8 ov80_0223787C(u32 challengeType);
extern void ov80_02231930(void *saveData, u32 challengeType, u8 type, int arg3);
extern u16 ov80_022318D0(void *saveData, u32 challengeType, u8 type, u16 *out1, u16 *out2);
extern void sub_02030BF4(u8 type, void *ranks, u8 rank);
extern int ov80_0223792C(u32 challengeType);
extern void ov80_0222A840(void *saveData);
extern Pokemon *AllocMonZeroed(enum HeapID heapID);

typedef struct UnkStruct_ov80_022310C4 {
    u32 heapID;
    u8 challengeType;
    u8 currentBattle;
    u8 filler_06[2];
    u16 currentStreak;
    u16 currentRound;
    u8 filler_0C[4];
    u32 unused;
    u8 filler_14[4];
    u16 trainerIDs[0x14];
    u8 filler_40[0x260 - 0x40];
    u8 partySlots[4];
    Party *party;
    u16 monIndices[0x14];
    u8 filler_290[0x6F8 - 0x290];
    void *hallSave;
    void *saveData;
    u8 filler_700[4];
    u8 typeRanks[4][9];
    u16 heldItems[4];
    u8 filler_730[0xD8C - 0x730];
    Pokemon *partnersMon;
    u8 filler_D90[0xD98 - 0xD90];
} UnkStruct_ov80_022310C4;

extern UnkStruct_ov80_022310C4 *ov80_0223DD44;

UnkStruct_ov80_022310C4 *ov80_022310C4(void *saveData, u32 resumingFromSave, u8 challengeType, u8 partySlot1, u8 partySlot2) {
    void *hallSave;
    void *streakFlags;
    u8 streakActive;
    u8 partySize;
    u16 i;
    void *frontierSave;
    u16 rankArg1, rankArg2;
    Pokemon *mon;

    ov80_0223DD44 = Heap_Alloc((enum HeapID)0xB, sizeof(UnkStruct_ov80_022310C4));
    MI_CpuFill8(ov80_0223DD44, 0, sizeof(UnkStruct_ov80_022310C4));
    ov80_0223DD44->hallSave = sub_02030B04(saveData);
    ov80_0223DD44->saveData = saveData;
    ov80_0223DD44->heapID = 0xB;
    ov80_0223DD44->party = SaveArray_Party_Alloc((enum HeapID)0xB);
    ov80_0223DD44->partnersMon = AllocMonZeroed((enum HeapID)0xB);
    hallSave = ov80_0223DD44->hallSave;
    streakFlags = sub_02030C5C(saveData);

    if (resumingFromSave == 0) {
        ov80_0223DD44->challengeType = challengeType;
        partySize = ov80_0223787C(ov80_0223DD44->challengeType);
        ov80_0223DD44->currentBattle = 0;
        sub_02030AF8(hallSave);

        if (ov80_0223DD44->challengeType == 3) {
            streakActive = Save_VarsFlags_GetVar4052(Save_VarsFlags_Get(ov80_0223DD44->saveData));
        } else {
            streakActive = sub_02030CA0(streakFlags, 5, ov80_0223DD44->challengeType, 0, 0);
        }

        if (streakActive == 1) {
            frontierSave = Save_Frontier_GetStatic(ov80_0223DD44->saveData);
            ov80_0223DD44->currentStreak = FrontierSave_GetStat(frontierSave, sub_0205C0CC(ov80_0223DD44->challengeType),
                                                                sub_0205C268(sub_0205C0CC(ov80_0223DD44->challengeType)));
        } else {
            ov80_0223DD44->currentStreak = 0;
            for (i = 0; i < 0x12; i++) {
                ov80_02231930(ov80_0223DD44->saveData, ov80_0223DD44->challengeType, i, 0);
            }
        }

        ov80_0223DD44->partySlots[0] = partySlot1;
        ov80_0223DD44->partySlots[1] = partySlot2;
    } else {
        ov80_0223DD44->challengeType = sub_02030B88(hallSave, 0, 0, 0, 0);
        partySize = ov80_0223787C(ov80_0223DD44->challengeType);
        ov80_0223DD44->currentBattle = sub_02030B88(hallSave, 1, 0, 0, 0);
        frontierSave = Save_Frontier_GetStatic(ov80_0223DD44->saveData);
        ov80_0223DD44->currentStreak = FrontierSave_GetStat(frontierSave, sub_0205C0CC(ov80_0223DD44->challengeType),
                                                            sub_0205C268(sub_0205C0CC(ov80_0223DD44->challengeType)));

        for (i = 0; i < partySize; i++) {
            ov80_0223DD44->partySlots[i] = sub_02030B88(hallSave, 3, i, 0, 0);
        }

        for (i = 0; i < 0x14; i++) {
            ov80_0223DD44->trainerIDs[i] = sub_02030B88(hallSave, 2, i, 0, 0);
        }

        for (i = 0; i < 0x14; i++) {
            ov80_0223DD44->monIndices[i] = (u8)sub_02030B88(hallSave, 4, i, 0, 0);
        }
    }

    for (i = 0; i < partySize; i++) {
        mon = Party_GetMonByIndex(SaveArray_Party_Get(ov80_0223DD44->saveData), ov80_0223DD44->partySlots[i]);
        ov80_0223DD44->heldItems[i] = GetMonData(mon, 6, NULL);
    }

    ov80_0223DD44->unused = 0;
    ov80_0223DD44->currentRound = ov80_0223DD44->currentStreak / 10;

    if (ov80_0223DD44->challengeType == 2) {
        for (i = 0; i < 0x12; i++) {
            sub_02030BF4(i, &ov80_0223DD44->typeRanks[2][0], 9);
        }
    } else {
        for (i = 0; i < 0x12; i++) {
            u16 rank = ov80_022318D0(saveData, ov80_0223DD44->challengeType, i, &rankArg1, &rankArg2);
            sub_02030BF4(i, &ov80_0223DD44->typeRanks[ov80_0223DD44->challengeType][0], rank);
        }
    }

    if (ov80_0223792C(ov80_0223DD44->challengeType) == 1) {
        ov80_0222A840(ov80_0223DD44->saveData);
    }

    return ov80_0223DD44;
}
