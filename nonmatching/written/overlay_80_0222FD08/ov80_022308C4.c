#include "global.h"
#include "party.h"
#include "pokemon.h"

extern u32 ov80_02236DF8(u32 challengeType, u32 arg);
extern void *ov80_02236C2C(u32 trainerID, u32 isOpenLevel);
extern void ov80_02236C9C(u16 *usedSpecies, u16 *usedItems, int usedCount, u32 partySize, u16 *setIDs, u32 heapID, void *pool, u32 arg7, u8 *ivs);
extern void ov80_0222A52C(void *mons, u16 *setIDs, u8 *ivs, void *arg3, u32 *personalities, u32 partySize, u32 heapID, u32 narcID);

typedef struct {
    u8 filler_00[4];
    u8 challengeType;
    u8 isOpenLevel;
    u8 currentBattle;
    u8 filler_07[0x18 - 0x07];
    u16 trainerIDs[(0x254 - 0x18) / 2];
    u16 initialRentalSetIDs[(0x3D2 - 0x254) / 2];
    u16 opponentMonSetIDs[4];
    u8 opponentMonIVs[6];
    u32 opponentMonPersonalities[4];
    u8 opponentMons[0x4D4 - 0x3F0];
    Party *playersParty;
    Party *opponentsParty;
} UnkStruct_ov80_022308C4;

// usedSpecies sits above usedItems in the original's frame, both above everything else, so an
// oversized party count overflows upwards; the later code works from locals for the same reason.
void ov80_022308C4(UnkStruct_ov80_022308C4 *factory) {
    u8 framePadding[0x30];
    u16 *usedSpecies;
    u16 *usedItems;
    UnkStruct_ov80_022308C4 *fac;
    u32 opponentPartySize;
    int playersPartySize;
    int opponentsPartySize;
    int i;
    Pokemon *mon;
    void *pool;

    fac = factory;
    usedSpecies = (u16 *)((u8 *)__builtin_frame_address(0) + 8 - 0x24);
    usedItems = (u16 *)((u8 *)__builtin_frame_address(0) + 8 - 0x34);

    for (i = 0; i < 8; i++) {
        usedSpecies[i] = 0;
        usedItems[i] = 0;
    }

    opponentPartySize = ov80_02236DF8(fac->challengeType, 1);
    playersPartySize = Party_GetCount(fac->playersParty);

    for (i = 0; i < playersPartySize; i++) {
        mon = Party_GetMonByIndex(fac->playersParty, i);
        usedSpecies[i] = GetMonData(mon, 5, NULL);
        usedItems[i] = GetMonData(mon, 6, NULL);
    }

    opponentsPartySize = Party_GetCount(fac->opponentsParty);

    for (i = 0; i < opponentsPartySize; i++) {
        mon = Party_GetMonByIndex(fac->opponentsParty, i);
        usedSpecies[i + playersPartySize] = GetMonData(mon, 5, NULL);
        usedItems[i + playersPartySize] = GetMonData(mon, 6, NULL);
        fac->initialRentalSetIDs[i] = fac->opponentMonSetIDs[i];
    }

    pool = ov80_02236C2C(fac->trainerIDs[fac->currentBattle], fac->isOpenLevel);
    ov80_02236C9C(usedSpecies, usedItems, playersPartySize + opponentsPartySize, opponentPartySize, fac->opponentMonSetIDs, 0xB, pool, 0, fac->opponentMonIVs);
    ov80_0222A52C(fac->opponentMons, fac->opponentMonSetIDs, fac->opponentMonIVs, NULL, fac->opponentMonPersonalities, opponentPartySize, 0xB, 0xCD);
}
