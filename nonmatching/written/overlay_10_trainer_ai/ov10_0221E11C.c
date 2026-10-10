#include "global.h"

extern void ov10_0221EF24(void *ctx, int n);
extern int ov10_0221EEF0(void *ctx);
extern u8 ov10_0221EF34(void *ctx, u8 inBattler);

extern int GetBattlerLearnedMoveCount(void *battleSystem, void *ctx, int battlerId);

void ov10_0221E11C(void *battleSys, u8 *ctx) {
    int inBattler, jump, numKnownMoves;
    u8 battler;
    ov10_0221EF24(ctx, 1);
    inBattler = ov10_0221EEF0(ctx);
    jump = ov10_0221EEF0(ctx);
    battler = ov10_0221EF34(ctx, inBattler);
    numKnownMoves = GetBattlerLearnedMoveCount(battleSys, ctx, battler);
    if (((*(u32 *)(ctx + battler * 0xC0 + 0x2DCC) >> 10) & 7) >= (u32)(numKnownMoves - 1) && numKnownMoves > 1) {
        ov10_0221EF24(ctx, jump);
    }
}
