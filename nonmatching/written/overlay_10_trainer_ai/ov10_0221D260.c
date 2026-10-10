#include "global.h"

extern void ov10_0221EF24(void *ctx, int n);
extern int ov10_0221F47C(void *battleSys, void *ctx, int battler, int move);
extern int ov12_02251D28(void *battleSystem, void *ctx, int moveNo, int moveType, int battlerIdAttacker, int battlerIdTarget, int damage, u32 *moveStatusFlag);

#define CALC_TEMP(c) (*(u32 *)((c) + 0x35C))

void ov10_0221D260(void *battleSys, u8 *ctx) {
    int i;
    ov10_0221EF24(ctx, 1);
    CALC_TEMP(ctx) = 0;
    for (i = 0; i < 4; i++) {
        u32 effectiveness = 0;
        u32 damage;
        u16 move = *(u16 *)(ctx + ctx[0x3CF] * 0xC0 + 0x2D4C + i * 2);
        int moveType = ov10_0221F47C(battleSys, ctx, ctx[0x3CF], move);
        if (move) {
            damage = ov12_02251D28(battleSys, ctx, move, moveType, ctx[0x3CF], ctx[0x3D0], 0x28, &effectiveness);
            if (damage == 0x78) {
                damage = 0x50;
            } else if (damage == 0xF0) {
                damage = 0xA0;
            } else if (damage == 0x1E) {
                damage = 0x14;
            } else if (damage == 0xF) {
                damage = 0xA;
            }
            if (effectiveness & 0x140808) {
                damage = 0;
            }
            if (CALC_TEMP(ctx) < damage) {
                CALC_TEMP(ctx) = damage;
            }
        }
    }
}
