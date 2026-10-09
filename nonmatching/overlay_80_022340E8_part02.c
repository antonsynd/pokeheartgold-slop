#include "global.h"

#include "constants/abilities.h"
#include "constants/battle.h"
#include "constants/pokemon.h"

#include "frontier/overlay_80_02238034.h"

#include "math_util.h"
#include "party.h"
#include "pokemon.h"

typedef void (*ov80_ArcadeEffectFunc)(ArcadeContext *arcade, Party *party, u8 partySize);

extern const u16 ov80_0223BEA8[];
extern const u16 ov80_0223BF32[];
extern const u16 ov80_0223BED8[];
extern const u16 ov80_0223BEEC[];
extern const u16 ov80_0223BF18[];
extern const u16 ov80_0223BF02[];
extern const u8 ov80_0223C01C[];
extern const u8 ov80_0223C028[];

void ov80_02234ECC(ArcadeContext *arcade, Party *party, u8 partySize);
void ov80_02234F28(ArcadeContext *arcade, Party *party, u8 partySize);
void ov80_02234FAC(ArcadeContext *arcade, Party *party, u8 partySize);
void ov80_02235024(ArcadeContext *arcade, Party *party, u8 partySize);
void ov80_0223509C(ArcadeContext *arcade, Party *party, u8 partySize);
void ov80_02235118(ArcadeContext *arcade, Party *party, u8 partySize);
void ov80_022351AC(ArcadeContext *arcade, Party *party, u8 partySize);
void ov80_02235208(ArcadeContext *arcade, Party *party, u8 partySize);
void ov80_02235264(ArcadeContext *arcade, Party *party, u8 partySize);
void ov80_022352BC(ArcadeContext *arcade, Party *party, u8 partySize);
void ov80_022352C8(ArcadeContext *arcade, Party *party, u8 partySize);
void ov80_022352D0(ArcadeContext *arcade, Party *party, u8 partySize);
void ov80_022352D8(ArcadeContext *arcade, Party *party, u8 partySize);
void ov80_022352E0(ArcadeContext *arcade, Party *party, u8 partySize);
void ov80_022352E8(ArcadeContext *arcade, Party *party, u8 partySize);
void ov80_022352F4(ArcadeContext *arcade, Party *party, u8 partySize);
void ov80_02235300(ArcadeContext *arcade, Party *party, u8 partySize);
void ov80_0223530C(ArcadeContext *arcade, Party *party, u8 partySize);
void ov80_02235314(ArcadeContext *arcade, Party *party, u8 partySize);
void ov80_02235318(ArcadeContext *arcade, Party *party, u8 partySize);
void ov80_0223531C(ArcadeContext *arcade, Party *party, u8 partySize);
void ov80_02235320(ArcadeContext *arcade, Party *party, u8 partySize);

const u16 *ov80_0223DCA0[6] = {
    ov80_0223BEA8,
    ov80_0223BF32,
    ov80_0223BED8,
    ov80_0223BEEC,
    ov80_0223BF18,
    ov80_0223BF02,
};

ov80_ArcadeEffectFunc ov80_0223DCB8[32] = {
    ov80_02234ECC,
    ov80_02234F28,
    ov80_02234FAC,
    ov80_02235024,
    ov80_0223509C,
    ov80_02235118,
    ov80_022351AC,
    ov80_02235208,
    ov80_02235264,
    ov80_02234ECC,
    ov80_02234F28,
    ov80_02234FAC,
    ov80_02235024,
    ov80_0223509C,
    ov80_02235118,
    ov80_022351AC,
    ov80_02235208,
    ov80_02235264,
    ov80_022352BC,
    ov80_022352C8,
    ov80_022352D0,
    ov80_022352D8,
    ov80_022352E0,
    ov80_022352E8,
    ov80_022352F4,
    ov80_02235300,
    ov80_0223530C,
    ov80_02235314,
    ov80_02235318,
    ov80_0223531C,
    ov80_02235320,
    ov80_02235318,
};

void ov80_02234E98(ArcadeContext *arcade, u8 effect) {
    u8 partySize;
    Party *party;

    if (effect < 9) {
        party = arcade->opponentParty;
        partySize = BattleArcade_GetOpponentMonCount(arcade->type, TRUE);
    } else {
        party = arcade->playerParty;
        partySize = BattleArcade_GetMonCount(arcade->type, TRUE);
    }

    ov80_0223DCB8[effect](arcade, party, partySize);
}

void ov80_02234ECC(ArcadeContext *arcade, Party *party, u8 partySize) {
    int i;

    for (i = 0; i < partySize; i++) {
        Pokemon *mon = Party_GetMonByIndex(party, i);
        u32 maxHP = GetMonData(mon, MON_DATA_MAX_HP, NULL);
        u32 hp = maxHP * 1.2;
        hp -= maxHP;
        hp = maxHP - hp;

        SetMonData(mon, MON_DATA_HP, &hp);
    }
}

void ov80_02234F28(ArcadeContext *arcade, Party *party, u8 partySize) {
    int numImmune = 0;
    int i;

    for (i = 0; i < partySize; i++) {
        Pokemon *mon = Party_GetMonByIndex(party, i);
        u32 type1 = GetMonData(mon, MON_DATA_TYPE_1, NULL);
        u32 type2 = GetMonData(mon, MON_DATA_TYPE_2, NULL);
        u32 ability = GetMonData(mon, MON_DATA_ABILITY, NULL);

        if (type1 == TYPE_POISON || type2 == TYPE_POISON || type1 == TYPE_STEEL || type2 == TYPE_STEEL || ability == ABILITY_IMMUNITY) {
            numImmune++;
        } else {
            u32 newStatus = STATUS_POISON;
            SetMonData(mon, MON_DATA_STATUS, &newStatus);
        }
    }

    if (numImmune >= partySize) {
        arcade->unk1F = TRUE;
    }
}

void ov80_02234FAC(ArcadeContext *arcade, Party *party, u8 partySize) {
    int numImmune = 0;
    int i;

    for (i = 0; i < partySize; i++) {
        Pokemon *mon = Party_GetMonByIndex(party, i);
        u32 type1 = GetMonData(mon, MON_DATA_TYPE_1, NULL);
        u32 type2 = GetMonData(mon, MON_DATA_TYPE_2, NULL);
        u32 ability = GetMonData(mon, MON_DATA_ABILITY, NULL);

        if (type1 == TYPE_GROUND || type2 == TYPE_GROUND || ability == ABILITY_LIMBER) {
            numImmune++;
        } else {
            u32 newStatus = STATUS_PARALYSIS;
            SetMonData(mon, MON_DATA_STATUS, &newStatus);
        }
    }

    if (numImmune >= partySize) {
        arcade->unk1F = TRUE;
    }
}

void ov80_02235024(ArcadeContext *arcade, Party *party, u8 partySize) {
    int numImmune = 0;
    int i;

    for (i = 0; i < partySize; i++) {
        Pokemon *mon = Party_GetMonByIndex(party, i);
        u32 type1 = GetMonData(mon, MON_DATA_TYPE_1, NULL);
        u32 type2 = GetMonData(mon, MON_DATA_TYPE_2, NULL);
        u32 ability = GetMonData(mon, MON_DATA_ABILITY, NULL);

        if (type1 == TYPE_FIRE || type2 == TYPE_FIRE || ability == ABILITY_WATER_VEIL) {
            numImmune++;
        } else {
            u32 newStatus = STATUS_BURN;
            SetMonData(mon, MON_DATA_STATUS, &newStatus);
        }
    }

    if (numImmune >= partySize) {
        arcade->unk1F = TRUE;
    }
}

void ov80_0223509C(ArcadeContext *arcade, Party *party, u8 partySize) {
    int numImmune = 0;
    u8 slot = arcade->unk20 % partySize;
    int i;

    for (i = 0; i < partySize; i++) {
        Pokemon *mon = Party_GetMonByIndex(party, slot);
        u32 ability = GetMonData(mon, MON_DATA_ABILITY, NULL);

        if (ability == ABILITY_INSOMNIA || ability == ABILITY_VITAL_SPIRIT) {
            numImmune++;
            slot++;

            if (slot >= partySize) {
                slot = 0;
            }
        } else {
            u32 newStatus = LCRandom() % 4 + 2;
            SetMonData(mon, MON_DATA_STATUS, &newStatus);
            break;
        }
    }

    if (numImmune >= partySize) {
        arcade->unk1F = TRUE;
    }
}

void ov80_02235118(ArcadeContext *arcade, Party *party, u8 partySize) {
    int numImmune = 0;
    u8 slot = arcade->unk20 % partySize;
    int i;

    for (i = 0; i < partySize; i++) {
        Pokemon *mon = Party_GetMonByIndex(party, slot);
        u32 type1 = GetMonData(mon, MON_DATA_TYPE_1, NULL);
        u32 type2 = GetMonData(mon, MON_DATA_TYPE_2, NULL);
        u32 ability = GetMonData(mon, MON_DATA_ABILITY, NULL);

        if (type1 == TYPE_ICE || type2 == TYPE_ICE || ability == ABILITY_MAGMA_ARMOR) {
            numImmune++;
            slot++;

            if (slot >= partySize) {
                slot = 0;
            }
        } else {
            u32 newStatus = STATUS_FREEZE;
            SetMonData(mon, MON_DATA_STATUS, &newStatus);
            break;
        }
    }

    if (numImmune >= partySize) {
        arcade->unk1F = TRUE;
    }
}

void ov80_022351AC(ArcadeContext *arcade, Party *party, u8 partySize) {
    u32 currentRound = ov80_02238498(arcade);
    int poolSize;
    const u16 *itemPool;
    u16 newItem;
    int i;

    if (currentRound < 3) {
        itemPool = ov80_0223DCA0[0];
        poolSize = 8;
    } else if (currentRound < 6) {
        itemPool = ov80_0223DCA0[1];
        poolSize = 20;
    } else {
        itemPool = ov80_0223DCA0[2];
        poolSize = 10;
    }

    newItem = itemPool[arcade->unk20 % poolSize];

    for (i = 0; i < partySize; i++) {
        Pokemon *mon = Party_GetMonByIndex(party, i);
        SetMonData(mon, MON_DATA_HELD_ITEM, &newItem);
    }
}

void ov80_02235208(ArcadeContext *arcade, Party *party, u8 partySize) {
    u32 currentRound = ov80_02238498(arcade);
    int poolSize;
    const u16 *itemPool;
    u16 newItem;
    int i;

    if (currentRound < 3) {
        itemPool = ov80_0223DCA0[3];
        poolSize = 11;
    } else if (currentRound < 6) {
        itemPool = ov80_0223DCA0[4];
        poolSize = 13;
    } else {
        itemPool = ov80_0223DCA0[5];
        poolSize = 11;
    }

    newItem = itemPool[arcade->unk20 % poolSize];

    for (i = 0; i < partySize; i++) {
        Pokemon *mon = Party_GetMonByIndex(party, i);
        SetMonData(mon, MON_DATA_HELD_ITEM, &newItem);
    }
}

void ov80_02235264(ArcadeContext *arcade, Party *party, u8 partySize) {
    int i;

    for (i = 0; i < partySize; i++) {
        Pokemon *mon = Party_GetMonByIndex(party, i);
        u32 level = GetMonData(mon, MON_DATA_LEVEL, NULL);
        u32 exp;

        level += 3;
        if (level > 100) {
            GF_ASSERT(FALSE);
            level = 100;
        }

        exp = GetMonExpBySpeciesAndLevel(GetMonData(mon, MON_DATA_SPECIES, NULL), level);

        SetMonData(mon, MON_DATA_EXPERIENCE, &exp);
        CalcMonLevelAndStats(mon);
    }
}

void ov80_022352BC(ArcadeContext *arcade, Party *party, u8 partySize) {
    arcade->weather = 1001;
}

void ov80_022352C8(ArcadeContext *arcade, Party *party, u8 partySize) {
    arcade->weather = 1;
}

void ov80_022352D0(ArcadeContext *arcade, Party *party, u8 partySize) {
    arcade->weather = 7;
}

void ov80_022352D8(ArcadeContext *arcade, Party *party, u8 partySize) {
    arcade->weather = 4;
}

void ov80_022352E0(ArcadeContext *arcade, Party *party, u8 partySize) {
    arcade->weather = 9;
}

void ov80_022352E8(ArcadeContext *arcade, Party *party, u8 partySize) {
    arcade->weather = 1002;
}

void ov80_022352F4(ArcadeContext *arcade, Party *party, u8 partySize) {
    if (arcade->cursorSpeed < 7) {
        arcade->cursorSpeed++;
    }
}

void ov80_02235300(ArcadeContext *arcade, Party *party, u8 partySize) {
    if (arcade->cursorSpeed > 0) {
        arcade->cursorSpeed--;
    }
}

void ov80_0223530C(ArcadeContext *arcade, Party *party, u8 partySize) {
    arcade->randomFlag = TRUE;
}

void ov80_02235314(ArcadeContext *arcade, Party *party, u8 partySize) {
}

void ov80_02235318(ArcadeContext *arcade, Party *party, u8 partySize) {
}

void ov80_0223531C(ArcadeContext *arcade, Party *party, u8 partySize) {
}

void ov80_02235320(ArcadeContext *arcade, Party *party, u8 partySize) {
}

u32 ov80_02235324(ArcadeContext *arcade) {
    u8 bp;
    u16 currentRound = arcade->unk1A;

    if (arcade->type <= 1) {
        if (currentRound >= 8) {
            bp = 6;
        } else {
            bp = ov80_0223C01C[currentRound];
        }
    } else {
        if (currentRound >= 8) {
            bp = 17;
        } else {
            bp = ov80_0223C028[currentRound];
        }
    }

    if (arcade->type == 0) {
        if (arcade->winStreak == 21 || arcade->winStreak == 49) {
            bp = 20;
        }
    }

    return bp;
}

void ov80_02235364(Party *battleParty, Party *arcadeParty, int battleSlot, int arcadeSlot) {
    Pokemon *battleMon = Party_GetMonByIndex(battleParty, battleSlot);
    u16 item = GetMonData(battleMon, MON_DATA_HELD_ITEM, NULL);
    Pokemon *mon = Party_GetMonByIndex(arcadeParty, arcadeSlot);

    SetMonData(mon, MON_DATA_HELD_ITEM, &item);
}
