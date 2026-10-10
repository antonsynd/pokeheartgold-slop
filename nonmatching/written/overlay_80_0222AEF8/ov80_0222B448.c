#include "global.h"
#include "party.h"
#include "pokemon.h"
#include "unk_02035900.h"

extern int ov80_02236DD4(u32 challengeType);

typedef struct {
    u8 filler_00[4];
    u8 challengeType;
    u8 filler_05[0x4D4 - 0x05];
    Party *playersParty;
    u8 filler_4D8[0x4E8 - 0x4D8];
    u16 playerMonSetIDs[0x0E];
    u16 commBuffer[0x1E];
} UnkStruct_ov80_0222B448;

// The original keeps `ivs` and `personality` adjacent at the bottom of its frame, just below the saved
// registers, so an oversized party count runs the writes upwards; the locals below are declared in that order.
BOOL ov80_0222B448(UnkStruct_ov80_0222B448 *work) {
    u32 personality[3];
    u8 ivs[4];
    Party *party;
    const u16 *setIDs;
    u16 *data;
    int offset;
    int partySize;
    int i;
    Pokemon *mon;

    party = work->playersParty;
    setIDs = work->playerMonSetIDs;
    data = work->commBuffer;
    offset = 0;
    partySize = ov80_02236DD4(work->challengeType);

    for (i = 0; i < partySize; i++) {
        mon = Party_GetMonByIndex(party, i);
        ivs[i] = GetMonData(mon, 0x47, NULL);
        personality[i] = GetMonData(mon, 0, NULL);
    }

    for (i = 0; i < partySize; i++) {
        data[i] = setIDs[i];
    }

    offset += partySize;

    for (i = 0; i < partySize; i++) {
        data[i + offset] = ivs[i];
    }

    offset += partySize;

    for (i = 0; i < partySize; i++) {
        data[i + offset] = (u16)personality[i];
        data[i + offset + partySize] = (u16)(personality[i] >> 16);
    }

    if (sub_02037030(0x1C, data, 0x3C) == 1) {
        return TRUE;
    }
    return FALSE;
}
