#include "global.h"

extern void ov10_0221EF24(void *ctx, int n);
extern int ov10_0221EEF0(void *ctx);
extern u8 ov10_0221EF34(void *ctx, u8 inBattler);

void ov10_0221DCEC(void *battleSys, u8 *ctx) {
    int inBattler, check, jump;
    u8 battler;
    ov10_0221EF24(ctx, 1);
    inBattler = ov10_0221EEF0(ctx);
    check = ov10_0221EEF0(ctx);
    jump = ov10_0221EEF0(ctx);
    battler = ov10_0221EF34(ctx, inBattler);
    switch (check) {
    case 0:
        if (*(u32 *)(ctx + battler * 0xC0 + 0x2DC8) & 7) {
            ov10_0221EF24(ctx, jump);
        }
        break;
    case 1:
        if ((*(u32 *)(ctx + battler * 0xC0 + 0x2DC8) >> 3) & 7) {
            ov10_0221EF24(ctx, jump);
        }
        break;
    }
}
