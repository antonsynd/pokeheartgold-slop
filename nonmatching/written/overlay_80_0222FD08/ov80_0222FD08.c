#include "global.h"
#include "heap.h"
#include "party.h"

extern void *sub_0203094C(void *saveData);
extern void *sub_02030AE8(void *saveData);
extern void sub_02030940(void *factorySave);
extern void *Save_VarsFlags_Get(void *saveData);
extern u16 Save_VarsFlags_GetVar4052(void *varsFlags);
extern u8 sub_02030AD4(void *streakFlags, int type, u8 index, int unused);
extern u8 sub_02030A24(void *factorySave, int type, int arg2, int arg3);
extern void *Save_Frontier_GetStatic(void *saveData);
extern int sub_0205BFF0(u8 isOpenLevel, u8 challengeType);
extern int sub_0205C048(u8 isOpenLevel, u8 challengeType);
extern u32 sub_0205C268(u32 arg);
extern u16 FrontierSave_GetStat(void *frontierSave, int a1, int a2);
extern int ov80_02237254(int challengeType);
extern void ov80_0222A840(void *saveData);

typedef struct UnkStruct_ov80_0222FD08 {
    u32 heapID;
    u8 challengeType;
    u8 isOpenLevel;
    u8 currentBattle;
    u8 filler_07;
    u16 tradeCount;
    u8 filler_0A[2];
    u16 currentStreak;
    u16 currentRound;
    u32 unused;
    u8 filler_14[0x4D4 - 0x14];
    Party *playersParty;
    Party *opponentsParty;
    u8 filler_4DC[0x4F4 - 0x4DC];
    void *factorySave;
    void *saveData;
    u8 filler_4FC[0x708 - 0x4FC];
} UnkStruct_ov80_0222FD08;

extern UnkStruct_ov80_0222FD08 *_0223DD40;

UnkStruct_ov80_0222FD08 *ov80_0222FD08(void *saveData, u32 resumingFromSave, u8 challengeType, u8 isOpenLevel) {
    UnkStruct_ov80_0222FD08 *factory;
    void *factorySave;
    void *streakFlags;
    void *frontierSave;
    u8 streakActive;

    _0223DD40 = Heap_Alloc((enum HeapID)0xB, sizeof(UnkStruct_ov80_0222FD08));
    MI_CpuFill8(_0223DD40, 0, sizeof(UnkStruct_ov80_0222FD08));
    factory = _0223DD40;
    factory->factorySave = sub_0203094C(saveData);
    factory->saveData = saveData;
    factory->heapID = 0xB;
    factory = _0223DD40;
    factory->playersParty = SaveArray_Party_Alloc((enum HeapID)0xB);
    factory->opponentsParty = SaveArray_Party_Alloc((enum HeapID)0xB);
    factorySave = factory->factorySave;
    streakFlags = sub_02030AE8(saveData);

    if (resumingFromSave == 0) {
        factory = _0223DD40;
        factory->challengeType = challengeType;
        factory->isOpenLevel = isOpenLevel;
        factory->currentBattle = 0;
        sub_02030940(factorySave);

        factory = _0223DD40;
        if (factory->challengeType == 3) {
            streakActive = Save_VarsFlags_GetVar4052(Save_VarsFlags_Get(factory->saveData));
        } else {
            streakActive = sub_02030AD4(streakFlags, 10, factory->challengeType + factory->isOpenLevel * 4, 0);
        }

        factory = _0223DD40;
        if (streakActive == 1) {
            frontierSave = Save_Frontier_GetStatic(factory->saveData);
            factory->currentStreak = FrontierSave_GetStat(frontierSave, sub_0205BFF0(factory->isOpenLevel, factory->challengeType),
                                                          sub_0205C268(sub_0205BFF0(factory->isOpenLevel, factory->challengeType)));
            frontierSave = Save_Frontier_GetStatic(factory->saveData);
            factory->tradeCount = FrontierSave_GetStat(frontierSave, sub_0205C048(factory->isOpenLevel, factory->challengeType),
                                                       sub_0205C268(sub_0205C048(factory->isOpenLevel, factory->challengeType)));
        } else {
            factory->currentStreak = 0;
            factory->tradeCount = 0;
        }
        factory->unused = 0;
    } else {
        factory = _0223DD40;
        factory->challengeType = sub_02030A24(factorySave, 1, 0, 0);
        factory->isOpenLevel = sub_02030A24(factorySave, 0, 0, 0);
        factory->currentBattle = sub_02030A24(factorySave, 2, 0, 0);
        frontierSave = Save_Frontier_GetStatic(factory->saveData);
        factory->currentStreak = FrontierSave_GetStat(frontierSave, sub_0205BFF0(factory->isOpenLevel, factory->challengeType),
                                                      sub_0205C268(sub_0205BFF0(factory->isOpenLevel, factory->challengeType)));
        frontierSave = Save_Frontier_GetStatic(factory->saveData);
        factory->tradeCount = FrontierSave_GetStat(frontierSave, sub_0205C048(factory->isOpenLevel, factory->challengeType),
                                                   sub_0205C268(sub_0205C048(factory->isOpenLevel, factory->challengeType)));
    }

    factory = _0223DD40;
    factory->currentRound = factory->currentStreak / 7;

    if (ov80_02237254(factory->challengeType) == 1) {
        ov80_0222A840(_0223DD40->saveData);
    }

    return _0223DD40;
}
