// WIP / DEFERRED (15/19 functions byte-match). Compiles cleanly; main.lsf is
// intentionally kept on asm/overlay_80_0222F608.o so the ROM matches. To resume:
// flip main.lsf to src/frontier/overlay_80_0222F608.o and finish the rest.
//
// Battle Frontier script commands FrtCmd_092..107 + 3 helpers. Frontier-script
// family (siblings in src/frontier/overlay_80_*.c). ctx->frontierSystem->unk0 is
// the system handle; FrontierScript_ReadVar/ReadVarPtr read args; the frontier
// data (Frontier_GetData) is a large struct accessed by raw u8* offsets.
//
// Still mismatching (4):
//  - FrtCmd_095 / FrtCmd_098 (SIZE +4 each): register-reuse scheduling tie in the
//    0x24 launch-arg struct build (asm sets r3=0 early and reuses it for p[6]=0
//    while keeping a3=2 for Frontier_LaunchApplication til the call; MWCC-on-this-C
//    materializes a3=2 early + a fresh 0 for p[6]). See [[mwcc-stack-slots-reverse-
//    decl-order]] / register-reuse.
//  - ov80_0222FC08 (1B): branch-polarity tie (asm `cmp #0xff; blt then`; both the
//    `< 0xff` and inverted `>= 0xff` C forms miss by 1-4B).
//  - FrtCmd_103 (SIZE +56): the 42-case dispatcher (jump table + raw-offset struct
//    field accesses). The simple cases are translated; cases 17/18/34/39 (mon-count
//    loops, AllocMonZeroed/ov80_0222A140/GetMonData, the species-tally) are SEMANTIC
//    GUESSES that need re-derivation against the asm. Verify the jump-table case
//    order and the data-struct offsets (0x3F0 trainer sub-structs stride 0x38).

#include <nitro/mi/memory.h>

#include "global.h"

#include "battle/battle_setup.h"
#include "frontier/frontier.h"
#include "frontier/frontier_script_context.h"
#include "frontier/frontier_system.h"
#include "frontier/overlay_80_0222BDF4.h"
#include "frontier/overlay_80_02236B78.h"

#include "bg_window.h"
#include "heap.h"
#include "party.h"
#include "pokemon.h"
#include "sys_task_api.h"
#include "unk_02096910.h"

extern u16 ov80_0222FD08(void *a0, u32 a1, u8 a2, u8 a3);
extern void ov80_0222FEEC(void *a0, u32 a1);
extern void ov80_02230424(void *a0);
extern void ov80_02230460(void *a0, void *a1);
extern void ov80_022307F0(void *a0);
extern void ov80_022308C4(void *a0);
extern void ov80_022309F8(void *a0);
extern void ov80_02230A60(void *a0);
extern void ov80_0223049C(void *a0, int a1);
extern u16 ov80_02230784(void *a0);
extern u16 ov80_02230790(void *a0);
extern u16 ov80_02230794(void *a0, u32 a1);
extern void ov80_022307C8(void *a0);
extern void ov80_022307D4(void *a0);
extern void ov80_02230AE4(void *a0);
extern u16 ov80_02230AF8(void *a0, u32 a1, u32 a2);
extern u16 ov80_02230B4C(void *a0);
extern void ov80_0222A140(void *a0, Pokemon *mon);
extern void ov80_0222A474(void *a0, u16 a1, int a2, int a3);
extern void ov80_0222A52C(void *a0, void *a1, void *a2, void *a3, int a4, int a5, int a6, int a7);
extern u16 sub_0203095C(int a0);

BOOL FrtCmd_092(FrontierScriptContext *ctx);
BOOL FrtCmd_093(FrontierScriptContext *ctx);
BOOL FrtCmd_094(FrontierScriptContext *ctx);
BOOL FrtCmd_095(FrontierScriptContext *ctx);
BOOL FrtCmd_096(FrontierScriptContext *ctx);
BOOL FrtCmd_097(FrontierScriptContext *ctx);
BOOL FrtCmd_098(FrontierScriptContext *ctx);
static void ov80_0222F7CC(void *a0);
BOOL FrtCmd_099(FrontierScriptContext *ctx);
BOOL FrtCmd_100(FrontierScriptContext *ctx);
BOOL FrtCmd_101(FrontierScriptContext *ctx);
BOOL FrtCmd_102(FrontierScriptContext *ctx);
BOOL FrtCmd_103(FrontierScriptContext *ctx);
static void ov80_0222FC08(SysTask *task, void *data);
BOOL FrtCmd_104(FrontierScriptContext *ctx);
BOOL FrtCmd_105(FrontierScriptContext *ctx);
BOOL FrtCmd_106(FrontierScriptContext *ctx);
static BOOL ov80_0222FCA0(FrontierScriptContext *ctx);
BOOL FrtCmd_107(FrontierScriptContext *ctx);

extern const OverlayManagerTemplate ov80_0223BDB4;
extern const OverlayManagerTemplate ov80_0223BDC4;
extern const OverlayManagerTemplate gOverlayTemplate_Battle;

BOOL FrtCmd_092(FrontierScriptContext *ctx) {
    u32 a = FrontierScript_ReadVar(ctx);
    u32 b = FrontierScript_ReadVar(ctx);
    u32 c = FrontierScript_ReadVar(ctx);
    Frontier_SetData(ctx->frontierSystem->unk0,
        ov80_0222FD08(Frontier_GetLaunchArgs(ctx->frontierSystem->unk0)->saveData, a, b, c));
    return FALSE;
}

BOOL FrtCmd_093(FrontierScriptContext *ctx) {
    u32 a = FrontierScript_ReadVar(ctx);
    ov80_0222FEEC(Frontier_GetData(ctx->frontierSystem->unk0), a);
    return FALSE;
}

BOOL FrtCmd_094(FrontierScriptContext *ctx) {
    ov80_02230424(Frontier_GetData(ctx->frontierSystem->unk0));
    return FALSE;
}

BOOL FrtCmd_095(FrontierScriptContext *ctx) {
    FrontierLaunchArgs *args = Frontier_GetLaunchArgs(ctx->frontierSystem->unk0);
    u8 *data = Frontier_GetData(ctx->frontierSystem->unk0);
    u8 *p = Heap_Alloc((enum HeapID)11, 0x24);
    MI_CpuFill8(p, 0, 0x24);
    *(void **)p = args->saveData;
    p[4] = data[4];
    p[5] = data[5];
    p[6] = 0;
    *(u32 *)(p + 8) = *(u32 *)(data + 0x4D4);
    *(u32 *)(p + 0xc) = *(u32 *)(data + 0x4D8);
    *(void **)(p + 0x1c) = data;
    Frontier_LaunchApplication(ctx->frontierSystem->unk0, &ov80_0223BDB4, p, 2, ov80_0222F7CC);
    return TRUE;
}

BOOL FrtCmd_096(FrontierScriptContext *ctx) {
    u8 *data = Frontier_GetData(ctx->frontierSystem->unk0);
    BattleSetup *setup = *(BattleSetup **)(data + 0x4FC);
    *(u32 *)(data + 0x14) = IsBattleResultWin(*(u32 *)((u8 *)setup + 0x14));
    BattleSetup_Delete(setup);
    return FALSE;
}

BOOL FrtCmd_097(FrontierScriptContext *ctx) {
    FrontierLaunchArgs *args = Frontier_GetLaunchArgs(ctx->frontierSystem->unk0);
    u8 *data = Frontier_GetData(ctx->frontierSystem->unk0);
    BattleSetup *setup = ov80_02236F24(data, args);
    *(BattleSetup **)(data + 0x4FC) = setup;
    Frontier_LaunchApplication(ctx->frontierSystem->unk0, &gOverlayTemplate_Battle, setup, 0, NULL);
    return TRUE;
}

BOOL FrtCmd_098(FrontierScriptContext *ctx) {
    FrontierLaunchArgs *args = Frontier_GetLaunchArgs(ctx->frontierSystem->unk0);
    u8 *data = Frontier_GetData(ctx->frontierSystem->unk0);
    u8 *p;
    int i;
    for (i = 0; i < 6; i++) {
        *(u16 *)(data + 0x4DC + i * 2) = 0;
    }
    p = Heap_Alloc((enum HeapID)11, 0x24);
    MI_CpuFill8(p, 0, 0x24);
    *(void **)p = args->saveData;
    p[4] = data[4];
    p[5] = data[5];
    p[6] = 1;
    *(u32 *)(p + 8) = *(u32 *)(data + 0x4D4);
    *(u32 *)(p + 0xc) = *(u32 *)(data + 0x4D8);
    *(void **)(p + 0x1c) = data;
    Frontier_LaunchApplication(ctx->frontierSystem->unk0, &ov80_0223BDC4, p, 2, ov80_0222F7CC);
    return TRUE;
}

static void ov80_0222F7CC(void *a0) {
    u8 *p = a0;
    ov80_02230460(*(void **)(p + 0x1c), p);
    Heap_Free(p);
}

BOOL FrtCmd_099(FrontierScriptContext *ctx) {
    ov80_022307F0(Frontier_GetData(ctx->frontierSystem->unk0));
    return FALSE;
}

BOOL FrtCmd_100(FrontierScriptContext *ctx) {
    ov80_022308C4(Frontier_GetData(ctx->frontierSystem->unk0));
    return FALSE;
}

BOOL FrtCmd_101(FrontierScriptContext *ctx) {
    ov80_022309F8(Frontier_GetData(ctx->frontierSystem->unk0));
    return FALSE;
}

BOOL FrtCmd_102(FrontierScriptContext *ctx) {
    ov80_02230A60(Frontier_GetData(ctx->frontierSystem->unk0));
    return FALSE;
}

BOOL FrtCmd_103(FrontierScriptContext *ctx) {
    u8 cmd = *ctx->scriptPtr++;
    u8 arg1 = *ctx->scriptPtr++;
    u8 arg2 = *ctx->scriptPtr++;
    u16 *out = FrontierScript_ReadVarPtr(ctx);
    u8 *data = Frontier_GetData(ctx->frontierSystem->unk0);
    void *frontierMap = FrontierSystem_GetFrontierMap(ctx->frontierSystem);
    switch (cmd) {
    case 0:
        data[7] = arg1;
        break;
    case 1:
        data[5] = arg1;
        break;
    case 2:
        data[4] = arg1;
        break;
    case 3:
        *out = *(u16 *)(data + 0x4DC + arg1 * 2);
        break;
    case 4:
        *out = *(u16 *)(data + 0xc);
        break;
    case 5:
        if (*(u16 *)(data + 0xc) < 0x270F) {
            *(u16 *)(data + 0xc) = *(u16 *)(data + 0xc) + 1;
        }
        break;
    case 7:
        OS_ResetSystem(0);
        break;
    case 9:
        *out = sub_0203095C(*(int *)(data + 0x4F4));
        break;
    case 10:
        ov80_0223049C(data, 2);
        break;
    case 14:
        *out = ov80_02230784(data);
        break;
    case 15:
        *out = *(u16 *)(data + arg1 * 0x38 + 0x3F0) & 0x7FF;
        break;
    case 16:
        *out = *(u16 *)(data + arg1 * 0x38 + arg2 * 2 + 0x3F4);
        break;
    case 17: {
        Pokemon *mon = AllocMonZeroed((enum HeapID)11);
        ov80_0222A140(data + arg1 * 0x38 + 0x3F0, mon);
        *out = GetMonData(mon, MON_DATA_SPECIES, NULL);
        Heap_Free(mon);
        break;
    }
    case 18: {
        int count = ov80_02236DF8(data[4], 1);
        Pokemon *mon = AllocMonZeroed((enum HeapID)11);
        int counts[18];
        int i;
        int best;
        for (i = 0; i < 18; i++) {
            counts[i] = 0;
        }
        for (i = 0; i < count; i++) {
            int species;
            int form;
            ov80_0222A140(data + 0x3F0, mon);
            species = GetMonData(mon, MON_DATA_SPECIES, NULL);
            form = GetMonData(mon, MON_DATA_FORM, NULL);
            if (species == form) {
                species = 0xff;
            }
            counts[species]++;
            if (species != 0xff) {
                counts[species]++;
            }
        }
        Heap_Free(mon);
        best = 0;
        for (i = 0; i < 18; i++) {
            if (counts[i] >= counts[0]) {
                best = i;
            }
        }
        if (counts[best] <= 1) {
            *out = 0xff;
        } else {
            *out = best;
        }
        break;
    }
    case 19:
        *out = ov80_022372B4(data);
        break;
    case 20:
        *out = ov80_02230794(data, arg1);
        break;
    case 21:
        ov80_022307C8(data);
        break;
    case 22:
        ov80_022307D4(data);
        break;
    case 23:
        *out = ov80_02230790(data);
        break;
    case 24:
        *out = data[0x57C];
        break;
    case 26:
        *out = data[0x57D];
        break;
    case 27:
        sub_02096910(data);
        break;
    case 28:
        *out = ov80_02237254(data[4]);
        break;
    case 29:
        *out = data[4];
        break;
    case 30:
        BgTilemapRectChangePalette(*(BgConfig **)frontierMap, 3, 3, 0xa, 0x1a, 0xb, arg1);
        ScheduleBgTilemapBufferTransfer(*(BgConfig **)frontierMap, 3);
        break;
    case 31:
        *(SysTask **)(data + 0x500) = SysTask_CreateOnMainQueue(ov80_0222FC08, FrontierSystem_GetFrontierMap(ctx->frontierSystem), 5);
        break;
    case 32:
        if (*(SysTask **)(data + 0x500) != NULL) {
            SysTask_Destroy(*(SysTask **)(data + 0x500));
            *(SysTask **)(data + 0x500) = NULL;
        }
        break;
    case 33:
        ov80_0222A474(data + 0x34, *(u16 *)(data + data[6] * 2 + 0x18), 0xb, 0xcc);
        ov80_0222A474(data + 0x144, *(u16 *)(data + (data[6] + 7) * 2 + 0x18), 0xb, 0xcc);
        break;
    case 34: {
        int n = ov80_02236DD4(data[4]);
        int i;
        for (i = 0; i < n; i++) {
            BufferBoxMonSpeciesName(ctx->frontierSystem->unk44, i, Mon_GetBoxMon(Party_GetMonByIndex(*(Party **)(data + 0x4D4), i)));
        }
        break;
    }
    case 35:
        *out = ov80_02230B4C(data);
        break;
    case 36:
        ov80_02230AE4(data);
        break;
    case 37:
        *out = 0;
        if (data[4] == 0) {
            u16 v = *(u16 *)(data + 0xc) + 1;
            if (v == 0x15) {
                *out = 1;
            } else if (v == 0x31) {
                *out = 2;
            }
        }
        break;
    case 38:
        ov80_022371B0(data);
        break;
    case 39:
        ov80_0222A52C(data + 0x3F0, data + 0x3D2, data + 0x3DA, data + 0x3E0, 0, 4, 0xb, 0xcd);
        break;
    case 40:
        ov80_02237130(data);
        break;
    case 41:
        *out = data[0xb];
        data[0xb] = 1;
        break;
    default:
        break;
    }
    return FALSE;
}

static void ov80_0222FC08(SysTask *task, void *data) {
    if (Bg_GetYpos(*(BgConfig **)data, (GFBgLayer)2) < 0xff) {
        ScheduleSetBgPosText(*(BgConfig **)data, 2, (enum BgPosAdjustOp)3, 0);
    } else {
        ScheduleSetBgPosText(*(BgConfig **)data, 2, (enum BgPosAdjustOp)4, 1);
    }
}

BOOL FrtCmd_104(FrontierScriptContext *ctx) {
    u16 *out = FrontierScript_ReadVarPtr(ctx);
    *out = *(u32 *)((u8 *)Frontier_GetData(ctx->frontierSystem->unk0) + 0x14);
    return FALSE;
}

BOOL FrtCmd_105(FrontierScriptContext *ctx) {
    u32 a = FrontierScript_ReadVar(ctx);
    u32 b = FrontierScript_ReadVar(ctx);
    u16 *out = FrontierScript_ReadVarPtr(ctx);
    *out = ov80_02230AF8(Frontier_GetData(ctx->frontierSystem->unk0), a, b);
    return TRUE;
}

BOOL FrtCmd_106(FrontierScriptContext *ctx) {
    *(u16 *)((u8 *)ctx + 0x78) = FrontierScriptContext_ReadHalfWord(ctx);
    FrontierScriptContext_Pause(ctx, ov80_0222FCA0);
    return TRUE;
}

static BOOL ov80_0222FCA0(FrontierScriptContext *ctx) {
    u8 *data;
    ov80_0222BE9C(ctx, *(u16 *)((u8 *)ctx + 0x78));
    data = Frontier_GetData(ctx->frontierSystem->unk0);
    if (data[0x702] >= 2) {
        data[0x702] = 0;
        return TRUE;
    }
    return FALSE;
}

BOOL FrtCmd_107(FrontierScriptContext *ctx) {
    void *data;
    u8 idx;
    Frontier_GetLaunchArgs(ctx->frontierSystem->unk0);
    idx = *ctx->scriptPtr++;
    data = Frontier_GetData(ctx->frontierSystem->unk0);
    if (data == NULL) {
        return FALSE;
    }
    ov80_0222F44C(ctx, (u16 *)((u8 *)data + 0x4c + (idx + idx * 16) * 16));
    return TRUE;
}
