#include "global.h"

#include "battle/battle_system.h"

#include "heap.h"
#include "pokepic.h"
#include "sys_task_api.h"

typedef struct Ov12MoveAnimation {
    u8 data[0x58];
} Ov12MoveAnimation;

typedef struct Ov12BattlerSpriteContext {
    u8 data[0x50];
} Ov12BattlerSpriteContext;

typedef struct Ov12OpponentData {
    u8 filler_000[0x20];
    Pokepic *monSprite;
    u8 filler_024[0x17C];
    int isAlternateSprite;
} Ov12OpponentData;

typedef struct ToggleVanishData {
    BattleSystem *battleSys;
    Ov12OpponentData *battlerData;
    Ov12MoveAnimation moveAnim;
    u8 command;
    u8 battler;
    u8 state;
    u8 toggleHide;
    int isSubstitute;
} ToggleVanishData;

void ov12_022643C8(BattleSystem *battleSys, void *a1, Ov12MoveAnimation *moveAnim, int a3, int a4, int attacker, int defender, void *a7);
void ov12_02261B80(BattleSystem *battleSys, Ov12OpponentData *battlerData, void *animSys, Ov12MoveAnimation *moveAnim);
void ov12_02261CA8(BattleSystem *battleSys, Ov12MoveAnimation *moveAnim, Ov12BattlerSpriteContext *ctx, u8 battler);
void ov07_02234A20(Ov12BattlerSpriteContext *ctx, enum HeapID heapID);
void ov07_0221C394(void *animSys);
BOOL ov07_0221C3B0(void *animSys);
void ov07_0221C3C0(void *animSys);
void ov12_0226430C(BattleSystem *battleSys, int battler, int command);

void ov12_02260418(SysTask *task, void *_data) {
    ToggleVanishData *data = _data;
    void *animSys = ov12_0223A8DC(data->battleSys);

    switch (data->state) {
    case 0:
        if (data->battlerData->monSprite) {
            Pokepic_SetAttr(data->battlerData->monSprite, 6, data->toggleHide);
            if (data->toggleHide == 1) {
                data->state = 0xFF;
            } else {
                data->state++;
            }
        } else {
            data->state = 0xFF;
        }
        break;
    case 1:
        if (data->isSubstitute && data->battlerData->isAlternateSprite == 0) {
            Ov12MoveAnimation moveAnim;

            ov12_022643C8(data->battleSys, NULL, &moveAnim, 1, 15, data->battler, data->battler, NULL);
            ov12_02261B80(data->battleSys, data->battlerData, animSys, &moveAnim);
            data->state++;
        } else {
            data->state = 0xFF;
        }
        break;
    case 3: {
        Ov12BattlerSpriteContext battlerSpriteCtx;
        Ov12MoveAnimation moveAnim;

        ov12_02261CA8(data->battleSys, &data->moveAnim, &battlerSpriteCtx, data->battler);
        ov07_02234A20(&battlerSpriteCtx, HEAP_ID_BATTLE);
        ov12_022643C8(data->battleSys, NULL, &moveAnim, 1, 16, data->battler, data->battler, NULL);
        ov12_02261B80(data->battleSys, data->battlerData, animSys, &moveAnim);
        data->battlerData->isAlternateSprite = 1;
        data->state++;
        break;
    }
    case 2:
    case 4:
        ov07_0221C394(animSys);
        if (ov07_0221C3B0(animSys) == FALSE) {
            ov07_0221C3C0(animSys);
            data->state++;
        }
        break;
    default:
        ov12_0226430C(data->battleSys, data->battler, data->command);
        Heap_Free(_data);
        SysTask_Destroy(task);
        break;
    }
}
