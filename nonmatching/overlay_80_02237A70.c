#include "global.h"

#include "battle/battle_setup.h"
#include "frontier/frontier.h"

#include "bg_window.h"
#include "error_handling.h"
#include "heap.h"
#include "math_util.h"
#include "party.h"
#include "player_data.h"
#include "pokemon.h"
#include "unk_02030A98.h"
#include "unk_02034354.h"
#include "unk_02035900.h"
#include "unk_0205BFF0.h"
#include "use_item_on_mon.h"

typedef struct {
    u16 a;
    u16 b;
    u16 c;
    u16 d;
} UnkStruct_Ov80_0223D4D4;

typedef struct UnkStruct_Ov80_02237A70 {
    u32 unk0;
    SaveData *saveData;
    u8 unk8[8];
    u8 type;
    u8 unk11;
    u8 unk12[4];
    u16 unk16;
    u8 unk18[0x10];
    Party *unk28;
    Party *unk2C;
    u16 unk30[14];
    u8 unk4C[0x23C];
    u8 unk288[0x38 * 4];
    u8 unk368[0xA12 - 0x368];
    u16 unkA12;
} UnkStruct_Ov80_02237A70;

extern void *ov80_02229F04(void *dst, u16 trainerId, int heapId, int a3);
extern void ov80_0222A140(void *a0, Pokemon *mon, int a2);
extern void ov80_0222A480(BattleSetup *setup, void *a1, int a2, int battler, int heapId);
extern u32 sub_0205C218(u8 a);
extern u32 sub_0205C268(u32 a);
extern void sub_02031228(FrontierSave *fs, int stat, int bit, u16 delta);
extern void sub_02031248(FrontierSave *fs, int stat, int bit, u16 delta);

int ov80_02237A70(int a0, u32 a1, int a2);
void ov80_02237ADC(int a0, int a1, u16 *out, int count);
u8 ov80_02237B24(u8 type, int a1);
u8 ov80_02237B58(u8 type, int a1);
BattleSetup *ov80_02237B8C(UnkStruct_Ov80_02237A70 *ctx, FrontierLaunchArgs *args);
int ov80_02237D5C(int type);
int ov80_02237D88(UnkStruct_Ov80_02237A70 *ctx);
BOOL ov80_02237D8C(int type);
void ov80_02237D9C(Party *party);
void ov80_02237DF4(UnkStruct_Ov80_02237A70 *ctx, Pokemon *mon);
void ov80_02237E18(UnkStruct_Ov80_02237A70 *ctx, Party *party, Pokemon *mon);
void ov80_02237E30(UnkStruct_Ov80_02237A70 *ctx);
int ov80_02237E88(UnkStruct_Ov80_02237A70 *ctx);
u32 ov80_02237ED8(UnkStruct_Ov80_02237A70 *ctx);
void ov80_02237EFC(BgConfig *bgConfig, UnkStruct_Ov80_02237A70 *ctx, u8 bgId);
void ov80_02237F3C(u16 *dst, u32 value);
u32 ov80_02237F9C(u32 value);
void ov80_02237FA4(FrontierSave *save, u8 type, u16 delta);

static const UnkStruct_Ov80_0223D4D4 ov80_0223D4D4[] = {
    { 0x000, 0x063, 0x064, 0x077 },
    { 0x050, 0x077, 0x078, 0x08B },
    { 0x064, 0x08B, 0x08C, 0x09F },
    { 0x078, 0x09F, 0x0A0, 0x0B3 },
    { 0x08C, 0x0B3, 0x0B4, 0x0C7 },
    { 0x0A0, 0x0C7, 0x0C8, 0x0DB },
    { 0x0B4, 0x0DB, 0x0DC, 0x0EF },
    { 0x0C8, 0x12B, 0x0C8, 0x12B },
};

int ov80_02237A70(int a0, u32 a1, int a2) {
    u16 min;
    int range;
    if (a0 == 0) {
        int v = (a2 + 1) + 7 * a1;
        if (v == 0x15) {
            return 0x139;
        }
        if (v == 0x31) {
            return 0x13A;
        }
    }
    if (a1 >= 8) {
        a1 = 7;
    }
    if (a2 == 6 || a2 == 0xD) {
        min = ov80_0223D4D4[a1].c;
        range = ov80_0223D4D4[a1].d - min;
    } else {
        min = ov80_0223D4D4[a1].a;
        range = ov80_0223D4D4[a1].b - min;
    }
    return min + LCRandom() % range;
}

void ov80_02237ADC(int a0, int a1, u16 *out, int count) {
    int i = 0;
    do {
        int j = 0;
        out[i] = ov80_02237A70(a0, a1, i);
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

u8 ov80_02237B24(u8 type, int a1) {
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

u8 ov80_02237B58(u8 type, int a1) {
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

BattleSetup *ov80_02237B8C(UnkStruct_Ov80_02237A70 *ctx, FrontierLaunchArgs *args) {
    u8 trainerData[0x30];
    BattleSetup *setup;
    Pokemon *mon;
    int playerMonCount;
    int opponentMonCount;
    int i;
    int slot;

    playerMonCount = ov80_02237B24(ctx->type, 0);
    opponentMonCount = ov80_02237B58(ctx->type, 0);
    HealParty(ctx->unk2C);
    setup = BattleSetup_New(HEAP_ID_FIELD2, ov80_02237D5C(ctx->type));
    sub_02051D18(setup, NULL, args->saveData, args->mapId, args->bagCursor, args->unk1C);
    setup->battleBg = BATTLE_BG_BATTLE_CASTLE;
    setup->terrain = TERRAIN_BATTLE_CASTLE;
    Party_InitWithMaxSize(setup->party[0], playerMonCount);
    slot = (sub_0203769C() == 0) ? 0 : 2;
    mon = AllocMonZeroed(HEAP_ID_FIELD2);
    for (i = 0; i < playerMonCount; i++) {
        CopyPokemonToPokemon(Party_GetMonByIndex(ctx->unk28, slot), mon);
        BattleSetup_AddMonToParty(setup, mon, 0);
        slot++;
    }
    Heap_Free(mon);
    BattleSetup_SetAllySideBattlersToPlayer(setup);
    Heap_Free(ov80_02229F04(trainerData, ctx->unk30[ctx->unk11], HEAP_ID_FIELD2, 0xCC));
    ov80_0222A480(setup, trainerData, opponentMonCount, 1, HEAP_ID_FIELD2);
    Party_InitWithMaxSize(setup->party[1], ov80_02237B58(ctx->type, 0));
    for (i = 0; i < 4; i++) {
        setup->trainer[i].data.aiFlags = ov80_02237E88(ctx);
    }
    mon = AllocMonZeroed(HEAP_ID_FIELD2);
    for (i = 0; i < opponentMonCount; i++) {
        CopyPokemonToPokemon(Party_GetMonByIndex(ctx->unk2C, i), mon);
        BattleSetup_AddMonToParty(setup, mon, 1);
    }
    Heap_Free(mon);
    switch (ctx->type) {
    case 2:
    case 3:
        BattleSetup_SetAllySideBattlersToPlayer(setup);
        PlayerProfile_Copy(sub_02034818(1 - sub_0203769C()), setup->profile[2]);
        Heap_Free(ov80_02229F04(trainerData, ctx->unk30[ctx->unk11 + 7], HEAP_ID_FIELD2, 0xCC));
        ov80_0222A480(setup, trainerData, opponentMonCount, 3, HEAP_ID_FIELD2);
        Party_InitWithMaxSize(setup->party[3], ov80_02237B58(ctx->type, 0));
        mon = AllocMonZeroed(HEAP_ID_FIELD2);
        slot = opponentMonCount;
        for (i = 0; i < opponentMonCount; i++) {
            CopyPokemonToPokemon(Party_GetMonByIndex(ctx->unk2C, slot), mon);
            BattleSetup_AddMonToParty(setup, mon, 3);
            slot++;
        }
        Heap_Free(mon);
        break;
    }
    return setup;
}

int ov80_02237D5C(int type) {
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

int ov80_02237D88(UnkStruct_Ov80_02237A70 *ctx) {
    return 0x32;
}

BOOL ov80_02237D8C(int type) {
    switch (type) {
    case 2:
    case 3:
        return TRUE;
    }
    return FALSE;
}

void ov80_02237D9C(Party *party) {
    int i;
    int count = Party_GetCount(party);
    for (i = 0; i < count; i++) {
        Pokemon *mon = Party_GetMonByIndex(party, i);
        if (GetMonData(mon, MON_DATA_SPECIES_EXISTS, NULL) != 0) {
            u32 value;
            if (GetMonData(mon, MON_DATA_HP, NULL) == 0) {
                value = 1;
                SetMonData(mon, MON_DATA_HP, &value);
            }
            value = 0;
            SetMonData(mon, MON_DATA_STATUS, &value);
        }
    }
}

void ov80_02237DF4(UnkStruct_Ov80_02237A70 *ctx, Pokemon *mon) {
    sub_0207217C(mon, Save_PlayerData_GetProfile(ctx->saveData), 4, 0, 0, HEAP_ID_FIELD2);
}

void ov80_02237E18(UnkStruct_Ov80_02237A70 *ctx, Party *party, Pokemon *mon) {
    ov80_02237DF4(ctx, mon);
    Party_AddMon(party, mon);
}

void ov80_02237E30(UnkStruct_Ov80_02237A70 *ctx) {
    Pokemon *mon;
    int i;
    int count;
    u8 *entry;
    SaveArray_Party_Init(ctx->unk2C);
    count = ov80_02237B58(ctx->type, 1);
    mon = AllocMonZeroed(HEAP_ID_FIELD2);
    entry = ctx->unk288;
    for (i = 0; i < count; i++) {
        ov80_0222A140(entry, mon, ov80_02237D88(ctx));
        ov80_02237E18(ctx, ctx->unk2C, mon);
        entry += 0x38;
    }
    Heap_Free(mon);
}

int ov80_02237E88(UnkStruct_Ov80_02237A70 *ctx) {
    int v;
    if (ctx->type == 0) {
        if ((u16)(ctx->unk30[ctx->unk11] + 0xFEC7) <= 1) {
            return 7;
        }
    }
    v = 7;
    switch (ov80_02237ED8(ctx) + 1) {
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

u32 ov80_02237ED8(UnkStruct_Ov80_02237A70 *ctx) {
    u16 result = ctx->unk16;
    if (ov80_02237D8C(ctx->type) == 1) {
        if (ctx->unkA12 > ctx->unk16) {
            result = ctx->unkA12;
        }
    }
    return result;
}

void ov80_02237EFC(BgConfig *bgConfig, UnkStruct_Ov80_02237A70 *ctx, u8 bgId) {
    u16 tilemap[30];
    ov80_02237F3C(tilemap, ov80_02237ED8(ctx));
    LoadRectToBgTilemapRect(bgConfig, bgId, tilemap, 0xB, 6, 0xA, 3);
    ScheduleBgTilemapBufferTransfer(bgConfig, bgId);
}

void ov80_02237F3C(u16 *dst, u32 value) {
    u8 column[10];
    int i;
    int row;
    int col;
    int base;
    value = ov80_02237F9C(value);
    for (i = 0; i < 5; i++) {
        column[i] = i;
        column[i + 5] = 4 - i;
    }
    base = 0x60 * value + 0x10;
    for (row = 0; row < 3; row++) {
        for (col = 0; col < 10; col++) {
            dst[row * 10 + col] = column[col] + base;
            if (col >= 5) {
                dst[row * 10 + col] |= 0x400;
            }
        }
        base += 0x20;
    }
}

u32 ov80_02237F9C(u32 value) {
    if (value >= 8) {
        value = 7;
    }
    return value;
}

void ov80_02237FA4(FrontierSave *save, u8 type, u16 delta) {
    u32 stat;
    sub_02031248(save, sub_0205C1F0(type), sub_0205C268(sub_0205C1F0(type)), delta);
    stat = FrontierSave_GetStat(save, sub_0205C218(type), sub_0205C268(sub_0205C218(type)));
    if ((int)(stat + delta) > 9999) {
        sub_02031108(save, sub_0205C218(type), sub_0205C268(sub_0205C218(type)), 9999);
    } else {
        sub_02031228(save, sub_0205C218(type), sub_0205C268(sub_0205C218(type)), delta);
    }
}
