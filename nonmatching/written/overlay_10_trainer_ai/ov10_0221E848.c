#include "global.h"

#define CTX_U8(ctx, off)   (*(u8 *)((u8 *)(ctx) + (off)))
#define CTX_U32(ctx, off)  (*(u32 *)((u8 *)(ctx) + (off)))
#define CTX_U16(ctx, off)  (*(u16 *)((u8 *)(ctx) + (off)))

#define AI_MOVE_SLOT(c)     CTX_U8(c, 0x355)
#define AI_MOVE(c)          CTX_U16(c, 0x356)
#define AI_CALC_TEMP(c)     CTX_U32(c, 0x35c)
#define AI_ATTACKER(c)      CTX_U8(c, 0x3cf)
#define MOVE_EFFECT(c, move) CTX_U16(c, 0x3de + (move) * 0x10)
#define MOVE_POWER(c, move)  CTX_U8(c, 0x3e1 + (move) * 0x10)

/* ov10_0222B098: effects that skip damage calculation; ov10_0222B080: effects with alternate power. */
const u16 ov10_0222B098[] = { 0x07, 0x08, 0x27, 0x4b, 0x50, 0x91, 0x97, 0xa1, 0xaa, 0xb6, 0xbe, 0xf8, 0x10d, 0xffff };
const u16 ov10_0222B080[] = { 0x87, 0xdb, 0xde, 0x10c, 0x29, 0x57, 0x58, 0x79, 0x7b, 0x82, 0xc4, 0xffff };

extern void ov10_0221EF24(void *battleCtx, int offset);
extern int ov10_0221EEF0(void *battleCtx);
extern int ov10_0221EF7C(void *battleSys, void *battleCtx, int battler, u16 *moves, s32 *damages, u16 heldItem, u8 *ivs, int ability, int embargoTurns, int varyDamage);
extern int GetBattlerVar(void *battleCtx, int battler, int id, void *unused);
extern u8 GetBattlerAbility(void *battleCtx, int battler);
extern int BattleSystem_GetBattlerIdPartner(void *battleSys, int battler);

/* The tables and the damage checks up to the first calculation; returns whether the damage is to be calculated. */
static int ov10_0221E848_ShouldCalc(u8 *battleCtx) {
    int j;
    int k;
    u16 effect;

    effect = MOVE_EFFECT(battleCtx, AI_MOVE(battleCtx));
    for (j = 0; ; ) {
        if (effect == ov10_0222B098[j]) {
            break;
        }
        j++;
        if (ov10_0222B098[j] == 0xFFFF) {
            break;
        }
    }
    for (k = 0; ; ) {
        if (effect == ov10_0222B080[k]) {
            break;
        }
        k++;
        if (ov10_0222B080[k] == 0xFFFF) {
            break;
        }
    }
    return ov10_0222B080[k] != 0xFFFF
        || (MOVE_POWER(battleCtx, AI_MOVE(battleCtx)) > 1 && ov10_0222B098[j] == 0xFFFF);
}

/* One damage calculation for `battler`; returns the next battler (the attacker's partner). */
static int ov10_0221E848_Calc(void *battleSys, u8 *battleCtx, int battler, int varyDamage, s32 *damageVals) {
    int i;
    u8 ivs[6];
    u32 embargoWord;

    for (i = 0; i < 6; i++) {
        ivs[i] = GetBattlerVar(battleCtx, battler, 10 + i, NULL);
    }
    embargoWord = *(u32 *)(battleCtx + battler * 0xc0 + 0x2dcc);
    ov10_0221EF7C(battleSys, battleCtx, battler, (u16 *)(battleCtx + battler * 0xc0 + 0x2d4c), damageVals,
                  *(u16 *)(battleCtx + battler * 0xc0 + 0x2db8), ivs, GetBattlerAbility(battleCtx, battler),
                  (embargoWord << 10) >> 29, varyDamage);
    return BattleSystem_GetBattlerIdPartner(battleSys, AI_ATTACKER(battleCtx));
}

void ov10_0221E848(void *battleSys, u8 *battleCtx) {
    /* damageVals is indexed with an unchecked byte (the AI move slot), so the frame is laid out like the
       original's: the array sits 0x28 bytes below the entry stack pointer and the word right above it is
       the caller's r3 (pushed by the original's prologue). */
    u32 padAbove = 0;
    u32 callerR3;
    s32 damageVals[4];
    s32 moveDamage;
    int i;
    int j;
    int battler;
    int varyDamage;

    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    ov10_0221EF24(battleCtx, 1);
    varyDamage = ov10_0221EEF0(battleCtx);

    if (ov10_0221E848_ShouldCalc(battleCtx)) {
        battler = AI_ATTACKER(battleCtx);
        for (j = 0; j < 2; j++) {
            battler = ov10_0221E848_Calc(battleSys, battleCtx, battler, varyDamage, damageVals);
            if (j == 0) {
                moveDamage = damageVals[AI_MOVE_SLOT(battleCtx)];
            }
            for (i = 0; i < 4; i++) {
                if (damageVals[i] > moveDamage) {
                    break;
                }
            }
            if (i == 4) {
                AI_CALC_TEMP(battleCtx) = 2;
            } else {
                AI_CALC_TEMP(battleCtx) = 1;
                break;
            }
        }
    } else {
        AI_CALC_TEMP(battleCtx) = 0;
    }
}
