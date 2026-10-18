#include "global.h"

#include "battle/battle_setup.h"
#include "frontier/frontier.h"

#include "party.h"
#include "player_data.h"
#include "pokemon.h"
#include "unk_02034354.h"
#include "unk_02035900.h"

typedef struct CastleContext {
    u8 filler_00[0x10];
    u8 challengeType;
    u8 currentBattle;
    u8 filler_12[0x16];
    Party *playersParty;
    Party *opponentsParty;
    u16 trainerIDs[14];
} CastleContext;

extern void *ov80_02229F04(void *dst, u16 trainerId, int heapId, int a3);
extern void ov80_0222A480(BattleSetup *setup, void *a1, int a2, int battler, int heapId);

u8 ov80_02237B24(u8 challengeType, BOOL a1);
u8 ov80_02237B58(u8 challengeType, BOOL a1);
u32 ov80_02237D5C(u8 challengeType);
u32 ov80_02237E88(CastleContext *ctx);

BattleSetup *ov80_02237B8C(CastleContext *ctx, FrontierLaunchArgs *args) {
    int i;
    u8 baseSlot;
    u8 trainer[0x30];

    u8 playerPartySize = ov80_02237B24(ctx->challengeType, FALSE);
    u8 opponentPartySize = ov80_02237B58(ctx->challengeType, FALSE);

    HealParty(ctx->opponentsParty);
    BattleSetup *setup = BattleSetup_New(HEAP_ID_FIELD2, ov80_02237D5C(ctx->challengeType));
    sub_02051D18(setup, NULL, args->saveData, args->mapId, args->bagCursor, args->unk1C);

    setup->battleBg = BATTLE_BG_BATTLE_CASTLE;
    setup->terrain = TERRAIN_BATTLE_CASTLE;

    Party_InitWithMaxSize(setup->party[0], playerPartySize);

    if (sub_0203769C() == 0) {
        baseSlot = 0;
    } else {
        baseSlot = 2;
    }

    Pokemon *mon = AllocMonZeroed(HEAP_ID_FIELD2);

    for (i = 0; i < playerPartySize; i++) {
        CopyPokemonToPokemon(Party_GetMonByIndex(ctx->playersParty, baseSlot + i), mon);
        BattleSetup_AddMonToParty(setup, mon, 0);
    }

    Heap_Free(mon);
    BattleSetup_SetAllySideBattlersToPlayer(setup);

    Heap_Free(ov80_02229F04(trainer, ctx->trainerIDs[ctx->currentBattle], HEAP_ID_FIELD2, 0xCC));
    ov80_0222A480(setup, trainer, opponentPartySize, 1, HEAP_ID_FIELD2);
    Party_InitWithMaxSize(setup->party[1], ov80_02237B58(ctx->challengeType, FALSE));

    for (i = 0; i < 4; i++) {
        setup->trainer[i].data.aiFlags = ov80_02237E88(ctx);
    }

    mon = AllocMonZeroed(HEAP_ID_FIELD2);

    for (i = 0; i < opponentPartySize; i++) {
        CopyPokemonToPokemon(Party_GetMonByIndex(ctx->opponentsParty, i), mon);
        BattleSetup_AddMonToParty(setup, mon, 1);
    }

    Heap_Free(mon);

    switch (ctx->challengeType) {
    case 2:
    case 3:
        BattleSetup_SetAllySideBattlersToPlayer(setup);
        PlayerProfile_Copy(sub_02034818(1 - sub_0203769C()), setup->profile[2]);
        Heap_Free(ov80_02229F04(trainer, ctx->trainerIDs[ctx->currentBattle + 7], HEAP_ID_FIELD2, 0xCC));
        ov80_0222A480(setup, trainer, opponentPartySize, 3, HEAP_ID_FIELD2);
        Party_InitWithMaxSize(setup->party[3], ov80_02237B58(ctx->challengeType, FALSE));

        mon = AllocMonZeroed(HEAP_ID_FIELD2);

        for (i = 0; i < opponentPartySize; i++) {
            CopyPokemonToPokemon(Party_GetMonByIndex(ctx->opponentsParty, opponentPartySize + i), mon);
            BattleSetup_AddMonToParty(setup, mon, 3);
        }

        Heap_Free(mon);
        break;
    }

    return setup;
}
