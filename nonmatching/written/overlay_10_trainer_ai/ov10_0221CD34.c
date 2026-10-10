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

/* Everything up to and including the damage calculation; returns whether the damage was calculated. */
static int ov10_0221CD34_Calc(void *battleSys, u8 *battleCtx, s32 *moveDamage) {
    int i;
    int noCalcIdx;
    int altPowerIdx;
    int varyDamage;
    u8 ivs[6];
    u32 attacker;
    u32 embargoWord;
    u16 effect;

    ov10_0221EF24(battleCtx, 1);
    varyDamage = ov10_0221EEF0(battleCtx);

    effect = MOVE_EFFECT(battleCtx, AI_MOVE(battleCtx));
    for (noCalcIdx = 0; ; ) {
        if (effect == ov10_0222B098[noCalcIdx]) {
            break;
        }
        noCalcIdx++;
        if (ov10_0222B098[noCalcIdx] == 0xFFFF) {
            break;
        }
    }
    for (altPowerIdx = 0; ; ) {
        if (effect == ov10_0222B080[altPowerIdx]) {
            break;
        }
        altPowerIdx++;
        if (ov10_0222B080[altPowerIdx] == 0xFFFF) {
            break;
        }
    }

    if (ov10_0222B080[altPowerIdx] != 0xFFFF
        || (MOVE_POWER(battleCtx, AI_MOVE(battleCtx)) > 1 && ov10_0222B098[noCalcIdx] == 0xFFFF)) {
        for (i = 0; i < 6; i++) {
            ivs[i] = GetBattlerVar(battleCtx, AI_ATTACKER(battleCtx), 10 + i, NULL);
        }
        attacker = AI_ATTACKER(battleCtx);
        embargoWord = *(u32 *)(battleCtx + attacker * 0xc0 + 0x2dcc);
        ov10_0221EF7C(battleSys, battleCtx, attacker, (u16 *)(battleCtx + attacker * 0xc0 + 0x2d4c), moveDamage,
                      *(u16 *)(battleCtx + attacker * 0xc0 + 0x2db8), ivs, GetBattlerAbility(battleCtx, attacker),
                      (embargoWord << 10) >> 29, varyDamage);
        return 1;
    }
    return 0;
}

void ov10_0221CD34(void *battleSys, u8 *battleCtx) {
    /* moveDamage is indexed with an unchecked byte (the AI move slot), so the frame is laid out like the
       original's: the array sits 0x28 bytes below the entry stack pointer and the word right above it is
       the caller's r3 (pushed by the original's prologue).  Only {r4, lr} are saved here. */
    u32 padAbove = 0;
    u32 callerR3;
    s32 moveDamage[4];
    int i;

    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    if (ov10_0221CD34_Calc(battleSys, battleCtx, moveDamage)) {
        for (i = 0; i < 4; i++) {
            if (moveDamage[i] > moveDamage[AI_MOVE_SLOT(battleCtx)]) {
                break;
            }
        }
        if (i == 4) {
            AI_CALC_TEMP(battleCtx) = 2;
        } else {
            AI_CALC_TEMP(battleCtx) = 1;
        }
    } else {
        AI_CALC_TEMP(battleCtx) = 0;
    }
}
