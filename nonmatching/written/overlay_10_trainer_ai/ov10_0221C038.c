#include "global.h"

/* BattleContext / AI context fields, by byte offset (the asm's own offsets). */
#define CTX_U8(ctx, off)   (*(u8 *)((u8 *)(ctx) + (off)))
#define CTX_S8(ctx, off)   (*(s8 *)((u8 *)(ctx) + (off)))
#define CTX_U32(ctx, off)  (*(u32 *)((u8 *)(ctx) + (off)))
#define CTX_S32(ctx, off)  (*(s32 *)((u8 *)(ctx) + (off)))
#define CTX_U16(ctx, off)  (*(u16 *)((u8 *)(ctx) + (off)))

#define AI_EVAL_STEP(c)     CTX_U8(c, 0x354)
#define AI_MOVE_SLOT(c)     CTX_U8(c, 0x355)
#define AI_MOVE_SCORE(c, i) CTX_S8(c, 0x358 + (i))
#define AI_THINKING_MASK(c) CTX_S32(c, 0x360)
#define AI_STATE_FLAGS(c)   CTX_U8(c, 0x364)
#define AI_BIT_SHIFT(c)     CTX_U8(c, 0x365)
#define AI_ATTACKER(c)      CTX_U8(c, 0x3cf)
#define AI_DEFENDER(c)      CTX_U8(c, 0x3d0)
#define AI_SELECTED_TARGET(c, i) CTX_U8(c, 0x3da + (i))
#define AI_MOVE_RANGE(c, move) CTX_U16(c, 0x3e6 + (move) * 0x10)
#define MON_CUR_HP(c, battler) CTX_U32(c, 0x2d8c + (battler) * 0xc0)
#define MON_MOVE(c, battler, i) CTX_U16(c, 0x2d4c + (battler) * 0xc0 + (i) * 2)

extern void ov10_0221BE20(void *battleSys, void *battleCtx, int battler, int mask);
extern void ov10_0221EE88(void *battleSys, void *battleCtx);
extern void ov10_0221C278(void *battleSys, void *battleCtx);
extern u16 BattleSystem_Random(void *battleSys);
extern int BattleSystem_GetFieldSide(void *battleSys, int battler);
extern int CurseUserIsGhost(void *battleCtx, int move, int battler);

u8 ov10_0221C038(void *battleSys, void *battleCtx) {
    s8 actionForBattler[4];
    u8 battlerTemp[4];
    s16 maxScoreForBattler[4];
    int battler;
    int battlerCount;
    int thinkingMask;
    s16 maxScore;
    int i;
    u16 move;
    s8 moveSlot;

    for (battler = 0; battler < 4; battler++) {
        if (battler == AI_ATTACKER(battleCtx) || MON_CUR_HP(battleCtx, battler) == 0) {
            actionForBattler[battler] = -1;
            maxScoreForBattler[battler] = -1;
            continue;
        }

        ov10_0221BE20(battleSys, battleCtx, AI_ATTACKER(battleCtx), 0xf);

        AI_DEFENDER(battleCtx) = battler;
        if ((battler & 1) != (AI_ATTACKER(battleCtx) & 1)) {
            ov10_0221EE88(battleSys, battleCtx);
        }

        AI_BIT_SHIFT(battleCtx) = 0;
        AI_MOVE_SLOT(battleCtx) = 0;
        thinkingMask = AI_THINKING_MASK(battleCtx);

        while (thinkingMask != 0) {
            if (thinkingMask & 1) {
                if ((AI_STATE_FLAGS(battleCtx) & 0x10) == 0) {
                    AI_EVAL_STEP(battleCtx) = 0;
                }
                ov10_0221C278(battleSys, battleCtx);
            }
            AI_BIT_SHIFT(battleCtx)++;
            AI_MOVE_SLOT(battleCtx) = 0;
            thinkingMask >>= 1;
        }

        if (AI_STATE_FLAGS(battleCtx) & 2) {
            actionForBattler[battler] = 4;
        } else if (AI_STATE_FLAGS(battleCtx) & 4) {
            actionForBattler[battler] = 5;
        } else {
            u8 tmpMaxScoreMoveSlots[4];
            u8 tmpMaxScores[4];
            int numMaxScoreMoves;

            tmpMaxScores[0] = AI_MOVE_SCORE(battleCtx, 0);
            tmpMaxScoreMoveSlots[0] = 0;
            numMaxScoreMoves = 1;

            for (i = 1; i < 4; i++) {
                if (MON_MOVE(battleCtx, AI_ATTACKER(battleCtx), i) != 0) {
                    s8 score = AI_MOVE_SCORE(battleCtx, i);
                    if (tmpMaxScores[0] == score) {
                        tmpMaxScores[numMaxScoreMoves] = score;
                        tmpMaxScoreMoveSlots[numMaxScoreMoves] = i;
                        numMaxScoreMoves++;
                    }
                    if (tmpMaxScores[0] < score) {
                        tmpMaxScores[0] = score;
                        tmpMaxScoreMoveSlots[0] = i;
                        numMaxScoreMoves = 1;
                    }
                }
            }

            actionForBattler[battler] = tmpMaxScoreMoveSlots[BattleSystem_Random(battleSys) % numMaxScoreMoves];
            maxScoreForBattler[battler] = tmpMaxScores[0];

            if (battler == (AI_ATTACKER(battleCtx) ^ 2)) {
                if (maxScoreForBattler[battler] < 100) {
                    maxScoreForBattler[battler] = -1;
                }
            }
        }
    }

    maxScore = maxScoreForBattler[0];
    battlerTemp[0] = 0;
    battlerCount = 1;
    for (battler = 1; battler < 4; battler++) {
        if (maxScore == maxScoreForBattler[battler]) {
            battlerTemp[battlerCount] = battler;
            battlerCount++;
        }
        if (maxScore < maxScoreForBattler[battler]) {
            maxScore = maxScoreForBattler[battler];
            battlerTemp[0] = battler;
            battlerCount = 1;
        }
    }

    AI_SELECTED_TARGET(battleCtx, AI_ATTACKER(battleCtx)) = battlerTemp[BattleSystem_Random(battleSys) % battlerCount];
    moveSlot = actionForBattler[AI_SELECTED_TARGET(battleCtx, AI_ATTACKER(battleCtx))];
    move = MON_MOVE(battleCtx, AI_ATTACKER(battleCtx), moveSlot);

    if (AI_MOVE_RANGE(battleCtx, move) == 0x200 && BattleSystem_GetFieldSide(battleSys, AI_SELECTED_TARGET(battleCtx, AI_ATTACKER(battleCtx))) == 0) {
        AI_SELECTED_TARGET(battleCtx, AI_ATTACKER(battleCtx)) = AI_ATTACKER(battleCtx);
    }

    if (move == 0xae && CurseUserIsGhost(battleCtx, move, AI_ATTACKER(battleCtx)) == 0) {
        AI_SELECTED_TARGET(battleCtx, AI_ATTACKER(battleCtx)) = AI_ATTACKER(battleCtx);
    }

    return moveSlot;
}
