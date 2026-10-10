#include "global.h"

extern void ov10_0221EF24(void *ctx, int n);
extern int ov10_0221EEF0(void *ctx);
extern u8 ov10_0221EF34(void *ctx, u8 inBattler);

#define MOVE_EFFECT(c, m) (*(u16 *)((c) + (m) * 0x10 + 0x3DE))

void ov10_0221DC48(void *battleSys, u8 *ctx) {
    int inBattler, effect, jump, i;
    u8 battler;
    u16 *moves;
    ov10_0221EF24(ctx, 1);
    inBattler = ov10_0221EEF0(ctx);
    effect = ov10_0221EEF0(ctx);
    jump = ov10_0221EEF0(ctx);
    battler = ov10_0221EF34(ctx, inBattler);

    switch (inBattler) {
    case 1:
        moves = (u16 *)(ctx + battler * 0xC0 + 0x2D4C);
        for (i = 0; i < 4; i++) {
            if (moves[i] && effect == MOVE_EFFECT(ctx, moves[i])) {
                break;
            }
        }
        if (i == 4) {
            ov10_0221EF24(ctx, jump);
        }
        break;
    case 0:
        moves = (u16 *)(ctx + battler * 8 + 0x370);
        for (i = 0; i < 4; i++) {
            if (moves[i] && effect == MOVE_EFFECT(ctx, moves[i])) {
                break;
            }
        }
        if (i == 4) {
            ov10_0221EF24(ctx, jump);
        }
        break;
    }
}
