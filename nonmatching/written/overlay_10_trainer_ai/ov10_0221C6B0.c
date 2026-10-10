#include "global.h"

extern void ov10_0221EF24(void *battleCtx, int offset);
extern int ov10_0221EEF0(void *battleCtx);
extern int ov10_0221EF34(void *battleCtx, u8 battler);

void ov10_0221C6B0(void *battleSys, u8 *battleCtx) {
    int inBattler;
    u32 mask;
    int jump;
    int battler;

    ov10_0221EF24(battleCtx, 1);

    inBattler = ov10_0221EEF0(battleCtx);
    mask = ov10_0221EEF0(battleCtx);
    jump = ov10_0221EEF0(battleCtx);
    battler = ov10_0221EF34(battleCtx, (u8)inBattler);

    if ((*(u32 *)(battleCtx + battler * 0xc0 + 0x2db0) & mask) != 0) {
        ov10_0221EF24(battleCtx, jump);
    }
}
