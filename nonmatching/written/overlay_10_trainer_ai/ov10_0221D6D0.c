#include "global.h"

extern void ov10_0221EF24(void *ctx, int n);
extern int ov10_0221EEF0(void *ctx);
extern u8 ov10_0221EF34(void *ctx, u8 inBattler);

void ov10_0221D6D0(void *battleSys, u8 *ctx) {
    int inBattler, stat, val, jump;
    u8 battler;
    ov10_0221EF24(ctx, 1);
    inBattler = ov10_0221EEF0(ctx);
    stat = ov10_0221EEF0(ctx);
    val = ov10_0221EEF0(ctx);
    jump = ov10_0221EEF0(ctx);
    battler = ov10_0221EF34(ctx, inBattler);
    if (*(s8 *)(ctx + battler * 0xC0 + stat + 0x2D58) > val) {
        ov10_0221EF24(ctx, jump);
    }
}
