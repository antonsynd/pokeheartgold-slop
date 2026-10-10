#include "global.h"

extern void ov10_0221EF24(void *battleCtx, int offset);
extern int ov10_0221EEF0(void *battleCtx);
extern int ov10_0221EF34(void *battleCtx, u8 battler);

void ov10_0221C4B8(void *battleSys, u8 *battleCtx) {
    int inBattler;
    u32 targetPercent;
    int jump;
    int battler;
    u32 hpPercent;

    ov10_0221EF24(battleCtx, 1);

    inBattler = ov10_0221EEF0(battleCtx);
    targetPercent = ov10_0221EEF0(battleCtx);
    jump = ov10_0221EEF0(battleCtx);
    battler = ov10_0221EF34(battleCtx, (u8)inBattler);
    hpPercent = *(u32 *)(battleCtx + battler * 0xc0 + 0x2d8c) * 100 / *(u32 *)(battleCtx + battler * 0xc0 + 0x2d90);

    if (hpPercent < targetPercent) {
        ov10_0221EF24(battleCtx, jump);
    }
}
