#include "global.h"

#define Pokepic_StartAnim Pokepic_StartAnim_Header
#include "battle/battle_system.h"
#include "battle/overlay_12_0224E4FC.h"
#undef Pokepic_StartAnim

#include "brightness.h"
#include "heap.h"
#include "player_data.h"
#include "pokemon.h"
#include "sprite_system.h"
#include "sys_task_api.h"

typedef struct UnkStruct_Ov12_02261DC8 {
    u8 unk0[0xC];
    ManagedSprite *unkC;
    u8 unk10[6];
    u16 unk16_0 : 1;
    u16 unk16_1 : 15;
} UnkStruct_Ov12_02261DC8;

typedef struct UnkStruct_Ov12_02261E40 {
    int state;
    int unk4;
} UnkStruct_Ov12_02261E40;

extern void Pokepic_StartAnim(Pokepic *pokepic, int a1);

static void ov12_02261E40(SysTask *task, void *data);

BOOL ov12_02261DC8(UnkStruct_Ov12_02261DC8 *a0) {
    BOOL result = FALSE;
    u32 attr = ManagedSprite_GetUserAttrForCurrentAnimFrame(a0->unkC);
    if (attr == 1) {
        if (a0->unk16_0 == 0) {
            UnkStruct_Ov12_02261E40 *work;
            a0->unk16_0 = 1;
            work = Heap_Alloc(HEAP_ID_BATTLE, sizeof(UnkStruct_Ov12_02261E40));
            work->state = 0;
            work->unk4 = 0;
            SysTask_CreateOnMainQueue(ov12_02261E40, work, 0);
        }
    } else if (attr == 0xFFF) {
        result = TRUE;
    } else if ((attr & 0xF00) == 0x100) {
        u8 anim = attr;
        if (anim != 0) {
            ManagedSprite_SetAnimationFrame(a0->unkC, 0);
            ManagedSprite_SetAnim(a0->unkC, anim - 1);
            result = TRUE;
        }
    }
    return result;
}

static void ov12_02261E40(SysTask *task, void *data) {
    UnkStruct_Ov12_02261E40 *work = data;
    switch (work->state) {
    case 0:
        if (IsBrightnessTransitionActive(1) == FALSE) {
            work->state = 2;
            return;
        }
        StartBrightnessTransition(4, 0x10, 0, 0x3D, 1);
        work->state++;
        break;
    case 1:
        if (IsBrightnessTransitionActive(1) == TRUE) {
            StartBrightnessTransition(4, 0, 0x10, 0x3D, 1);
            work->state++;
        }
        break;
    case 2:
        if (IsBrightnessTransitionActive(1) == TRUE) {
            Heap_Free(work);
            SysTask_Destroy(task);
        }
        break;
    }
}

void ov12_02261EB8(BattleSystem *battleSystem) {
    ov12_0223BFFC(battleSystem, 1);
    BattleController_TryEmitExitRecording(battleSystem, BattleSystem_GetBattleContext(battleSystem));
}

void ov12_02261ED4(BattleSystem *battleSystem) {
    ov12_0223BFFC(battleSystem, 2);
    BattleController_TryEmitExitRecording(battleSystem, BattleSystem_GetBattleContext(battleSystem));
}

u8 ov12_02261EF0(BattleSystem *battleSystem, int a1, u8 a2) {
    if (BattleSystem_GetBattleType(battleSystem) & 4) {
        if (a2 == 0 || a2 == 1) {
            switch (PlayerProfile_GetVersion(BattleSystem_GetPlayerProfile(battleSystem, a1))) {
            case 0:
                a2 += 0x7D;
                break;
            case 0xC:
                a2 += 0x7F;
                break;
            }
        }
    }
    return a2;
}

void ov12_02261F38(BattleSystem *battleSystem, int battler, u32 isFrontpic, Pokepic *pokepic, NARC *narc, u32 species, s32 a6, u32 a7, u32 a8) {
    u8 sp14 = 0;
    s32 pan;
    if (BattleSystem_AreBattleAnimationsOn(battleSystem) == TRUE) {
        Pokepic_StartAnim(pokepic, 1);
        sub_0207294C(narc, ov12_0223B750(battleSystem), pokepic, species, a7, 0, battler);
        sub_020729A4(narc, &sp14, species, isFrontpic);
    }
    if (a7 == 2) {
        pan = 0x75;
    } else {
        pan = -0x75;
    }
    if (sp14 == 0) {
        sp14 = 8;
    }
    sub_0207204C(BattleSystem_GetChatotVoice(battleSystem, battler), a8, species, a6, pan, 0x7F, 0, 5, sp14);
}
