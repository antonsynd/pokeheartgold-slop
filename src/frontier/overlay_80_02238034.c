#include "frontier/overlay_80_02238034.h"

#include "global.h"

#include "battle/battle_setup.h"
#include "frontier/frontier.h"
#include "frontier/overlay_80_02229EE0.h"

#include "math_util.h"
#include "party.h"
#include "player_data.h"
#include "pokemon.h"
#include "trainer_data.h"
#include "unk_02034354.h"
#include "unk_02035900.h"
#include "use_item_on_mon.h"

typedef struct {
    u16 a;
    u16 b;
    u16 c;
    u16 d;
} UnkStruct_Ov80_0223D514;

extern void *ov80_02229F04(void *dst, u16 trainerId, int heapId, int a3);
extern void ov80_0222A140(void *a0, Pokemon *mon, int a2);
extern void ov80_0222A480(BattleSetup *setup, void *a1, int a2, int battler, int heapId);

static int ov80_02238034(int a0, u32 a1, int a2);
void ov80_022380A0(int a0, int a1, u16 *out, int count);
static int ov80_02238344(int type);
int ov80_02238370(ArcadeContext *ctx);
static void ov80_02238384(ArcadeContext *ctx, Pokemon *mon);
void ov80_022383A8(ArcadeContext *ctx, Party *party, Pokemon *mon);
static int ov80_02238444(ArcadeContext *ctx);

static const UnkStruct_Ov80_0223D514 ov80_0223D514[] = {
    { 0x000, 0x063, 0x064, 0x077 },
    { 0x050, 0x077, 0x078, 0x08B },
    { 0x064, 0x08B, 0x08C, 0x09F },
    { 0x078, 0x09F, 0x0A0, 0x0B3 },
    { 0x08C, 0x0B3, 0x0B4, 0x0C7 },
    { 0x0A0, 0x0C7, 0x0C8, 0x0DB },
    { 0x0B4, 0x0DB, 0x0DC, 0x0EF },
    { 0x0C8, 0x12B, 0x0C8, 0x12B },
};

static int ov80_02238034(int a0, u32 a1, int a2) {
    u16 min;
    int range;
    if (a0 == 0) {
        int v = (a2 + 1) + 7 * a1;
        if (v == 0x15) {
            return 0x137;
        }
        if (v == 0x31) {
            return 0x138;
        }
    }
    if (a1 >= 8) {
        a1 = 7;
    }
    if (a2 == 6 || a2 == 0xD) {
        min = ov80_0223D514[a1].c;
        range = ov80_0223D514[a1].d - min;
    } else {
        min = ov80_0223D514[a1].a;
        range = ov80_0223D514[a1].b - min;
    }
    return min + LCRandom() % range;
}

void ov80_022380A0(int a0, int a1, u16 *out, int count) {
    int i = 0;
    do {
        int j = 0;
        out[i] = ov80_02238034(a0, a1, i);
        if (i > 0) {
            u16 value = out[i];
            for (j = 0; j < i; j++) {
                if (out[j] == value) {
                    break;
                }
            }
        }
        if (j == i) {
            i++;
        }
    } while (i < count);
}

u8 BattleArcade_GetMonCount(u8 type, int a1) {
    switch (type) {
    case 0:
    case 1:
        return 3;
    case 2:
    case 3:
        if (a1 == 0) {
            return 2;
        }
        return 4;
    default:
        GF_AssertFail();
        return 3;
    }
}

u8 BattleArcade_GetOpponentMonCount(u8 type, int a1) {
    switch (type) {
    case 0:
    case 1:
        return 3;
    case 2:
    case 3:
        if (a1 == 0) {
            return 2;
        }
        return 4;
    default:
        GF_AssertFail();
        return 3;
    }
}

BattleSetup *BattleArcade_NewBattleSetup(ArcadeContext *ctx, FrontierLaunchArgs *args) {
    u8 trainerData[0x30];
    BattleSetup *setup;
    Pokemon *mon;
    Party *party0;
    Party *party1;
    int playerMonCount;
    int opponentMonCount;
    int i;
    int slot;

    playerMonCount = BattleArcade_GetMonCount(ctx->type, 0);
    opponentMonCount = BattleArcade_GetOpponentMonCount(ctx->type, 0);
    setup = BattleSetup_New(HEAP_ID_FIELD2, ov80_02238344(ctx->type));
    sub_02051D18(setup, NULL, args->saveData, args->mapId, args->bagCursor, args->unk1C);
    setup->battleBg = BATTLE_BG_BATTLE_ARCADE;
    setup->terrain = TERRAIN_BATTLE_ARCADE;
    setup->weatherType = ctx->weather;
    party1 = ctx->opponentParty;
    party0 = ctx->playerParty;
    if (ctx->unk13 == 0x1B) {
        party0 = ctx->opponentParty;
        party1 = ctx->playerParty;
    }
    Party_InitWithMaxSize(setup->party[0], playerMonCount);
    slot = (sub_0203769C() == 0) ? 0 : 2;
    mon = AllocMonZeroed(HEAP_ID_FIELD2);
    for (i = 0; i < playerMonCount; i++) {
        CopyPokemonToPokemon(Party_GetMonByIndex(party0, slot), mon);
        BattleSetup_AddMonToParty(setup, mon, 0);
        slot++;
    }
    Heap_Free(mon);
    BattleSetup_SetAllySideBattlersToPlayer(setup);
    Heap_Free(ov80_02229F04(trainerData, ctx->unk74[ctx->unk11], HEAP_ID_FIELD2, 0xCC));
    ov80_0222A480(setup, trainerData, opponentMonCount, 1, HEAP_ID_FIELD2);
    Party_InitWithMaxSize(setup->party[1], BattleArcade_GetOpponentMonCount(ctx->type, 0));
    for (i = 0; i < 4; i++) {
        setup->trainer[i].data.aiFlags = ov80_02238444(ctx);
    }
    mon = AllocMonZeroed(HEAP_ID_FIELD2);
    for (i = 0; i < opponentMonCount; i++) {
        CopyPokemonToPokemon(Party_GetMonByIndex(party1, i), mon);
        BattleSetup_AddMonToParty(setup, mon, 1);
    }
    Heap_Free(mon);
    switch (ctx->type) {
    case 2:
    case 3:
        BattleSetup_SetAllySideBattlersToPlayer(setup);
        PlayerProfile_Copy(sub_02034818(1 - sub_0203769C()), setup->profile[2]);
        Heap_Free(ov80_02229F04(trainerData, ctx->unk74[ctx->unk11 + 7], HEAP_ID_FIELD2, 0xCC));
        ov80_0222A480(setup, trainerData, opponentMonCount, 3, HEAP_ID_FIELD2);
        Party_InitWithMaxSize(setup->party[3], BattleArcade_GetOpponentMonCount(ctx->type, 0));
        mon = AllocMonZeroed(HEAP_ID_FIELD2);
        for (i = 0; i < opponentMonCount; i++) {
            CopyPokemonToPokemon(Party_GetMonByIndex(party1, i), mon);
            BattleSetup_AddMonToParty(setup, mon, 3);
        }
        Heap_Free(mon);
        break;
    }
    HealParty(ctx->playerParty);
    HealParty(ctx->opponentParty);
    return setup;
}

static int ov80_02238344(int type) {
    switch (type) {
    case 0:
        return 0x81;
    case 1:
        return 0x83;
    case 2:
        return 0x8F;
    case 3:
        return 0x8F;
    default:
        return 0x81;
    }
}

int ov80_02238370(ArcadeContext *ctx) {
    return 0x32;
}

BOOL BattleArcade_MultiplayerCheck(int type) {
    switch (type) {
    case 2:
    case 3:
        return TRUE;
    }
    return FALSE;
}

static void ov80_02238384(ArcadeContext *ctx, Pokemon *mon) {
    sub_0207217C(mon, Save_PlayerData_GetProfile((SaveData *)ctx->unk0[1]), 4, 0, 0, HEAP_ID_FIELD2);
}

void ov80_022383A8(ArcadeContext *ctx, Party *party, Pokemon *mon) {
    ov80_02238384(ctx, mon);
    Party_AddMon(party, mon);
}

void ov80_022383C0(ArcadeContext *ctx) {
    Pokemon *mon;
    Pokemon *target;
    int i;
    int count;
    u8 *entry;
    SaveArray_Party_Init(ctx->opponentParty);
    count = BattleArcade_GetOpponentMonCount(ctx->type, 1);
    mon = AllocMonZeroed(HEAP_ID_FIELD2);
    entry = (u8 *)ctx + 0x330;
    for (i = 0; i < count; i++) {
        u32 zero;
        ov80_0222A140(entry, mon, ov80_02238370(ctx));
        ov80_022383A8(ctx, ctx->opponentParty, mon);
        target = Party_GetMonByIndex(ctx->opponentParty, i);
        zero = 0;
        SetMonData(target, 6, &zero);
        entry += 0x38;
    }
    Heap_Free(mon);
}

u32 ov80_02238430(ArcadeContext *ctx, u8 a1) {
    ov80_02238498(ctx);
    if (a1 == 0x1C) {
        return 1;
    }
    return 3;
}

static int ov80_02238444(ArcadeContext *ctx) {
    int v;
    if (ctx->type == 0) {
        if ((u16)(ctx->unk74[ctx->unk11] + 0xFEC9) <= 1) {
            return 7;
        }
    }
    v = 7;
    switch (ov80_02238498(ctx) + 1) {
    case 0:
        break;
    case 1:
    case 2:
        v = 0;
        break;
    case 3:
    case 4:
        v = 1;
        break;
    }
    return v;
}

u32 ov80_02238498(ArcadeContext *ctx) {
    u16 result = ctx->unk1A;
    if (BattleArcade_MultiplayerCheck(ctx->type) == 1) {
        if (ctx->multiWinStreak > ctx->unk1A) {
            result = ctx->multiWinStreak;
        }
    }
    return result;
}

u32 ov80_022384BC(u8 a0) {
    if (a0 < 9) {
        return 0;
    }
    if (a0 < 0x12) {
        return 1;
    }
    if (a0 < 0x1B) {
        return 2;
    }
    return 3;
}
