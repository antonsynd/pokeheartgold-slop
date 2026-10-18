#include "global.h"

#include "battle/battle_system.h"

#include "bg_window.h"
#include "sprite_system.h"
#include "unk_02005D10.h"

typedef struct BattleAnimContext {
    u8 filler_00[0x1C];
    void *particleSystems[16];
    u8 filler_5C[0x50];
    SpriteSystem *spriteSystem;
} BattleAnimContext;

typedef struct BattleAnimLoop {
    void *startPos;
    u8 curIteration;
    u8 maxIterations;
    int isActive;
} BattleAnimLoop;

typedef struct BattleAnimSystem {
    u8 filler_000[0x10];
    int moveActive;
    u8 filler_014[8];
    void *callStack[3];
    BattleAnimLoop loopStack[3];
    u8 filler_04C[0x41];
    u8 scriptDelay;
    u16 activeAnimTasks;
    u16 activeSoundTasks;
    u8 filler_092[0x2E];
    BattleAnimContext *context;
    BgConfig *bgConfig;
    u8 filler_0C8[4];
    SpriteManager *spriteManagers[4];
    u8 filler_0DC[0xA1];
    u8 soundEffectWaitTimer;
    u8 endDelayFrames;
    u8 filler_17F;
    u8 unk180[0x2C];
    u8 bgLayerPriorities[4];
} BattleAnimSystem;

int sub_020154B0(void *particleSystem);
void ov07_0221D55C(BattleAnimSystem *system, int index);
void ov07_0221FF2C(void *particleSystem);
void ov07_0221DD14(void *a0, int a1);
int ov07_0221FAEC(BattleAnimSystem *system, int a1);
enum HeapID ov07_0221BFD0(BattleAnimSystem *system);
BgConfig *ov07_0221C4A0(BattleAnimSystem *system);

void ov07_0221C9C0(BattleAnimSystem *system) {
    int i;
    int totalEmitters = 0;

    if (system->endDelayFrames < 1) {
        system->scriptDelay = 1;
        system->endDelayFrames++;
        return;
    }

    for (i = 0; i < 16; i++) {
        if (system->context->particleSystems[i]) {
            totalEmitters += sub_020154B0(system->context->particleSystems[i]);
        }
    }

    if (totalEmitters != 0 || system->activeAnimTasks != 0 || system->activeSoundTasks != 0) {
        system->scriptDelay = 1;
        system->soundEffectWaitTimer = 0;
        return;
    }

    if (GF_IsAnySEPlaying()) {
        system->soundEffectWaitTimer++;
        if (system->soundEffectWaitTimer > 90) {
            system->soundEffectWaitTimer = 0;
            system->scriptDelay = 0;
        } else {
            system->scriptDelay = 1;
            return;
        }
    }

    system->soundEffectWaitTimer = 0;
    system->endDelayFrames = 0;

    for (i = 0; i < 3; i++) {
        system->callStack[i] = NULL;
    }

    for (i = 0; i < 3; i++) {
        system->loopStack[i].startPos = NULL;
        system->loopStack[i].curIteration = 0;
        system->loopStack[i].maxIterations = 0;
        system->loopStack[i].isActive = FALSE;
    }

    for (i = 0; i < 4; i++) {
        if (system->spriteManagers[i] != NULL) {
            SpriteSystem_FreeResourcesAndManager(system->context->spriteSystem, system->spriteManagers[i]);
        }
        system->spriteManagers[i] = NULL;
    }

    for (i = 0; i < 5; i++) {
        ov07_0221D55C(system, i);
    }

    for (i = 0; i < 16; i++) {
        if (system->context->particleSystems[i]) {
            ov07_0221FF2C(system->context->particleSystems[i]);
            system->context->particleSystems[i] = NULL;
        }
    }

    ov07_0221DD14(system->unk180, 5);
    BattleSystem_SetDefaultBlend();
    BG_ClearCharDataRange(ov07_0221FAEC(system, 1), 0x4000, 0, ov07_0221BFD0(system));
    BgClearTilemapBufferAndCommit(ov07_0221C4A0(system), ov07_0221FAEC(system, 1));
    ToggleBgLayer(GF_BG_LYR_MAIN_2, GF_PLANE_TOGGLE_ON);

    SetBgPriority(GF_BG_LYR_MAIN_0, system->bgLayerPriorities[GF_BG_LYR_MAIN_0]);
    SetBgPriority(GF_BG_LYR_MAIN_1, system->bgLayerPriorities[GF_BG_LYR_MAIN_1]);
    SetBgPriority(GF_BG_LYR_MAIN_2, system->bgLayerPriorities[GF_BG_LYR_MAIN_2]);
    SetBgPriority(GF_BG_LYR_MAIN_3, system->bgLayerPriorities[GF_BG_LYR_MAIN_3]);

    BgSetPosTextAndCommit(system->bgConfig, GF_BG_LYR_MAIN_2, BG_POS_OP_SET_X, 0);
    BgSetPosTextAndCommit(system->bgConfig, GF_BG_LYR_MAIN_2, BG_POS_OP_SET_Y, 0);
    BgSetPosTextAndCommit(system->bgConfig, GF_BG_LYR_MAIN_3, BG_POS_OP_SET_X, 0);
    BgSetPosTextAndCommit(system->bgConfig, GF_BG_LYR_MAIN_3, BG_POS_OP_SET_Y, 0);

    system->moveActive = FALSE;
}
