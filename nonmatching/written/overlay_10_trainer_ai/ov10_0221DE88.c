#include "global.h"

extern void ov10_0221EF24(void *ctx, int n);
extern int ov10_0221EEF0(void *ctx);
extern u8 ov10_0221EF34(void *ctx, u8 inBattler);

void ov10_0221DE88(void *battleSys, u8 *ctx) {
    int inBattler, expected, jump;
    u8 battler;
    u16 heldItem;
    ov10_0221EF24(ctx, 1);
    inBattler = ov10_0221EEF0(ctx);
    expected = ov10_0221EEF0(ctx);
    jump = ov10_0221EEF0(ctx);
    battler = ov10_0221EF34(ctx, inBattler);
    if ((battler & 1) == (ctx[0x3CF] & 1)) {
        heldItem = *(u16 *)(ctx + battler * 0xC0 + 0x2DB8);
    } else {
        heldItem = *(u16 *)(ctx + battler * 2 + 0x394);
    }
    if (heldItem == expected) {
        ov10_0221EF24(ctx, jump);
    }
}
