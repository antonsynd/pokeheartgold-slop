#include "global.h"

#include "heap.h"
#include "party.h"
#include "player_avatar.h"
#include "save_vars_flags.h"
#include "sys_vars.h"
#include "unk_02030A98.h"
#include "unk_0205BFF0.h"

typedef struct BattleFactory {
    int unused;
    u8 challengeType;
    u8 isOpenLevel;
    u8 currentBattle;
    u8 filler_07;
    u16 tradeCount;
    u8 filler_0A[2];
    u16 currentStreak;
    u16 currentRound;
    int unused3;
    u8 filler_014[0x4C0];
    Party *playersParty;
    Party *opponentsParty;
    u8 filler_4DC[0x18];
    void *factorySave;
    SaveData *saveData;
    u8 filler_4FC[0x20C];
} BattleFactory;

void *sub_0203094C(SaveData *saveData);
void sub_02030940(void *factorySave);
BOOL sub_02030AD4(int streakFlags, int a1, u8 a2, void *a3);
u8 sub_02030A24(void *factorySave, int member, int a2, void *a3);
int ov80_02237254(int challengeType);
void ov80_0222A840(SaveData *saveData);

BattleFactory *ov80_0222FD08(SaveData *saveData, u16 resumingFromSave, u8 challengeType, u8 isOpenLevel) {
    static BattleFactory *factory;

    factory = Heap_Alloc(HEAP_ID_FIELD2, sizeof(BattleFactory));
    MI_CpuClear8(factory, sizeof(BattleFactory));

    factory->factorySave = sub_0203094C(saveData);
    factory->saveData = saveData;
    factory->unused = 11;
    factory->playersParty = SaveArray_Party_Alloc(HEAP_ID_FIELD2);
    factory->opponentsParty = SaveArray_Party_Alloc(HEAP_ID_FIELD2);

    void *factorySave = factory->factorySave;
    int streakFlags = sub_02030AE8(saveData);

    if (!resumingFromSave) {
        factory->challengeType = challengeType;
        factory->isOpenLevel = isOpenLevel;
        factory->currentBattle = 0;

        sub_02030940(factorySave);

        u8 streakActive;
        if (factory->challengeType == 3) {
            streakActive = Save_VarsFlags_GetVar4052(Save_VarsFlags_Get(factory->saveData));
        } else {
            streakActive = sub_02030AD4(streakFlags, 10, (factory->isOpenLevel * 4) + factory->challengeType, NULL);
        }

        if (streakActive == TRUE) {
            factory->currentStreak = FrontierSave_GetStat(Save_Frontier_GetStatic(factory->saveData), sub_0205BFF0(factory->isOpenLevel, factory->challengeType), sub_0205C268(sub_0205BFF0(factory->isOpenLevel, factory->challengeType)));
            factory->tradeCount = FrontierSave_GetStat(Save_Frontier_GetStatic(factory->saveData), sub_0205C048(factory->isOpenLevel, factory->challengeType), sub_0205C268(sub_0205C048(factory->isOpenLevel, factory->challengeType)));
        } else {
            factory->currentStreak = 0;
            factory->tradeCount = 0;
        }

        factory->unused3 = 0;
    } else {
        factory->challengeType = sub_02030A24(factorySave, 1, 0, NULL);
        factory->isOpenLevel = sub_02030A24(factorySave, 0, 0, NULL);
        factory->currentBattle = sub_02030A24(factorySave, 2, 0, NULL);
        factory->currentStreak = FrontierSave_GetStat(Save_Frontier_GetStatic(factory->saveData), sub_0205BFF0(factory->isOpenLevel, factory->challengeType), sub_0205C268(sub_0205BFF0(factory->isOpenLevel, factory->challengeType)));
        factory->tradeCount = FrontierSave_GetStat(Save_Frontier_GetStatic(factory->saveData), sub_0205C048(factory->isOpenLevel, factory->challengeType), sub_0205C268(sub_0205C048(factory->isOpenLevel, factory->challengeType)));
    }

    factory->currentRound = factory->currentStreak / 7;

    if (ov80_02237254(factory->challengeType) == TRUE) {
        ov80_0222A840(factory->saveData);
    }

    return factory;
}
