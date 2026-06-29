#include <nitro/mi/memory.h>

#include "global.h"

#include "battle/battle_setup.h"
#include "frontier/frontier.h"
#include "frontier/frontier_script_context.h"
#include "frontier/frontier_system.h"
#include "frontier/overlay_80_02229EE0.h"
#include "frontier/overlay_80_0222BDF4.h"
#include "frontier/overlay_80_022372D8.h"

#include "gf_gfx_planes.h"
#include "heap.h"
#include "launch_application.h"
#include "party.h"
#include "pokemon.h"
#include "sound_02004A44.h"
#include "unk_02096910.h"

// Defined in src/unk_02030A98.c; intentionally not in the frozen public header.
u32 sub_02030B14(void *p);
u8 sub_02030BD0(int idx, u8 *base);
void sub_02030BF4(int idx, u8 *base, u8 val);

// Defined in asm/overlay_80_022310C4.s (no header yet).
u32 ov80_022310C4(SaveData *saveData, u32 a, u8 b, u8 c, u8 d);
void ov80_022313C0(void *data, u32 a1);
void ov80_022314A0(void *data);
void ov80_022314DC(void *data, void *args);
void ov80_0223151C(void *data, u16 *out);
void ov80_0223157C(void *data, u32 a1);
u16 ov80_022317C0(void *data);
u16 ov80_022317CC(void *data);
u16 ov80_022317D0(void *data, u8 a1);
void ov80_02231804(void *data);
void ov80_02231828(void *data);
u16 ov80_02231844(void *data, u32 a, u32 b);
u16 ov80_02231888(void *data);
void ov80_022319B0(void *data);
void ov80_02231A04(void *data);

extern const OverlayManagerTemplate ov80_0223BDEC;

BOOL FrtCmd_139(FrontierScriptContext *ctx);
BOOL FrtCmd_140(FrontierScriptContext *ctx);
BOOL FrtCmd_141(FrontierScriptContext *ctx);
BOOL FrtCmd_142(FrontierScriptContext *ctx);
BOOL FrtCmd_143(FrontierScriptContext *ctx);
BOOL FrtCmd_144(FrontierScriptContext *ctx);
BOOL FrtCmd_145(FrontierScriptContext *ctx);
BOOL FrtCmd_146(FrontierScriptContext *ctx);
BOOL FrtCmd_147(FrontierScriptContext *ctx);
BOOL FrtCmd_148(FrontierScriptContext *ctx);
BOOL FrtCmd_149(FrontierScriptContext *ctx);
BOOL FrtCmd_118(FrontierScriptContext *ctx);
BOOL FrtCmd_199(FrontierScriptContext *ctx);

static void ov80_02230D5C(void *args);
static BOOL ov80_02231040(FrontierScriptContext *ctx);

typedef struct FrtCmd142Work {
    SaveData *saveData; // 0x00
    u8 mode;            // 0x04
    u8 unk5;            // 0x05
    u8 filler_06[2];    // 0x06
    void *unk8;         // 0x08
    Party *party;       // 0x0c
    u8 *data;           // 0x10
    void *unk14;        // 0x14
    u16 counter;        // 0x18
    u8 filler_1a[6];    // 0x1a
} FrtCmd142Work;        // 0x20

BOOL FrtCmd_139(FrontierScriptContext *ctx) {
    u32 a = FrontierScript_ReadVar(ctx);
    u32 b = FrontierScript_ReadVar(ctx);
    u32 c = FrontierScript_ReadVar(ctx);
    u32 d = FrontierScript_ReadVar(ctx);
    Frontier_SetData(ctx->frontierSystem->unk0,
        ov80_022310C4(Frontier_GetLaunchArgs(ctx->frontierSystem->unk0)->saveData, a, b, c, d));
    return FALSE;
}

BOOL FrtCmd_140(FrontierScriptContext *ctx) {
    u32 a = FrontierScript_ReadVar(ctx);
    ov80_022313C0(Frontier_GetData(ctx->frontierSystem->unk0), a);
    return FALSE;
}

BOOL FrtCmd_141(FrontierScriptContext *ctx) {
    ov80_022314A0(Frontier_GetData(ctx->frontierSystem->unk0));
    return FALSE;
}

BOOL FrtCmd_142(FrontierScriptContext *ctx) {
    FrontierLaunchArgs *args = Frontier_GetLaunchArgs(ctx->frontierSystem->unk0);
    u8 *data = Frontier_GetData(ctx->frontierSystem->unk0);
    FrtCmd142Work *work = Heap_Alloc(HEAP_ID_FIELD2, 0x20);
    Party *party;

    MI_CpuFill8(work, 0, 0x20);
    work->saveData = args->saveData;
    work->mode = data[4];
    work->data = data;
    work->unk8 = data + 0x704 + data[4] * 9;
    work->party = *(Party **)(data + 0x264);
    work->counter = *(u16 *)(data + 8);
    work->unk5 = data[0x6f5];
    work->unk14 = data + 0xd84;

    SaveArray_Party_Init(work->party);
    party = SaveArray_Party_Get(args->saveData);
    Party_AddMon(work->party, Party_GetMonByIndex(party, data[0x260]));
    if (work->mode == 1) {
        Party_AddMon(work->party, Party_GetMonByIndex(party, data[0x261]));
    } else if ((u8)(work->mode + 0xfe) <= 1) {
        Party_AddMon(work->party, *(Pokemon **)(data + 0xd8c));
    }
    Frontier_LaunchApplication(ctx->frontierSystem->unk0, &ov80_0223BDEC, work, 0, ov80_02230D5C);
    return TRUE;
}

BOOL FrtCmd_143(FrontierScriptContext *ctx) {
    u8 *data = Frontier_GetData(ctx->frontierSystem->unk0);
    BattleSetup *bs = *(BattleSetup **)(data + 0x700);
    *(u32 *)(data + 0x14) = IsBattleResultWin(bs->winFlag);
    BattleSetup_Delete(bs);
    return FALSE;
}

BOOL FrtCmd_144(FrontierScriptContext *ctx) {
    FrontierLaunchArgs *args = Frontier_GetLaunchArgs(ctx->frontierSystem->unk0);
    u8 *data = Frontier_GetData(ctx->frontierSystem->unk0);
    BattleSetup *bs = ov80_022375D0(data, args);
    *(BattleSetup **)(data + 0x700) = bs;
    Sound_SetSceneAndPlayBGM(5, 0x45d, 1);
    Frontier_LaunchApplication(ctx->frontierSystem->unk0, &gOverlayTemplate_Battle, bs, 0, NULL);
    return TRUE;
}

static void ov80_02230D5C(void *args) {
    FrtCmd142Work *work = args;
    ov80_022314DC(work->data, work);
    Heap_Free(work);
}

BOOL FrtCmd_145(FrontierScriptContext *ctx) {
    u8 cmd = *ctx->scriptPtr++;
    u8 arg = *ctx->scriptPtr++;
    u16 *out;
    FrontierLaunchArgs *args;
    u8 *data;

    ctx->scriptPtr++;
    out = FrontierScript_ReadVarPtr(ctx);
    args = Frontier_GetLaunchArgs(ctx->frontierSystem->unk0);
    data = Frontier_GetData(ctx->frontierSystem->unk0);

    switch (cmd) {
    case 2:
        data[4] = arg;
        break;
    case 3:
        *out = *(u16 *)(data + 0x6f2);
        break;
    case 4:
        *out = *(u16 *)(data + 8);
        break;
    case 5:
        if (*(u16 *)(data + 8) < 0x270f) {
            (*(u16 *)(data + 8))++;
        }
        break;
    case 7:
        OS_ResetSystem(0);
        break;
    case 9:
        *out = sub_02030B14(*(void **)(data + 0x6f8));
        break;
    case 10:
        ov80_0223157C(data, 2);
        break;
    case 14:
        *out = ov80_022317C0(data);
        break;
    case 19:
        if (data[4] == 2) {
            *out = 0xa;
        } else {
            *out = *(u16 *)(data + 0xa);
        }
        break;
    case 20:
        *out = ov80_022317D0(data, arg);
        break;
    case 21:
        ov80_02231804(data);
        break;
    case 22:
        ov80_02231828(data);
        break;
    case 23:
        *out = ov80_022317CC(data);
        break;
    case 24:
        *out = data[0xd88];
        break;
    case 27: {
        Party *party = SaveArray_Party_Get(args->saveData);
        int n = ov80_0223787C(data[4]);
        int i;
        for (i = 0; i < n; i++) {
            SetMonData(Party_GetMonByIndex(party, data[0x260 + i]), MON_DATA_HELD_ITEM, &((u16 *)(data + 0x728))[i]);
        }
        break;
    }
    case 28: {
        u8 v = sub_02030BD0(data[0x6f5], data + 0x704 + data[4] * 9);
        if (v < 0xa) {
            sub_02030BF4(data[0x6f5], data + 0x704 + data[4] * 9, (u8)(v + 1));
        }
        break;
    }
    case 29:
        sub_02096910(data);
        break;
    case 30:
        *out = ov80_0223792C(data[4]);
        break;
    case 17:
        *out = data[4];
        break;
    case 31:
        if (arg == 0) {
            GfGfx_EngineATogglePlanes(4, 1);
        } else {
            GfGfx_EngineATogglePlanes(4, 0);
        }
        break;
    case 32:
        ov80_0222A474((FrontierTrainerData *)(data + 0x40), ((u16 *)(data + 0x18))[data[5] * 2], HEAP_ID_FIELD2, NARC_a_2_0_2);
        ov80_0222A474((FrontierTrainerData *)(data + 0x150), ((u16 *)(data + 0x18))[data[5] * 2 + 1], HEAP_ID_FIELD2, NARC_a_2_0_2);
        break;
    case 33:
        *out = sub_02030BD0(data[0x6f5], data + 0x704 + data[4] * 9);
        break;
    case 34:
        *out = ov80_02231888(data);
        break;
    case 15:
        *out = GetMonData(Party_GetMonByIndex(SaveArray_Party_Get(args->saveData), data[0x260]), MON_DATA_SPECIES, NULL);
        break;
    case 35:
        ov80_022319B0(data);
        break;
    case 36:
        ov80_02231A04(data);
        break;
    case 37:
        *out = 0;
        if (data[4] == 0) {
            int v = *(u16 *)(data + 8) + 1;
            if (v == 0x32) {
                *out = 1;
            } else if (v == 0xaa) {
                *out = 2;
            }
        }
        break;
    case 38:
        break;
    }
    return FALSE;
}

BOOL FrtCmd_146(FrontierScriptContext *ctx) {
    u16 *out = FrontierScript_ReadVarPtr(ctx);
    u8 *data = Frontier_GetData(ctx->frontierSystem->unk0);
    *out = *(u32 *)(data + 0x14);
    return FALSE;
}

BOOL FrtCmd_147(FrontierScriptContext *ctx) {
    u32 a = FrontierScript_ReadVar(ctx);
    u32 b = FrontierScript_ReadVar(ctx);
    u16 *out = FrontierScript_ReadVarPtr(ctx);
    u8 *data = Frontier_GetData(ctx->frontierSystem->unk0);
    *out = ov80_02231844(data, a, b);
    return TRUE;
}

BOOL FrtCmd_148(FrontierScriptContext *ctx) {
    ctx->data[0] = FrontierScriptContext_ReadHalfWord(ctx);
    FrontierScriptContext_Pause(ctx, ov80_02231040);
    return TRUE;
}

static BOOL ov80_02231040(FrontierScriptContext *ctx) {
    u8 *data;
    ov80_0222BE9C(ctx, ctx->data[0]);
    data = Frontier_GetData(ctx->frontierSystem->unk0);
    if (data[0xd90] >= 2) {
        data[0xd90] = 0;
        return TRUE;
    }
    return FALSE;
}

BOOL FrtCmd_149(FrontierScriptContext *ctx) {
    u8 *data;
    u8 b;
    Frontier_GetLaunchArgs(ctx->frontierSystem->unk0);
    b = *ctx->scriptPtr++;
    data = Frontier_GetData(ctx->frontierSystem->unk0);
    if (data == NULL) {
        return FALSE;
    }
    ov80_0222F44C(ctx, (u16 *)(data + 0x58 + b * 0x110));
    return TRUE;
}

BOOL FrtCmd_118(FrontierScriptContext *ctx) {
    u16 *out = FrontierScript_ReadVarPtr(ctx);
    ov80_0223151C(Frontier_GetData(ctx->frontierSystem->unk0), out);
    return TRUE;
}

BOOL FrtCmd_199(FrontierScriptContext *ctx) {
#pragma unused(ctx)
    return FALSE;
}
