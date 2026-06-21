#include <nitro/mi/memory.h>

#include "global.h"

#include "battle/battle_setup.h"
#include "frontier/frontier.h"
#include "frontier/frontier_script_context.h"
#include "frontier/frontier_system.h"
#include "frontier/overlay_80_0222BDF4.h"

#include "error_handling.h"
#include "game_stats.h"
#include "launch_application.h"
#include "save.h"
#include "scrcmd_9.h"
#include "sound_02004A44.h"
#include "unk_02005D10.h"
#include "unk_02035900.h"
#include "unk_020379A0.h"
#include "unk_0204A3F4.h"

extern u16 *ov80_0222BE24(FrontierScriptContext *ctx, u16 slot);
extern void ov80_0222F458(FrontierScriptContext *ctx, void *trainerEntry, u32 msgIdx);
extern void ov80_022357B4(FrontierFieldSystem *data, SaveData *saveData);
extern u16 ov80_02235898(FrontierFieldSystem *data, u32 trainerIdx);
extern void ov80_022358B0(FrontierFieldSystem *data, u32 val);
extern u8 ov80_022358C4(FrontierFieldSystem *data);
extern u16 ov80_022358E8(FrontierFieldSystem *data);
extern BattleSetup *ov80_0223690C(FrontierFieldSystem *data, FrontierLaunchArgs *launchArgs);
extern void ov80_02236ABC(FrontierFieldSystem *data, u32 val);
extern u16 ov80_02236AD8(FrontierFieldSystem *data, u16 *ptr);
extern u32 ov80_02236B18(u8 towerMode);
extern const u16 ov80_0223C034[];

static u32 ov80_0223558C(FrontierFieldSystem *data, int a1);
static BOOL ov80_0223573C(FrontierScriptContext *ctx);
static BOOL ov80_02235774(FrontierScriptContext *ctx, FrontierFieldSystem *data, SaveData *saveData, u16 mode, u16 extra);

BOOL FrtCmd_091(FrontierScriptContext *ctx);
BOOL FrtCmd_132(FrontierScriptContext *ctx);
BOOL FrtCmd_133(FrontierScriptContext *ctx);
BOOL FrtCmd_134(FrontierScriptContext *ctx);
BOOL FrtCmd_135(FrontierScriptContext *ctx);
BOOL FrtCmd_136(FrontierScriptContext *ctx);
BOOL FrtCmd_137(FrontierScriptContext *ctx);
BOOL FrtCmd_138(FrontierScriptContext *ctx);

BOOL FrtCmd_091(FrontierScriptContext *ctx) {
    FrontierScriptContext_ReadHalfWord(ctx);
    StopBGM(GF_GetCurrentPlayingBGM(), 0);
    return FALSE;
}

BOOL FrtCmd_132(FrontierScriptContext *ctx) {
    FrontierLaunchArgs *launchArgs = Frontier_GetLaunchArgs(ctx->frontierSystem->unk0);
    u16 sel = FrontierScriptContext_ReadHalfWord(ctx);
    u32 var = FrontierScript_ReadVar(ctx);
    u16 *varptr = FrontierScript_ReadVarPtr(ctx);
    FrontierFieldSystem *data = Frontier_GetData(ctx->frontierSystem->unk0);

    if (sel > 0x3b) {
        if (sel == 0x64) {
            if (data == NULL) {
                *varptr = 1;
            } else {
                *varptr = 0;
            }
        } else {
            GF_AssertFail();
        }
    } else if (sel < 0x21) {
        if (sel == 2) {
            ResetSystem();
        } else {
            GF_AssertFail();
        }
    } else {
        switch (sel) {
        case 0x21:
            *varptr = FrontierFieldSystem_GetFrontierBattleNumber(data);
            break;
        case 0x22:
            *varptr = ov80_022358C4(data);
            break;
        case 0x23:
            *varptr = FrontierFieldSystem_0204AC7C(data);
            break;
        case 0x24:
            *varptr = ov80_022358E8(data);
            break;
        case 0x25:
            FrontierFieldSystem_0204AD04(data, launchArgs->saveData);
            break;
        case 0x26:
            FrontierFieldSystem_0204AE20(data, launchArgs->saveData);
            break;
        case 0x27:
            FrontierFieldSystem_0204AF2C(data);
            break;
        case 0x28:
            ov80_022357B4(data, launchArgs->saveData);
            break;
        case 0x29:
            *varptr = ov80_02235898(data, var);
            break;
        case 0x2a:
            GF_AssertFail();
            break;
        case 0x2b:
            *varptr = FrontierFieldSystem_GetBattleTowerMode(data);
            break;
        case 0x2c:
            ov80_022358B0(data, var);
            break;
        case 0x2d:
            GF_AssertFail();
            break;
        case 0x2e:
            *varptr = (u16)FrontierFieldSystem_AwardTowerBattlePoints(data);
            GameStats_Add(Save_GameStats_Get(launchArgs->saveData), GAME_STAT_BATTLE_POINTS_RECEIVED, *varptr);
            break;
        case 0x2f:
        case 0x30:
        case 0x31:
        case 0x32:
        case 0x33:
        case 0x34:
        case 0x35:
        case 0x36:
            GF_AssertFail();
            break;
        case 0x37:
            *varptr = ov80_0223558C(data, (u8)var);
            break;
        case 0x38:
        case 0x39:
            GF_AssertFail();
            break;
        case 0x3a:
            MI_CpuFill8(data->unk884, 0, sizeof(data->unk884));
            break;
        case 0x3b:
            data->filler8D6[0] = 1;
            break;
        default:
            GF_AssertFail();
            break;
        }
    }
    return FALSE;
}

static u32 ov80_0223558C(FrontierFieldSystem *data, int a1) {
    if (a1 == 2) {
        return data->multiBattleAllyID;
    }
    if (a1 == 1) {
        if (data->towerMode == 2) {
            return ov80_0223C034[data->multiBattleAllyID];
        }
        if (data->linkAllyGender != 0) {
            return 0x61;
        }
        return 0;
    }
    if (data->trainerGender != 0) {
        return 0x61;
    }
    return 0;
}

BOOL FrtCmd_133(FrontierScriptContext *ctx) {
    Frontier_GetLaunchArgs(ctx->frontierSystem->unk0);
    u8 byte = FrontierScriptContext_ReadByte(ctx);
    FrontierFieldSystem *data = Frontier_GetData(ctx->frontierSystem->unk0);
    if (!data) {
        return FALSE;
    }
    u32 idx = ov80_02236B18(data->towerMode);
    ov80_0222F458(ctx, (u8 *)data + 0x90 + (u32)byte * 0x110, idx);
    return TRUE;
}

BOOL FrtCmd_134(FrontierScriptContext *ctx) {
    FrontierFieldSystem_Free(Frontier_GetData(ctx->frontierSystem->unk0));
    return FALSE;
}

BOOL FrtCmd_135(FrontierScriptContext *ctx) {
    FrontierLaunchArgs *launchArgs = Frontier_GetLaunchArgs(ctx->frontierSystem->unk0);
    FrontierFieldSystem *data = Frontier_GetData(ctx->frontierSystem->unk0);
    BattleSetup *battleSetup = ov80_0223690C(data, launchArgs);
    *(BattleSetup **)&data->filler8CA[6] = battleSetup;
    Sound_SetSceneAndPlayBGM(5, 0x45D, 1);
    Frontier_LaunchApplication(ctx->frontierSystem->unk0, &gOverlayTemplate_Battle, battleSetup, 0, NULL);
    return TRUE;
}

BOOL FrtCmd_136(FrontierScriptContext *ctx) {
    FrontierFieldSystem *data = Frontier_GetData(ctx->frontierSystem->unk0);
    u16 *varptr = FrontierScript_ReadVarPtr(ctx);
    BattleSetup *battleSetup = *(BattleSetup **)&data->filler8CA[6];
    *(u32 *)&data->filler8CA[2] = IsBattleResultWin(battleSetup->winFlag);
    *varptr = (u16) * (u32 *)&data->filler8CA[2];
    BattleSetup_Delete(battleSetup);
    return FALSE;
}

BOOL FrtCmd_137(FrontierScriptContext *ctx) {
    Frontier_GetLaunchArgs(ctx->frontierSystem->unk0);
    u32 var1 = FrontierScript_ReadVar(ctx);
    u32 var2 = FrontierScript_ReadVar(ctx);
    u16 *varptr = FrontierScript_ReadVarPtr(ctx);
    FrontierFieldSystem *data = Frontier_GetData(ctx->frontierSystem->unk0);
    if (var1 == 2) {
        ov80_02236ABC(data, var2);
    } else {
        GF_AssertFail();
    }
    if (sub_02037C0C(sub_0203769C(), (u16 *)((u8 *)data + 0x83E)) == 1) {
        *varptr = 1;
        return FALSE;
    }
    *varptr = 0;
    return TRUE;
}

BOOL FrtCmd_138(FrontierScriptContext *ctx) {
    u16 a = FrontierScriptContext_ReadHalfWord(ctx);
    u16 b = FrontierScriptContext_ReadHalfWord(ctx);
    ctx->data[0] = a;
    ctx->data[1] = b;
    FrontierScriptContext_Pause(ctx, ov80_0223573C);
    return TRUE;
}

static BOOL ov80_0223573C(FrontierScriptContext *ctx) {
    FrontierLaunchArgs *launchArgs = Frontier_GetLaunchArgs(ctx->frontierSystem->unk0);
    FrontierFieldSystem *data = Frontier_GetData(ctx->frontierSystem->unk0);
    if (ov80_02235774(ctx, data, launchArgs->saveData, ctx->data[0], ctx->data[1]) == 1) {
        return TRUE;
    }
    return FALSE;
}

static BOOL ov80_02235774(FrontierScriptContext *ctx, FrontierFieldSystem *data, SaveData *saveData, u16 mode, u16 extra) {
    u16 *ptr = sub_02037C44(1 - sub_0203769C());
    if (!ptr) {
        return FALSE;
    }
    u16 *slot = ov80_0222BE24(ctx, extra);
    if (mode == 2) {
        *slot = ov80_02236AD8(data, ptr);
    } else {
        GF_AssertFail();
    }
    return TRUE;
}
