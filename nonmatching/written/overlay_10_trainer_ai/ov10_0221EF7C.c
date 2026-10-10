#include "global.h"

#define CTX_U8(ctx, off)   (*(u8 *)((u8 *)(ctx) + (off)))
#define CTX_U16(ctx, off)  (*(u16 *)((u8 *)(ctx) + (off)))

#define AI_DAMAGE_ROLL(c, i) CTX_U8(c, 0x36c + (i))
#define MOVE_EFFECT(c, move) CTX_U16(c, 0x3de + (move) * 0x10)
#define MOVE_POWER(c, move)  CTX_U8(c, 0x3e1 + (move) * 0x10)

/* ov10_0222B098: effects that skip damage calculation; ov10_0222B080: effects with alternate power. */
const u16 ov10_0222B098[] = { 0x07, 0x08, 0x27, 0x4b, 0x50, 0x91, 0x97, 0xa1, 0xaa, 0xb6, 0xbe, 0xf8, 0x10d, 0xffff };
const u16 ov10_0222B080[] = { 0x87, 0xdb, 0xde, 0x10c, 0x29, 0x57, 0x58, 0x79, 0x7b, 0x82, 0xc4, 0xffff };

extern int ov10_0221F084(void *battleSys, void *battleCtx, u16 move, u32 heldItem, u8 *ivs, int attacker, int ability, int embargoTurns, u8 damageRoll);

s32 ov10_0221EF7C(void *battleSys, u8 *battleCtx, int attacker, u16 *moves, s32 *damageVals, u32 heldItem, u8 *ivs, int ability, int embargoTurns, int varyDamage) {
    int i;
    int noCalcIdx;
    int altPowerIdx;
    s32 maxDamage;
    u8 damageRoll;
    u16 effect;

    maxDamage = 0;
    for (i = 0; i < 4; i++) {
        effect = MOVE_EFFECT(battleCtx, moves[i]);
        for (noCalcIdx = 0; ; ) {
            if (ov10_0222B098[noCalcIdx] == effect) {
                break;
            }
            noCalcIdx++;
            if (ov10_0222B098[noCalcIdx] == 0xFFFF) {
                break;
            }
        }
        for (altPowerIdx = 0; ; ) {
            if (ov10_0222B080[altPowerIdx] == effect) {
                break;
            }
            altPowerIdx++;
            if (ov10_0222B080[altPowerIdx] == 0xFFFF) {
                break;
            }
        }
        if (ov10_0222B080[altPowerIdx] != 0xFFFF
            || (moves[i] != 0 && ov10_0222B098[noCalcIdx] == 0xFFFF && MOVE_POWER(battleCtx, moves[i]) > 1)) {
            if (varyDamage == 1) {
                damageRoll = AI_DAMAGE_ROLL(battleCtx, i);
            } else {
                damageRoll = 100;
            }
            damageVals[i] = ov10_0221F084(battleSys, battleCtx, moves[i], heldItem, ivs, attacker, ability, embargoTurns, damageRoll);
        } else {
            damageVals[i] = 0;
        }
    }
    for (i = 0; i < 4; i++) {
        if (maxDamage < damageVals[i]) {
            maxDamage = damageVals[i];
        }
    }
    return maxDamage;
}
