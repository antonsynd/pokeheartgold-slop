#include "global.h"
#include "party.h"
#include "pokemon.h"

extern int ov80_02237B24(u32 challengeType, int arg1);
extern void ov80_02237D9C(Party *party);

typedef struct UnkStruct_ov80_02232F60 {
    u8 filler_00[0x10];
    u8 challengeType;
    u8 filler_11[0x28 - 0x11];
    Party *playersParty;
    u8 filler_2C[0x370 - 0x2C];
    u8 appIdentityUnlocked[4];
    u8 levelAdjustments[4];
    u8 appStatsUnlocked[4];
    u8 appMovesUnlocked[4];
    u8 filler_380[0x394 - 0x380];
    u16 startingPP[4][4];
} UnkStruct_ov80_02232F60;

u16 sub_0203769C(void);

void ov80_02232F60(UnkStruct_ov80_02232F60 *castle) {
    int partyOffset;
    int partySize;
    int end;
    int i;
    Pokemon *mon;

    if (sub_0203769C() == 0) {
        partyOffset = 0;
    } else {
        partyOffset = 2;
    }

    partySize = ov80_02237B24(castle->challengeType, 0);
    Party_GetCount(castle->playersParty);

    end = partySize + partyOffset;
    for (i = partyOffset; i < end; i++) {
        u16 *pp = castle->startingPP[0] + (i - partyOffset) * 4;
        mon = Party_GetMonByIndex(castle->playersParty, i);
        pp[0] = GetMonData(mon, 0x3A, NULL);
        pp[1] = GetMonData(mon, 0x3B, NULL);
        pp[2] = GetMonData(mon, 0x3C, NULL);
        pp[3] = GetMonData(mon, 0x3D, NULL);
    }

    ov80_02237D9C(castle->playersParty);

    for (i = 0; i < 4; i++) {
        castle->appIdentityUnlocked[i] = 0;
        castle->levelAdjustments[i] = 0;
        castle->appStatsUnlocked[i] = 0;
        castle->appMovesUnlocked[i] = 0;
    }
}
