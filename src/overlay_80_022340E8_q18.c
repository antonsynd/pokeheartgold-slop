#include "global.h"

#include "frontier/overlay_80_02238034.h"

#include "party.h"
#include "pokemon.h"

typedef struct Ov80BattleArcade {
    u8 filler_00[0x10];
    u8 challengeType;
} Ov80BattleArcade;

extern const u8 ov80_0223BE88[];
extern const u8 ov80_0223BE90[];

int ov80_02234894(Ov80BattleArcade *arcade, Party *playerParty, Party *partnerParty, u8 partySize) {
    int performance = 0;
    u8 faintedMons = 0;
    u8 statusMons = 0;
    int i;
    Pokemon *mon;

    for (i = 0; i < partySize; i++) {
        mon = Party_GetMonByIndex(playerParty, i);
        if (GetMonData(mon, MON_DATA_SPECIES_EXISTS, NULL) == 0) {
            continue;
        }
        if (GetMonData(mon, MON_DATA_HP, NULL) == 0) {
            faintedMons++;
        }
        if (GetMonData(mon, MON_DATA_STATUS, NULL) != 0) {
            statusMons++;
        }
    }
    if (BattleArcade_MultiplayerCheck(arcade->challengeType) == TRUE) {
        for (i = 0; i < partySize; i++) {
            mon = Party_GetMonByIndex(partnerParty, i);
            if (GetMonData(mon, MON_DATA_SPECIES_EXISTS, NULL) == 0) {
                continue;
            }
            if (GetMonData(mon, MON_DATA_HP, NULL) == 0) {
                faintedMons++;
            }
            if (GetMonData(mon, MON_DATA_STATUS, NULL) != 0) {
                statusMons++;
            }
        }
    }
    performance += ov80_0223BE90[statusMons];
    performance += ov80_0223BE88[faintedMons];
    return performance;
}
