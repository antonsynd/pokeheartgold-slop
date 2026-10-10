#include "global.h"

extern void ov10_0221EF24(void *ctx, int n);
extern int ov10_0221EEF0(void *ctx);
extern u8 ov10_0221EF34(void *ctx, u8 inBattler);
extern int GetMonBaseStat(int species, int stat_id);
extern u16 BattleSystem_Random(void *battleSystem);

#define CALC_TEMP(c) (*(int *)((c) + 0x35C))

void ov10_0221D0A8(void *battleSys, u8 *ctx) {
    int inBattler;
    u8 battler;
    u8 *mon;
    int ability1, ability2;

    ov10_0221EF24(ctx, 1);
    inBattler = ov10_0221EEF0(ctx);
    battler = ov10_0221EF34(ctx, inBattler);
    mon = ctx + battler * 0xC0;

    if (*(u32 *)(mon + 0x2DC0) & 0x200000) {
        CALC_TEMP(ctx) = 0;
    } else if (ctx[0x3CF] != battler && inBattler != 3) {
        if (ctx[0x390 + battler]) {
            CALC_TEMP(ctx) = ctx[0x390 + battler];
        } else {
            u8 ab = mon[0x2D67];
            if (ab == 0x17 || ab == 0x2A || ab == 0x47) {
                CALC_TEMP(ctx) = ab;
            } else {
                ability1 = GetMonBaseStat(*(u16 *)(mon + 0x2D40), 0x18);
                ability2 = GetMonBaseStat(*(u16 *)(mon + 0x2D40), 0x19);
                if (ability1 && ability2) {
                    if (BattleSystem_Random(battleSys) & 1) {
                        CALC_TEMP(ctx) = ability1;
                    } else {
                        CALC_TEMP(ctx) = ability2;
                    }
                } else if (ability1) {
                    CALC_TEMP(ctx) = ability1;
                } else {
                    CALC_TEMP(ctx) = ability2;
                }
            }
        }
    } else {
        CALC_TEMP(ctx) = mon[0x2D67];
    }
}
