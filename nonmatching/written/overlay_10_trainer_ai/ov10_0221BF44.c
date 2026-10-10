#include "global.h"

/* BattleContext / AI context fields, by byte offset (the asm's own offsets). */
#define CTX_U8(ctx, off)   (*(u8 *)((u8 *)(ctx) + (off)))
#define CTX_S8(ctx, off)   (*(s8 *)((u8 *)(ctx) + (off)))
#define CTX_U32(ctx, off)  (*(u32 *)((u8 *)(ctx) + (off)))
#define CTX_U16(ctx, off)  (*(u16 *)((u8 *)(ctx) + (off)))

#define AI_EVAL_STEP(c)     CTX_U8(c, 0x354)
#define AI_MOVE_SLOT(c)     CTX_U8(c, 0x355)
#define AI_MOVE_SCORE(c, i) CTX_S8(c, 0x358 + (i))
#define AI_THINKING_MASK(c) CTX_U32(c, 0x360)
#define AI_STATE_FLAGS(c)   CTX_U8(c, 0x364)
#define AI_BIT_SHIFT(c)    CTX_U8(c, 0x365)
#define AI_ATTACKER(c)      CTX_U8(c, 0x3cf)
#define AI_DEFENDER(c)      CTX_U8(c, 0x3d0)
#define AI_SELECTED_TARGET(c, i) CTX_U8(c, 0x3da + (i))
#define MON_MOVE(c, battler, i) CTX_U16(c, 0x2d4c + (battler) * 0xc0 + (i) * 2)

extern void ov10_0221EE88(void *battleSys, void *battleCtx);
extern void ov10_0221C278(void *battleSys, void *battleCtx);
extern u16 BattleSystem_Random(void *battleSys);

u8 ov10_0221BF44(void *battleSys, void *battleCtx) {
    u8 maxScoreMoves[4];
    u8 maxScoreMoveSlots[4];
    u8 numMaxScoreMoves;
    u8 action;
    int i;

    ov10_0221EE88(battleSys, battleCtx);

    while (AI_THINKING_MASK(battleCtx) != 0) {
        if (AI_THINKING_MASK(battleCtx) & 1) {
            if ((AI_STATE_FLAGS(battleCtx) & 0x10) == 0) {
                AI_EVAL_STEP(battleCtx) = 0;
            }
            ov10_0221C278(battleSys, battleCtx);
        }
        AI_THINKING_MASK(battleCtx) = AI_THINKING_MASK(battleCtx) >> 1;
        AI_BIT_SHIFT(battleCtx)++;
        AI_MOVE_SLOT(battleCtx) = 0;
    }

    if (AI_STATE_FLAGS(battleCtx) & 2) {
        action = 4;
    } else if (AI_STATE_FLAGS(battleCtx) & 4) {
        action = 5;
    } else {
        numMaxScoreMoves = 1;
        maxScoreMoves[0] = AI_MOVE_SCORE(battleCtx, 0);
        maxScoreMoveSlots[0] = 0;

        for (i = 1; i < 4; i++) {
            if (MON_MOVE(battleCtx, AI_ATTACKER(battleCtx), i) != 0) {
                s8 score = AI_MOVE_SCORE(battleCtx, i);
                if (maxScoreMoves[0] == score) {
                    maxScoreMoves[numMaxScoreMoves] = score;
                    maxScoreMoveSlots[numMaxScoreMoves] = i;
                    numMaxScoreMoves = numMaxScoreMoves + 1;
                }
                if (maxScoreMoves[0] < score) {
                    maxScoreMoves[0] = score;
                    maxScoreMoveSlots[0] = i;
                    numMaxScoreMoves = 1;
                }
            }
        }

        action = maxScoreMoveSlots[BattleSystem_Random(battleSys) % numMaxScoreMoves];
    }

    AI_SELECTED_TARGET(battleCtx, AI_ATTACKER(battleCtx)) = AI_DEFENDER(battleCtx);
    return action;
}
