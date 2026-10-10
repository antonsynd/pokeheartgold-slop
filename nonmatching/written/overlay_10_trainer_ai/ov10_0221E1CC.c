#include "global.h"

extern void ov10_0221EF24(void *ctx, int n);
extern int ov10_0221EEF0(void *ctx);
extern u8 ov10_0221EF34(void *ctx, u8 inBattler);

extern u8 CheckSortSpeed(void *battleSystem, void *ctx, int battlerId1, int battlerId2, int flag);
extern int BattleSystem_GetMaxBattlers(void *battleSystem);

void ov10_0221E1CC(void *battleSys, u8 *ctx) {
    int i, j;
    int speedOrder[16]; /* game has <= 4 battlers; larger so out-of-range counts stay in the buffer */
    int cmp1, cmp2;
    int maxBattlers;
    int battler;
    int inBattler;

    ov10_0221EF24(ctx, 1);
    inBattler = ov10_0221EEF0(ctx);
    battler = ov10_0221EF34(ctx, inBattler);
    maxBattlers = BattleSystem_GetMaxBattlers(battleSys);

    for (i = 0; i < maxBattlers; i++) {
        speedOrder[i] = i;
    }
    for (i = 0; i < maxBattlers - 1; i++) {
        for (j = i + 1; j < maxBattlers; j++) {
            cmp1 = speedOrder[i];
            cmp2 = speedOrder[j];
            if (CheckSortSpeed(battleSys, ctx, cmp1, cmp2, 1)) {
                speedOrder[i] = cmp2;
                speedOrder[j] = cmp1;
            }
        }
    }
    for (i = 0; i < maxBattlers; i++) {
        if (speedOrder[i] == battler) {
            *(int *)(ctx + 0x35C) = i;
            break;
        }
    }
}
