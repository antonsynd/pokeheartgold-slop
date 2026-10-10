#include "global.h"

extern int ov80_02236AF0(u8 challengeMode);
extern void ov80_02229EF4(void *out, u32 setID, int mode);
extern u16 FrontierFieldSystem_0204B510(void *battleTower);
extern u8 GetFrontierTrainerIVs(u16 trainerID);
extern u32 ov80_02236734(u8 *battleTower, u8 *dto, u16 setID, u32 otID, u32 givenPersonality, u8 ivs, u8 partyIndex, int giveReservedItem, u32 heapID);

int ov80_022364A4(u8 *battleTower, u8 *trData, u16 trainerID, u8 *monDataDTO, u8 partySize, u16 *species, u16 *items, u8 *param7, u32 heapID) {
    int i;
    u8 ivs;
    u32 otID;
    u32 lo;
    int setID;
    u32 setIDs[4];
    u32 personalities[4];
    int partyIndex;
    int dupeCount;
    int giveReservedItem = 0;
    u16 prev[8];
    u16 curr[8];
    u8 *dst;

    if (partySize > 4) {
        GF_AssertFail();
    }

    partyIndex = 0;
    dupeCount = 0;

    while (partyIndex != partySize) {
        u8 random = FrontierFieldSystem_0204B510(battleTower) % *(u16 *)(trData + 2);
        setID = *(u16 *)(trData + 4 + random * 2);

        ov80_02229EF4(curr, setID, ov80_02236AF0(battleTower[0xf]));

        for (i = 0; i < partyIndex; i++) {
            ov80_02229EF4(prev, setIDs[i], ov80_02236AF0(battleTower[0xf]));
            if (prev[0] == curr[0]) {
                break;
            }
        }
        if (i != partyIndex) {
            continue;
        }

        if (species != NULL) {
            for (i = 0; i < partySize; i++) {
                if (curr[0] == species[i]) {
                    break;
                }
            }
            if (i != partySize) {
                continue;
            }
        }

        if (dupeCount < 0x32) {
            for (i = 0; i < partyIndex; i++) {
                ov80_02229EF4(prev, setIDs[i], ov80_02236AF0(battleTower[0xf]));
                if (prev[6] != 0 && prev[6] == curr[6]) {
                    break;
                }
            }
            if (i != partyIndex) {
                dupeCount++;
                continue;
            }

            if (items != NULL) {
                for (i = 0; i < partySize; i++) {
                    if (curr[6] == items[i] && items[i] != 0) {
                        break;
                    }
                }
                if (i != partySize) {
                    dupeCount++;
                    continue;
                }
            }
        }

        setIDs[partyIndex] = setID;
        partyIndex++;
    }

    ivs = GetFrontierTrainerIVs(trainerID);
    lo = FrontierFieldSystem_0204B510(battleTower);
    otID = lo | (FrontierFieldSystem_0204B510(battleTower) << 16);

    if (dupeCount >= 0x32) {
        giveReservedItem = 1;
    }

    for (i = 0; i < partyIndex; i++) {
        personalities[i] = ov80_02236734(battleTower, monDataDTO, setIDs[i], otID, 0, ivs, i, giveReservedItem, heapID);
        monDataDTO += 0x38;
    }

    if (param7 == NULL) {
        return giveReservedItem;
    }

    dst = param7;
    *(u32 *)param7 = otID;
    for (i = 0; i < 2; i++) {
        *(u16 *)(param7 + 4) = setIDs[i];
        *(u32 *)(dst + 8) = personalities[i];
        /* the asm advances the incoming stack slot of param7 itself, by 2 */
        param7 += 2;
        dst += 4;
    }
    return giveReservedItem;
}
