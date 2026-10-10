#include "global.h"

extern const u8 ov80_0223BE9E[];

extern u8 BattleArcade_GetMonCount(u8 challengeType, u32 flag);
extern u32 ov80_02234894(void *arcade, void *party1, void *party2, u32 partySize);

u8 BattleArcade_GetWonBattlePoints(u8 *arcade, void *party1, void *party2, s32 turns) {
    u32 total = 0;
    u32 partySize = BattleArcade_GetMonCount(arcade[0x10], 0);
    int i;

    total += ov80_02234894(arcade, party1, party2, partySize);
    for (i = 0; i < 5; i++) {
        if (turns < ov80_0223BE9E[i * 2]) {
            total += ov80_0223BE9E[i * 2 + 1];
            break;
        }
    }
    return total;
}
