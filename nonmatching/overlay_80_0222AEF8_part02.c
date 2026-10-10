#include "global.h"

#include "assert.h"
#include "heap.h"
#include "party.h"
#include "pokemon.h"

typedef struct BattleCastleComm {
    u8 unk00[0x10];
    u8 challengeType;
    u8 unk11[0x28 - 0x11];
    Party *playersParty;
    u8 unk2C[0x26C - 0x2C];
    u16 monSetIDs[4];
    u8 opponentMonIVs[4];
    u32 opponentMonPersonalities[4];
    u8 unk288[0x3C0 - 0x288];
    u16 commBuffer[20];
    u8 unk3E8[0x410 - 0x3E8];
    u8 commHugeBuffer[0x200];
    u8 unk610[0xA10 - 0x610];
    u8 unkA10;
    u8 unkA11;
    u8 unkA12[0xA18 - 0xA12];
    u8 unkA18;
    u8 unkA19;
    u8 msgsReceived;
    u8 unkA1B;
    u8 unkA1C[0xA20 - 0xA1C];
    u16 *unkA20;
} BattleCastleComm;

typedef struct BattleArcadeComm {
    u8 unk00[4];
    void *saveData;
    u8 unk08[0x10 - 0x08];
    u8 challengeType;
    u8 unk11[0x18 - 0x11];
    u16 currentStreak;
    u16 currentRound;
    u8 unk1C[0x70 - 0x1C];
    Party *playersParty;
    u8 unk74[0x78 - 0x74];
    u16 trainerIDs[14];
    u8 unk94[0x314 - 0x94];
    u16 monSetIDs[4];
    u8 opponentMonIVs[4];
    u32 opponentMonPersonalities[4];
    u8 unk330[0x424 - 0x330];
    u16 commBuffer[20];
    u8 unk44C[0x474 - 0x44C];
    u8 commHugeBuffer[0x200];
    u8 unk674[0xA74 - 0x674];
    u8 unkA74;
    u8 unkA75;
    u16 unkA76;
    u16 unkA78;
    u8 unkA7A[0xA7C - 0xA7A];
    u8 msgsReceived;
} BattleArcadeComm;

BOOL sub_02037030(int arg0, void *arg1, int arg2);
BOOL sub_02036FD8(int arg0, void *arg1, int arg2);
int sub_0203769C(void);
void *sub_02030FA0(void *saveData);
u8 ov80_02237B24(u8 type, int a1);
u8 BattleArcade_GetMonCount(u8 type, int a1);
void MI_CpuCopy8(const void *src, void *dst, u32 size);

BOOL ov80_0222B6C8(BattleCastleComm *battleCastle)
{
    battleCastle->commBuffer[0] = battleCastle->unkA18;

    if (sub_0203769C() == 0) {
        if (battleCastle->unkA1B == 0) {
            battleCastle->unkA1B = battleCastle->unkA18;
        } else if (battleCastle->unkA1B - 6 == 4) {
            if (battleCastle->unkA18 != 4) {
                battleCastle->unkA1B = battleCastle->unkA18;
            }
        }
    } else {
        if (battleCastle->unkA1B == 4) {
            if (battleCastle->unkA18 != 4) {
                battleCastle->unkA1B = battleCastle->unkA18 + 6;
            }
        }
    }

    battleCastle->commBuffer[1] = battleCastle->unkA1B;
    return sub_02037030(44, battleCastle->commBuffer, 0x28) == 1;
}

void ov80_0222B740(int netID, int unused, const u16 *param2, BattleCastleComm *battleCastle)
{
    battleCastle->msgsReceived++;

    if (sub_0203769C() == netID) {
        return;
    }

    battleCastle->unkA19 = param2[0];

    if (sub_0203769C() == 0) {
        if (battleCastle->unkA1B != 0) {
            if (battleCastle->unkA1B == 4) {
                if (battleCastle->unkA19 != 4) {
                    battleCastle->unkA18 = battleCastle->unkA19 + 6;
                    battleCastle->unkA1B = battleCastle->unkA19 + 6;
                }
            }
        } else {
            battleCastle->unkA1B = battleCastle->unkA19 + 6;

            if (battleCastle->unkA19 != 4) {
                *battleCastle->unkA20 = 0xEEDD;
            }
        }
    } else {
        battleCastle->unkA1B = param2[1];

        if (battleCastle->unkA1B != 4) {
            *battleCastle->unkA20 = 0xEEDD;
        }

        if (battleCastle->unkA19 == 4) {
            if (battleCastle->unkA18 != 0) {
                if (battleCastle->unkA18 != 4) {
                    battleCastle->unkA1B = battleCastle->unkA18 + 6;
                }
            }
        }
    }
}

BOOL ov80_0222B7E4(BattleCastleComm *battleCastle)
{
    int i;

    for (i = 0; i < 4; i++) {
        battleCastle->commBuffer[i] = battleCastle->monSetIDs[i];
    }

    for (i = 0; i < 4; i++) {
        battleCastle->commBuffer[4 + i] = battleCastle->opponentMonIVs[i];
    }

    for (i = 0; i < 4; i++) {
        battleCastle->commBuffer[8 + i] = (u16)(battleCastle->opponentMonPersonalities[i] & 0xFFFF);
        battleCastle->commBuffer[12 + i] = (u16)(battleCastle->opponentMonPersonalities[i] >> 16);
    }

    return sub_02037030(45, battleCastle->commBuffer, 0x28) == 1;
}

void ov80_0222B860(int netID, int unused, const u16 *monData, BattleCastleComm *battleCastle)
{
    int i;

    battleCastle->msgsReceived++;

    if (sub_0203769C() == netID) {
        return;
    }

    if (sub_0203769C() == 0) {
        return;
    }

    for (i = 0; i < 4; i++) {
        battleCastle->monSetIDs[i] = monData[i];
    }

    for (i = 0; i < 4; i++) {
        battleCastle->opponentMonIVs[i] = monData[4 + i];
    }

    for (i = 0; i < 4; i++) {
        battleCastle->opponentMonPersonalities[i] = monData[8 + i];
        battleCastle->opponentMonPersonalities[i] |= (u32)monData[12 + i] << 16;
    }
}

BOOL ov80_0222B8D8(BattleCastleComm *battleCastle, u16 param1)
{
    battleCastle->commBuffer[0] = param1;
    return sub_02037030(46, battleCastle->commBuffer, 0x28) == 1;
}

void ov80_0222B8F8(int netID, int unused, const u16 *param2, BattleCastleComm *battleCastle)
{
    battleCastle->msgsReceived++;

    if (sub_0203769C() == netID) {
        return;
    }

    battleCastle->unkA10 = param2[0];
}

BOOL ov80_0222B920(BattleCastleComm *battleCastle, u16 param1)
{
    battleCastle->commBuffer[0] = param1;
    return sub_02037030(47, battleCastle->commBuffer, 0x28) == 1;
}

void ov80_0222B940(int netID, int unused, const u16 *param2, BattleCastleComm *battleCastle)
{
    battleCastle->msgsReceived++;

    if (sub_0203769C() == netID) {
        return;
    }

    battleCastle->unkA11 = param2[0];
}

BOOL ov80_0222B968(BattleCastleComm *battleCastle)
{
    int i;
    int partySize;
    u32 pokemonSize;
    Pokemon *pokemon;

    partySize = ov80_02237B24(battleCastle->challengeType, 0);
    pokemonSize = SizeOfStructPokemon();

    for (i = 0; i < partySize; i++) {
        pokemon = Party_GetMonByIndex(battleCastle->playersParty, i);
        MI_CpuCopy8(pokemon, battleCastle->commHugeBuffer + i * pokemonSize, pokemonSize);
    }

    return sub_02036FD8(48, battleCastle->commHugeBuffer, 0x200) == 1;
}

void ov80_0222B9CC(int netID, int unused, const u8 *param2, BattleCastleComm *battleCastle)
{
    int i;
    int partySize;
    u32 pokemonSize;
    Pokemon *pokemon;

    battleCastle->msgsReceived++;

    if (sub_0203769C() == netID) {
        return;
    }

    partySize = ov80_02237B24(battleCastle->challengeType, 0);
    pokemonSize = SizeOfStructPokemon();
    pokemon = AllocMonZeroed(HEAP_ID_FIELD2);

    for (i = 0; i < partySize; i++) {
        MI_CpuCopy8(param2 + pokemonSize * i, pokemon, pokemonSize);
        Party_AddMon(battleCastle->playersParty, pokemon);
    }

    Heap_Free(pokemon);

    if (sub_0203769C() != 0) {
        Party_SwapSlots(battleCastle->playersParty, 0, 2);
        Party_SwapSlots(battleCastle->playersParty, 1, 3);
    }
}

u8 *ov80_0222BA5C(int index, BattleCastleComm *battleCastle, int size)
{
    GF_ASSERT(size <= 0x200);
    return (u8 *)battleCastle + 0x610 + index * 0x200;
}

BOOL ov80_0222BA7C(BattleArcadeComm *battleArcade)
{
    sub_02030FA0(battleArcade->saveData);
    battleArcade->commBuffer[1] = battleArcade->currentStreak;
    battleArcade->commBuffer[2] = battleArcade->currentRound;
    return sub_02037030(65, battleArcade->commBuffer, 0x28) == 1;
}

void ov80_0222BAB0(int netID, int unused1, const u16 *param2, BattleArcadeComm *battleArcade)
{
    battleArcade->msgsReceived++;

    if (sub_0203769C() == netID) {
        return;
    }

    battleArcade->unkA78 = param2[1];
    battleArcade->unkA76 = param2[2];
}

BOOL ov80_0222BAE0(BattleArcadeComm *battleArcade)
{
    int i;

    for (i = 0; i < 14; i++) {
        battleArcade->commBuffer[i] = battleArcade->trainerIDs[i];
    }

    return sub_02037030(66, battleArcade->commBuffer, 0x28) == 1;
}

void ov80_0222BB18(int netID, int unused, const u16 *trainerIDs, BattleArcadeComm *battleArcade)
{
    int i;

    battleArcade->msgsReceived++;

    if (sub_0203769C() == netID) {
        return;
    }

    if (sub_0203769C() == 0) {
        return;
    }

    for (i = 0; i < 14; i++) {
        battleArcade->trainerIDs[i] = trainerIDs[i];
    }
}

BOOL ov80_0222BB54(BattleArcadeComm *battleArcade)
{
    int i;

    for (i = 0; i < 4; i++) {
        battleArcade->commBuffer[i] = battleArcade->monSetIDs[i];
    }

    for (i = 0; i < 4; i++) {
        battleArcade->commBuffer[4 + i] = battleArcade->opponentMonIVs[i];
    }

    for (i = 0; i < 4; i++) {
        battleArcade->commBuffer[8 + i] = (u16)(battleArcade->opponentMonPersonalities[i] & 0xFFFF);
        battleArcade->commBuffer[12 + i] = (u16)(battleArcade->opponentMonPersonalities[i] >> 16);
    }

    return sub_02037030(67, battleArcade->commBuffer, 0x28) == 1;
}

void ov80_0222BBD0(int netID, int unused, const u16 *param2, BattleArcadeComm *battleArcade)
{
    int i;

    battleArcade->msgsReceived++;

    if (sub_0203769C() == netID) {
        return;
    }

    if (sub_0203769C() == 0) {
        return;
    }

    for (i = 0; i < 4; i++) {
        battleArcade->monSetIDs[i] = param2[i];
    }

    for (i = 0; i < 4; i++) {
        battleArcade->opponentMonIVs[i] = param2[4 + i];
    }

    for (i = 0; i < 4; i++) {
        battleArcade->opponentMonPersonalities[i] = param2[8 + i];
        battleArcade->opponentMonPersonalities[i] |= (u32)param2[12 + i] << 16;
    }
}

BOOL ov80_0222BC48(BattleArcadeComm *battleArcade, u16 param1)
{
    battleArcade->commBuffer[0] = param1;
    return sub_02037030(68, battleArcade->commBuffer, 0x28) == 1;
}

void ov80_0222BC6C(int netID, int unused, const u16 *param2, BattleArcadeComm *battleArcade)
{
    battleArcade->msgsReceived++;

    if (sub_0203769C() == netID) {
        return;
    }

    battleArcade->unkA74 = param2[0];
}

BOOL ov80_0222BC94(BattleArcadeComm *battleArcade, u16 param1)
{
    battleArcade->commBuffer[0] = param1;
    return sub_02037030(69, battleArcade->commBuffer, 0x28) == 1;
}

void ov80_0222BCB8(int netID, int unused, const u16 *param2, BattleArcadeComm *battleArcade)
{
    battleArcade->msgsReceived++;

    if (sub_0203769C() == netID) {
        return;
    }

    battleArcade->unkA75 = param2[0];
}

BOOL ov80_0222BCE0(BattleArcadeComm *battleArcade)
{
    int i;
    int partySize;
    u32 pokemonSize;
    Pokemon *pokemon;

    partySize = BattleArcade_GetMonCount(battleArcade->challengeType, 0);
    pokemonSize = SizeOfStructPokemon();

    for (i = 0; i < partySize; i++) {
        pokemon = Party_GetMonByIndex(battleArcade->playersParty, i);
        MI_CpuCopy8(pokemon, battleArcade->commHugeBuffer + i * pokemonSize, pokemonSize);
    }

    return sub_02036FD8(70, battleArcade->commHugeBuffer, 0x200) == 1;
}

void ov80_0222BD44(int netID, int unused, const u8 *partnersParty, BattleArcadeComm *battleArcade)
{
    int i;
    int partySize;
    u32 pokemonSize;
    Pokemon *pokemon;

    battleArcade->msgsReceived++;

    if (sub_0203769C() == netID) {
        return;
    }

    partySize = BattleArcade_GetMonCount(battleArcade->challengeType, 0);
    pokemonSize = SizeOfStructPokemon();
    pokemon = AllocMonZeroed(HEAP_ID_FIELD2);

    for (i = 0; i < partySize; i++) {
        MI_CpuCopy8(partnersParty + pokemonSize * i, pokemon, pokemonSize);
        Party_AddMon(battleArcade->playersParty, pokemon);
    }

    Heap_Free(pokemon);

    if (sub_0203769C() != 0) {
        Party_SwapSlots(battleArcade->playersParty, 0, 2);
        Party_SwapSlots(battleArcade->playersParty, 1, 3);
    }
}

u8 *ov80_0222BDD4(int netID, BattleArcadeComm *battleArcade, int size)
{
    GF_ASSERT(size <= 0x200);
    return (u8 *)battleArcade + 0x674 + netID * 0x200;
}
