#include "global.h"
#include "battle/battle.h"
#include "battle/battle_system.h"
#include "battle/overlay_12_0224E4FC.h"
#include "battle/trainer_ai.h"
#include "pokemon.h"
#include "heap.h"
#include "sys_task_api.h"

typedef struct {
    BattleSystem *battleSys;
    u8 pad_04[8];
    u16 moves[4];
    u8 pad_14[8];
    u8 command;
    u8 battler;
    u8 pad_1E[4];
    u16 invalidMoves;
} UnkStruct_ov12_0225E404;

void ov12_02262FE0(BattleSystem *battleSys, int battler, int input);
void ov12_0226430C(BattleSystem *battleSys, u8 battler, u8 command);

void ov12_0225E404(SysTask *task, void *data)
{
    // The game keeps validMoves[4] in its stack frame, right below the registers its prologue pushed, and indexes it
    // with BattleSystem_Random() % validMovesCount (undefined when no move is valid). emu[] mirrors that frame
    // (validMoves, then r3-r7 and lr as pushed); an index past it reads the memory above the frame, at the same
    // address the game would use.
    u32 emu[10];
    char *fp;
    u32 entrySp;
    u32 savedR3, savedR4, savedR5, savedR6;
    UnkStruct_ov12_0225E404 *d;
    int action;
    u32 battleType;
    BattleContext *ctx;

#define SLOT(s) ((s) < 10 ? &emu[(s)] : (u32 *)(entrySp + 4 * ((s)-10)))

    __asm__ volatile("movs %0, r3" : "=l"(savedR3) : : "cc");
    __asm__ volatile("movs %0, r4" : "=l"(savedR4) : : "cc");
    __asm__ volatile("movs %0, r5" : "=l"(savedR5) : : "cc");
    __asm__ volatile("movs %0, r6" : "=l"(savedR6) : : "cc");
    fp = __builtin_frame_address(0);
    entrySp = (u32)fp + 8;
    emu[0] = 0;
    emu[1] = 0;
    emu[2] = 0;
    emu[3] = 0;
    emu[4] = savedR3;
    emu[5] = savedR4;
    emu[6] = savedR5;
    emu[7] = savedR6;
    emu[8] = ((u32 *)fp)[0];
    emu[9] = ((u32 *)fp)[1];

    d = data;
    battleType = BattleSystem_GetBattleType(d->battleSys);
    ctx = BattleSystem_GetBattleContext(d->battleSys);

    if ((battleType & 0x101) || (BattleSystem_GetBattleSpecial(d->battleSys) & 1) || BattleSystem_GetFieldSide(d->battleSys, d->battler) == 0) {
        action = ov10_0221BEF4(d->battleSys, d->battler);

        if (action == 0xff) {
            return;
        }
        action++;
    } else {
        int validMovesCount = 0;
        int i;
        int index;

        for (i = 0; i < 4; i++) {
            if ((MaskOfFlagNo(i) & d->invalidMoves) == 0) {
                *SLOT(validMovesCount) = i + 1;
                validMovesCount++;
            }
        }

        index = BattleSystem_Random(d->battleSys) % validMovesCount;
        action = *SLOT(index);

        ov12_022582B8(d->battleSys, ctx, 0xb, d->battler, ov12_022506D4(d->battleSys, ctx, d->battler, d->moves[action - 1], 1, 0));
    }

    ov12_02262FE0(d->battleSys, d->battler, action);
    ov12_0226430C(d->battleSys, d->battler, d->command);

    Heap_Free(data);
    SysTask_Destroy(task);
}
