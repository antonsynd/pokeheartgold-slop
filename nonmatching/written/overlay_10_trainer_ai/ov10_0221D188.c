#include "global.h"

extern void ov10_0221EF24(void *ctx, int n);
extern int ov10_0221EEF0(void *ctx);
extern u8 ov10_0221EF34(void *ctx, u8 inBattler);
extern int GetMonBaseStat(int species, int stat_id);

#define CALC_TEMP(c) (*(int *)((c) + 0x35C))

void ov10_0221D188(void *battleSys, u8 *ctx) {
    int inBattler, expected, tmpAbility;
    u8 battler;
    u8 *mon;

    ov10_0221EF24(ctx, 1);
    inBattler = ov10_0221EEF0(ctx);
    expected = ov10_0221EEF0(ctx);
    battler = ov10_0221EF34(ctx, inBattler);
    mon = ctx + battler * 0xC0;

    if (*(u32 *)(mon + 0x2DC0) & 0x200000) {
        tmpAbility = 0;
    } else if (inBattler == 0 || inBattler == 2) {
        if (ctx[0x390 + battler]) {
            tmpAbility = ctx[0x390 + battler];
            CALC_TEMP(ctx) = tmpAbility;
        } else {
            tmpAbility = mon[0x2D67];
            if (tmpAbility != 0x17 && tmpAbility != 0x2A && tmpAbility != 0x47) {
                int ability1 = GetMonBaseStat(*(u16 *)(mon + 0x2D40), 0x18);
                int ability2 = GetMonBaseStat(*(u16 *)(mon + 0x2D40), 0x19);
                if (ability1 && ability2) {
                    if (ability1 != expected && ability2 != expected) {
                        tmpAbility = ability1;
                    } else {
                        tmpAbility = 0;
                    }
                } else if (ability1) {
                    tmpAbility = ability1;
                } else {
                    tmpAbility = ability2;
                }
            }
        }
    } else {
        tmpAbility = mon[0x2D67];
    }

    if (tmpAbility == 0) {
        CALC_TEMP(ctx) = 2;
    } else if (tmpAbility == expected) {
        CALC_TEMP(ctx) = 1;
    } else {
        CALC_TEMP(ctx) = 0;
    }
}
