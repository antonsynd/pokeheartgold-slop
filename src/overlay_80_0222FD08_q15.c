#include "global.h"

#include "party.h"
#include "pokemon.h"

typedef struct BattleFactory {
    u8 filler_000[4];
    u8 challengeType;
    u8 isOpenLevel;
    u8 currentBattle;
    u8 filler_007[0x11];
    u16 trainerIDs[0x11E];
    u16 initialRentalSetIDs[0xBF];
    u16 opponentMonSetIDs[4];
    u8 opponentMonIVs[6];
    u32 opponentMonPersonalities[4];
    u8 opponentMons[0xE4];
    Party *playersParty;
    Party *opponentsParty;
} BattleFactory;

u8 ov80_02236DF8(u8 challengeType, BOOL a1);
void *ov80_02236C2C(int trainerId, int isOpenLevel);
int ov80_02236C9C(u16 *usedSpecies, u16 *usedItems, int numUsed, int count, u16 *setIDs, int heapID, void *pool, u16 a7, u8 *ivs);
void ov80_0222A52C(void *mons, u16 *setIDs, u8 *ivs, u32 *a3, void *personalities, u32 count, u32 heapID, u32 narcId);

void ov80_022308C4(BattleFactory *factory) {
    int i, partySize, playersPartySize;
    u16 usedSpecies[8];
    u16 usedItems[8];

    for (i = 0; i < 8; i++) {
        usedSpecies[i] = 0;
        usedItems[i] = 0;
    }

    u8 opponentPartySize = ov80_02236DF8(factory->challengeType, TRUE);
    partySize = Party_GetCount(factory->playersParty);

    for (i = 0; i < partySize; i++) {
        Pokemon *mon = Party_GetMonByIndex(factory->playersParty, i);
        usedSpecies[i] = GetMonData(mon, MON_DATA_SPECIES, NULL);
        usedItems[i] = GetMonData(mon, MON_DATA_HELD_ITEM, NULL);
    }

    playersPartySize = partySize;
    partySize = Party_GetCount(factory->opponentsParty);

    for (i = 0; i < partySize; i++) {
        Pokemon *mon = Party_GetMonByIndex(factory->opponentsParty, i);
        usedSpecies[i + playersPartySize] = GetMonData(mon, MON_DATA_SPECIES, NULL);
        usedItems[i + playersPartySize] = GetMonData(mon, MON_DATA_HELD_ITEM, NULL);
        factory->initialRentalSetIDs[i] = factory->opponentMonSetIDs[i];
    }

    void *pool = ov80_02236C2C(factory->trainerIDs[factory->currentBattle], factory->isOpenLevel);

    ov80_02236C9C(usedSpecies, usedItems, playersPartySize + partySize, opponentPartySize, factory->opponentMonSetIDs, HEAP_ID_FIELD2, pool, 0, factory->opponentMonIVs);
    ov80_0222A52C(factory->opponentMons, factory->opponentMonSetIDs, factory->opponentMonIVs, NULL, factory->opponentMonPersonalities, opponentPartySize, HEAP_ID_FIELD2, 205);
}
