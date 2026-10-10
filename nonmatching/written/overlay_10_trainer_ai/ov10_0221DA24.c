#include "global.h"

extern void ov10_0221EF24(void *ctx, int n);
extern int ov10_0221EEF0(void *ctx);
extern u8 ov10_0221EF34(void *ctx, u8 inBattler);

void ov10_0221DA24(void *battleSys, u8 *ctx) {
    int inBattler, move, jump, i;
    u8 battler;
    u8 *mon;
    ov10_0221EF24(ctx, 1);
    inBattler = ov10_0221EEF0(ctx);
    move = ov10_0221EEF0(ctx);
    jump = ov10_0221EEF0(ctx);
    battler = ov10_0221EF34(ctx, inBattler);

    switch (inBattler) {
    case 1:
        mon = ctx + battler * 0xC0;
        for (i = 0; i < 4; i++) {
            if (move == *(u16 *)(mon + 0x2D4C + i * 2)) {
                break;
            }
        }
        if (i < 4) {
            ov10_0221EF24(ctx, jump);
        }
        break;
    case 3:
        mon = ctx + battler * 0xC0;
        if (*(u32 *)(mon + 0x2D8C) == 0) {
            break;
        }
        for (i = 0; i < 4; i++) {
            if (move == *(u16 *)(mon + 0x2D4C + i * 2)) {
                break;
            }
        }
        if (i < 4) {
            ov10_0221EF24(ctx, jump);
        }
        break;
    case 0:
        for (i = 0; i < 4; i++) {
            if (move == *(u16 *)(ctx + battler * 8 + 0x370 + i * 2)) {
                break;
            }
        }
        if (i < 4) {
            ov10_0221EF24(ctx, jump);
        }
        break;
    }
}
