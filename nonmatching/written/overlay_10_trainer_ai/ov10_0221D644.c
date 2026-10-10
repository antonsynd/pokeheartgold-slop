#include "global.h"

extern void ov10_0221EF24(void *ctx, int n);
extern int ov10_0221EEF0(void *ctx);
extern u8 ov10_0221EF34(void *ctx, u8 inBattler);

void ov10_0221D644(void *battleSys, u8 *ctx) {
    int expected, jump;
    ov10_0221EF24(ctx, 1);
    expected = ov10_0221EEF0(ctx);
    jump = ov10_0221EEF0(ctx);
    if (expected != *(u16 *)(ctx + *(u16 *)(ctx + 0x356) * 0x10 + 0x3DE)) {
        ov10_0221EF24(ctx, jump);
    }
}
