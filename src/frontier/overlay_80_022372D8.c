#include "frontier/overlay_80_022372D8.h"

#include "global.h"

#include "battle/battle_setup.h"

#include "heap.h"
#include "math_util.h"
#include "party.h"
#include "player_data.h"
#include "pokemon.h"
#include "unk_02034354.h"
#include "unk_02035900.h"
#include "use_item_on_mon.h"

extern void *ov80_02229F04(void *dst, u16 trainerId, int heapId, int a3);
extern void ov80_0222A140(void *a0, Pokemon *mon, int a2);
extern void ov80_0222A480(BattleSetup *setup, void *a1, int a2, int battler, int heapId);
extern void ov80_0222A4EC(void *a0, u16 a1, int a2, int a3, int a4, void *a5, void *a6);
extern int sub_02030BD0(int a0, void *a1);
extern fx32 FX_Sqrt(fx32 a0);

void _s32_div_f(void);
void _u32_div_f(void);

extern const u16 ov80_0223C608[];
extern const u16 ov80_0223C698[];
extern const u16 ov80_0223C738[];
extern const u16 ov80_0223C990[];
extern const u16 ov80_0223CD4A[];
extern const u8 ov80_0223C5B8[];
extern const u16 ov80_0223C5A8[];
extern const u16 ov80_0223C5B4[];
extern const u16 ov80_0223C5E0[];
extern const u8 ov80_0223D4C0[];

static u8 ov80_02237820(void *work, u8 slot);
static u32 ov80_02237850(u8 a0);
static u8 ov80_02237888(u8 a0);
static void ov80_02237894(void *work, int rank, u16 trainerId, u16 *slots, int count, void *a5, void *a6);
static u16 ov80_022378F8(void *work, int a1);
static int ov80_0223796C(int a0);
static int ov80_02237980(void *work, u8 slot, int a2);
static int ov80_022379C0(u32 a0);

void ov80_022372D8(u8 a0, int count, int a2, u8 a3, u16 *out) {
    int i;
    u16 *dst;
    const u16 *row;
    const u16 *base;
    u16 rnd;

    i = 0;
    a2 = ov80_022379C0(a2);
    dst = (u16 *)((u8 *)out + (((u32)(a3 & 0x7F) << 0x19) >> 0x17));
    row = (const u16 *)((const u8 *)ov80_0223C698 + (((u32)a2 << 0x18) >> 0x14));
    base = (const u16 *)((const u8 *)ov80_0223C608 + (u32)a0 * 8);
    do {
        rnd = LCRandom() % 0xc;
        if (rnd < 8) {
            *dst = row[rnd];
        } else {
            *dst = *(const u16 *)((const u8 *)base + (u32)rnd * 2 - 0x10);
        }
        i++;
        dst++;
    } while (i < count);
}

#ifdef NONMATCHING
void ov80_02237334(u8 a0, int count, u16 a2, int a3, u8 a4, u16 *out) {
    int filled;
    u16 *outPtr;
    u16 rnd4;
    u16 saved_rnd4;
    int slot;
    int outOff;
    const u16 *row;
    u16 curVal;
    u16 tableVal;
    int j;
    u16 *scanPtr;
    u32 clamped;
    u32 a4off;

    filled = 0;
    clamped = (u32)(u8)ov80_022379C0((u8)a3);
    a4off = ((u32)(a4 & 0x7F) << 0x19) >> 0x18;

    if (a0 == 0) {
        u32 sum = (u32)((a4 + 1) + 0xa * a2);
        if (sum == 0x32) {
            *(u16 *)((u8 *)out + a4off * 2) = 0x133;
            return;
        }
        if (sum == 0xaa) {
            *(u16 *)((u8 *)out + a4off * 2) = 0x4d << 2;
            return;
        }
    }

    outPtr = (u16 *)((u8 *)out + a4off * 2);

loop_start:
    rnd4 = (u16)(LCRandom() % (u32)(0x4b << 2));
    slot = (int)a4off + filled;
    outOff = slot * 2;
    saved_rnd4 = rnd4;
    row = (const u16 *)((const u8 *)ov80_0223C698 + (clamped << 4));

next_candidate:
    curVal = *(u16 *)((u8 *)out + outOff);
    tableVal = ov80_0223C738[rnd4];
    if (curVal == tableVal) {
        j = 0;
        if (slot > 0) {
            scanPtr = out;
            do {
                if (*scanPtr == rnd4) {
                    break;
                }
                j++;
                scanPtr++;
            } while (j < slot);
        }
        if (j == slot) {
            *outPtr = rnd4;
            outPtr++;
            filled++;
            if (filled < count) {
                goto loop_start;
            }
            return;
        }
    }
    {
        u16 next = (u16)(rnd4 + 1);
        if (next >= (u16)(0x4b << 2)) {
            next = 0;
        }
        rnd4 = next;
        if (rnd4 != saved_rnd4) {
            goto next_candidate;
        }
    }
    {
        u16 pick;
        do {
            u32 rv;
            u32 r1;
            u32 r2;
            u16 idx;
            rv = LCRandom();
            r1 = rv >> 0x1f;
            r2 = (rv << 0x1d) - r1;
            r2 = (r2 >> 0x1d) | (r2 << 0x3);
            idx = (u16)(r1 + r2) * 2;
            pick = *(const u16 *)((const u8 *)row + idx);
        } while (curVal == pick);
        *(u16 *)((u8 *)out + outOff) = pick;
    }
    goto next_candidate;
}
#else
// clang-format off
// NONMATCHING: draft C diverges (stack frame / control flow); transcribed asm.
asm void ov80_02237334(u8 a0, int count, u16 a2, int a3, u8 a4, u16 *out) {
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, [sp, #0x34]
	str r1, [sp, #0]
	str r0, [sp, #0x34]
	mov r0, #0
	str r0, [sp, #0x10]
	add r0, sp, #0x20
	ldrb r4, [r0, #0x10]
	add r6, r2, #0
	lsl r0, r4, #0x19
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	add r0, r3, #0
	bl ov80_022379C0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	cmp r5, #0
	bne _0223738E
	mov r0, #0xa
	add r1, r4, #1
	mul r0, r6
	add r0, r1, r0
	cmp r0, #0x32
	bne _0223737A
	ldr r0, [sp, #8]
	ldr r2, =0x00000133
	lsl r1, r0, #1
	ldr r0, [sp, #0x34]
	add sp, #0x1c
	strh r2, [r0, r1]
	pop {r4, r5, r6, r7, pc}
_0223737A:
	cmp r0, #0xaa
	bne _0223738E
	ldr r0, [sp, #8]
	mov r2, #0x4d
	lsl r1, r0, #1
	ldr r0, [sp, #0x34]
	lsl r2, r2, #2
	strh r2, [r0, r1]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_0223738E:
	ldr r0, [sp, #8]
	lsl r1, r0, #1
	ldr r0, [sp, #0x34]
	add r0, r0, r1
	str r0, [sp, #0xc]
_02237398:
	bl LCRandom
	mov r1, #0x4b
	lsl r1, r1, #2
	bl _u32_div_f
	lsl r0, r1, #0x10
	lsr r4, r0, #0x10
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x10]
	str r4, [sp, #0x14]
	add r5, r1, r0
	lsl r0, r5, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #4]
	lsl r1, r0, #4
	ldr r0, =ov80_0223C698
	add r7, r0, r1
_022373BC:
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x18]
	ldrh r6, [r1, r0]
	ldr r0, =ov80_0223C738
	lsl r1, r4, #1
	ldrh r0, [r0, r1]
	cmp r6, r0
	bne _022373F6
	mov r1, #0
	cmp r5, #0
	ble _022373E2
	ldr r2, [sp, #0x34]
_022373D4:
	ldrh r0, [r2, #0]
	cmp r4, r0
	beq _022373E2
	add r1, r1, #1
	add r2, r2, #2
	cmp r1, r5
	blt _022373D4
_022373E2:
	cmp r1, r5
	bne _022373F6
	ldr r0, [sp, #0xc]
	strh r4, [r0, #0]
	add r0, r0, #2
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	b _0223742E
_022373F6:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	mov r0, #0x4b
	lsl r0, r0, #2
	cmp r4, r0
	blo _02237406
	mov r4, #0
_02237406:
	ldr r0, [sp, #0x14]
	cmp r4, r0
	bne _022373BC
_0223740C:
	bl LCRandom
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x1d
	sub r2, r2, r1
	mov r0, #0x1d
	ror r2, r0
	add r0, r1, r2
	lsl r0, r0, #0x10
	lsr r0, r0, #0xf
	ldrh r2, [r7, r0]
	cmp r6, r2
	beq _0223740C
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x18]
	strh r2, [r1, r0]
	b _022373BC
_0223742E:
	add r1, r0, #0
	ldr r0, [sp, #0]
	cmp r1, r0
	blt _02237398
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
}
// clang-format on
#endif

#ifdef NONMATCHING
void ov80_02237448(int a0, u8 a1, int a2, u8 a3, u16 a4, u16 *a5, int a6) {
    u32 a3off;
    u8 clamped;
    u16 r5_idx;
    u16 r2;
    int rank;
    const u16 *rangePtr;
    u16 r2_start;
    int wrapped;
    int filled;
    int ipOff;
    u16 *outBase;

    wrapped = 0;
    a3off = ((u32)(a3 & 0x7F) << 0x19) >> 0x18;
    clamped = (u8)ov80_022379C0((u8)a2);

    if (a6 != 0) {
        u32 idx;
        r5_idx = (u16)(0x1DD - 0x65);
        for (idx = 0; idx < (u32)0x1DD; idx++) {
            if (a4 == ov80_0223C990[idx]) {
                r5_idx = (u16)idx;
                break;
            }
        }
        rank = 0;
        while (rank < 4) {
            if (r5_idx < ov80_0223C5A8[rank * 2 + 1]) {
                break;
            }
            rank++;
        }
        if (rank >= 4) {
            rank = 3;
        }
        if (a6 == 2) {
            rangePtr = ov80_0223C5B4;
        } else {
            rangePtr = ov80_0223C5A8 + rank * 2;
        }
    } else {
        rangePtr = ov80_0223C5E0 + (u32)clamped * 2;
    }

    {
        u16 lo = rangePtr[0];
        u16 hi = rangePtr[1];
        u16 range = (u16)((u16)(hi - lo) + 1);
        r2 = (u16)(lo + (u16)(LCRandom() % (u32)range) - 1);
    }
    r2_start = r2;

    if (a0 <= 0) {
        return;
    }

    ipOff = (int)((a3off - 2) * 2);
    outBase = (u16 *)((u8 *)a5 + a3off * 2);
    filled = 0;

    while (filled < a0) {
        int pass;
        if (!wrapped) {
            int k;
            pass = (int)a3off;
            if ((int)a3off > 0) {
                u16 check = r2 + 1;
                for (k = 0; k < (int)a3off; k++) {
                    if (*(u16 *)((u8 *)a5 + k * 2) == check) {
                        pass = 0;
                        break;
                    }
                }
            }
        } else {
            u16 prev = *(u16 *)((u8 *)a5 + ipOff);
            if (r2 + 1 == prev) {
                pass = 0;
            } else {
                pass = (int)a3off;
            }
        }

        if (pass == (int)a3off) {
            if (a6 != 0) {
                if (a4 != ov80_0223C990[r2]) {
                    *(u16 *)((u8 *)outBase + (u32)filled * 2) = r2 + 1;
                    filled++;
                }
            } else {
                u16 cdA = ov80_0223CD4A[r2 * 2];
                u16 cdB = ov80_0223CD4A[r2 * 2 + 1];
                if (a1 == cdA || a1 == cdB) {
                    if (a4 != ov80_0223C990[r2]) {
                        *(u16 *)((u8 *)outBase + (u32)filled * 2) = r2 + 1;
                        filled++;
                    }
                }
            }
        }

        {
            u16 next_r2 = (u16)(r2 + 1);
            if ((u16)(next_r2 + 1) >= rangePtr[1]) {
                next_r2 = (u16)(rangePtr[0] - 1);
            }
            r2 = next_r2;
        }

        if (r2 == r2_start) {
            wrapped = 1;
        }
    }
}
#else
// clang-format off
// NONMATCHING: draft C diverges (stack frame / control flow); transcribed asm.
asm void ov80_02237448(int a0, u8 a1, int a2, u8 a3, u16 a4, u16 *a5, int a6) {
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #0]
	str r1, [sp, #4]
	ldr r0, [sp, #0x28]
	mov r7, #0
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x30]
	ldr r6, [sp, #0x2c]
	str r0, [sp, #0x30]
	lsl r0, r3, #0x19
	lsr r4, r0, #0x18
	add r0, r2, #0
	str r7, [sp, #0xc]
	bl ov80_022379C0
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _022374CE
	ldr r3, =ov80_0223C990
	add r2, r7, #0
_02237476:
	lsl r0, r2, #1
	ldrh r1, [r3, r0]
	ldr r0, [sp, #0x28]
	cmp r0, r1
	bne _02237484
	add r5, r2, #0
	b _02237490
_02237484:
	add r0, r2, #1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	ldr r0, =0x000001DD
	cmp r2, r0
	blo _02237476
_02237490:
	ldr r0, =0x000001DD
	cmp r2, r0
	bne _0223749A
	add r5, r0, #0
	sub r5, #0x65
_0223749A:
	ldr r0, =ov80_0223C5A8
	mov r1, #0
_0223749E:
	lsl r2, r1, #2
	add r2, r0, r2
	ldrh r2, [r2, #2]
	cmp r5, r2
	blo _022374B2
	add r1, r1, #1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	cmp r1, #4
	blo _0223749E
_022374B2:
	cmp r1, #4
	bne _022374B8
	mov r1, #3
_022374B8:
	ldr r0, [sp, #0x30]
	cmp r0, #2
	bne _022374C4
	ldr r0, =ov80_0223C5B4
	str r0, [sp, #0x10]
	b _022374D6
_022374C4:
	ldr r2, =ov80_0223C5A8
	lsl r0, r1, #2
	add r0, r2, r0
	str r0, [sp, #0x10]
	b _022374D6
_022374CE:
	ldr r1, =ov80_0223C5E0
	lsl r0, r2, #2
	add r0, r1, r0
	str r0, [sp, #0x10]
_022374D6:
	ldr r0, [sp, #0x10]
	ldrh r1, [r0, #2]
	ldrh r0, [r0, #0]
	sub r0, r1, r0
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	bl LCRandom
	add r1, r5, #0
	bl _s32_div_f
	ldr r0, [sp, #0x10]
	ldrh r0, [r0, #0]
	add r0, r0, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	sub r0, r0, #1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	str r2, [sp, #8]
	ldr r0, [sp, #0]
	cmp r0, #0
	ble _022375B4
	sub r0, r4, #2
	lsl r0, r0, #1
	mov ip, r0
	lsl r0, r4, #1
	add r5, r6, r0
_02237510:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _02237532
	mov r0, #0
	cmp r4, #0
	ble _02237542
	add r1, r2, #1
_0223751E:
	lsl r3, r0, #1
	ldrh r3, [r6, r3]
	cmp r1, r3
	beq _02237542
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, r4
	blt _0223751E
	b _02237542
_02237532:
	mov r1, ip
	ldrh r1, [r6, r1]
	add r0, r2, #1
	cmp r0, r1
	bne _02237540
	mov r0, #0
	b _02237542
_02237540:
	add r0, r4, #0
_02237542:
	cmp r0, r4
	bne _0223758A
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _02237562
	ldr r0, =ov80_0223C990
	lsl r1, r2, #1
	ldrh r1, [r0, r1]
	ldr r0, [sp, #0x28]
	cmp r0, r1
	beq _0223758A
	lsl r0, r7, #1
	add r1, r2, #1
	strh r1, [r5, r0]
	add r7, r7, #1
	b _0223758A
_02237562:
	ldr r1, =ov80_0223CD4A
	lsl r0, r2, #2
	add r3, r1, r0
	ldrh r1, [r1, r0]
	ldr r0, [sp, #4]
	cmp r0, r1
	beq _02237576
	ldrh r1, [r3, #2]
	cmp r0, r1
	bne _0223758A
_02237576:
	ldr r0, =ov80_0223C990
	lsl r1, r2, #1
	ldrh r1, [r0, r1]
	ldr r0, [sp, #0x28]
	cmp r0, r1
	beq _0223758A
	lsl r0, r7, #1
	add r1, r2, #1
	strh r1, [r5, r0]
	add r7, r7, #1
_0223758A:
	ldr r1, [sp, #0x10]
	add r0, r2, #1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
	ldrh r1, [r1, #2]
	add r0, r2, #1
	cmp r0, r1
	blt _022375A4
	ldr r0, [sp, #0x10]
	ldrh r0, [r0, #0]
	sub r0, r0, #1
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
_022375A4:
	ldr r0, [sp, #8]
	cmp r2, r0
	bne _022375AE
	mov r0, #1
	str r0, [sp, #0xc]
_022375AE:
	ldr r0, [sp, #0]
	cmp r7, r0
	blt _02237510
_022375B4:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
}
// clang-format on
#endif

#ifdef NONMATCHING
BattleSetup *ov80_022375D0(void *work, void *fieldCtx) {
    BattleSetup *setup;
    Party *party;
    Pokemon *tmpMon;
    int sides_a;
    int sides_b;
    u32 r7;
    u32 r7x2;
    int i;
    int rank;
    int diffLevel;
    int loopCnt;
    void *trainerBuf;
    u32 r7x38;

    r7 = ((u32)(*(u8 *)((u8 *)work + 5) & 0x7F) << 0x19) >> 0x18;
    sides_a = ov80_0223787C(*(u8 *)((u8 *)work + 4));
    sides_b = ov80_02237888(*(u8 *)((u8 *)work + 4));

    party = SaveArray_Party_Get(*(SaveData **)((u8 *)work + 0x6FC));
    HealParty(party);

    setup = BattleSetup_New(HEAP_ID_FIELD2, ov80_02237850(*(u8 *)((u8 *)work + 4)));
    sub_02051D18(setup,
        (FieldSystem *)*(void **)((u8 *)fieldCtx + 8),
        *(SaveData **)((u8 *)fieldCtx + 0x18),
        0,
        (BagCursor *)*(void **)((u8 *)fieldCtx + 0xc),
        *(void **)((u8 *)fieldCtx + 0x1c));

    *(u32 *)((u8 *)setup + (0x53 << 2)) = 0x16;
    *(u32 *)((u8 *)setup + (0x53 << 2) + 4) = 0x16;

    Party_InitWithMaxSize(setup->party[0], sides_a);

    tmpMon = AllocMonZeroed(HEAP_ID_FIELD2);
    for (i = 0; i < sides_a; i++) {
        u8 slotIdx = *(u8 *)((u8 *)work + i + 0x260);
        Pokemon *src = Party_GetMonByIndex(party, (int)slotIdx);
        CopyPokemonToPokemon(src, tmpMon);
        BattleSetup_AddMonToParty(setup, tmpMon, 0);
    }
    Heap_Free(tmpMon);

    BattleSetup_SetAllySideBattlersToPlayer(setup);

    r7x2 = r7 * 2;
    {
        void *wkbase = (u8 *)work + 0x18;
        u16 trainerId = *(u16 *)((u8 *)wkbase + r7x2);
        trainerBuf = (u8 *)work + 0x34;
        ov80_02229F04(trainerBuf, trainerId, 0xb, 0xcc);
        Heap_Free(trainerBuf);
        ov80_0222A480(setup, trainerBuf, sides_b, 1, 0xb);
    }

    Party_InitWithMaxSize(setup->party[2], sides_b);

    {
        u8 unk4 = *(u8 *)((u8 *)work + 4);
        u8 unk5f = *(u8 *)((u8 *)work + 0x6F5);
        void *rankData = (u8 *)work + 0x6F5 + 0xf + (int)unk4 * 9;
        rank = sub_02030BD0((int)unk5f, rankData);
        if (unk4 == 2) {
            rank = 9;
        }
    }

    diffLevel = ov80_02237980(work, (u8)r7, rank);

    {
        int k;
        u8 *p = (u8 *)setup + 0x34;
        for (k = 0; k < 4; k++) {
            *(u32 *)p = (u32)diffLevel;
            p += 0x34;
        }
    }

    r7x38 = r7 * 0x38;
    {
        void *wkbase = (u8 *)work + 0x18;
        u16 trainerId2 = *(u16 *)((u8 *)wkbase + r7x2);
        void *oppBase = (u8 *)work + 0x290 + r7x38;
        u16 *slotArr = (u16 *)((u8 *)work + 0x268) + r7;

        ov80_02237894(oppBase, rank, trainerId2, slotArr, sides_b, (void *)(u32)0xb, (void *)(u32)0xce);

        tmpMon = AllocMonZeroed(HEAP_ID_FIELD2);
        loopCnt = 0;
        if (sides_b > 0) {
            do {
                while (ov80_02237820(work, (u8)r7)) { }
                {
                    u8 monIdx = ov80_022378F8(work, rank);
                    ov80_0222A140(oppBase, tmpMon, (int)monIdx);
                }
                UpdateMonAbility(tmpMon);
                BattleSetup_AddMonToParty(setup, tmpMon, 1);
                loopCnt++;
            } while (loopCnt < sides_b);
        }
        Heap_Free(tmpMon);
    }

    if (*(u8 *)((u8 *)work + 4) == 2 || *(u8 *)((u8 *)work + 4) == 3) {
        BattleSetup_SetAllySideBattlersToPlayer(setup);
        {
            BOOL online = sub_0203769C();
            PlayerProfile *prof = sub_02034818((u32)(1 - (int)online));
            PlayerProfile_Copy(prof,
                (PlayerProfile *)*(void **)((u8 *)setup + (1 << 8)));
        }
        {
            void *wkbase = (u8 *)work + 0x18;
            u16 trainerId3 = *(u16 *)((u8 *)wkbase + (r7 + 1) * 2);
            trainerBuf = (u8 *)work + 0x34;
            ov80_02229F04(trainerBuf, trainerId3, 0xb, 0xcc);
            Heap_Free(trainerBuf);
            ov80_0222A480(setup, trainerBuf, sides_b, 3, 0xb);
        }
        Party_InitWithMaxSize(setup->party[4], sides_b);
        tmpMon = AllocMonZeroed(HEAP_ID_FIELD2);
        {
            void *monRow = (u8 *)work + 0x290 + r7x38;
            while (ov80_02237820(work, (u8)r7)) { }
            {
                u8 monIdx = ov80_022378F8(work, rank);
                ov80_0222A140(monRow, tmpMon, (int)monIdx);
            }
            UpdateMonAbility(tmpMon);
            BattleSetup_AddMonToParty(setup, tmpMon, 3);
            Heap_Free(tmpMon);
        }
    }

    return setup;
}
#else
// clang-format off
// NONMATCHING: draft C diverges (stack frame / control flow); transcribed asm.
asm BattleSetup *ov80_022375D0(void *work, void *fieldCtx) {
	push {r4, r5, r6, r7, lr}
	sub sp, #0x64
	add r5, r0, #0
	ldrb r0, [r5, #5]
	add r6, r1, #0
	lsl r0, r0, #0x19
	lsr r7, r0, #0x18
	ldrb r0, [r5, #4]
	bl ov80_0223787C
	str r0, [sp, #0x18]
	ldrb r0, [r5, #4]
	bl ov80_02237888
	str r0, [sp, #0x10]
	ldr r0, =0x000006FC
	ldr r0, [r5, r0]
	bl SaveArray_Party_Get
	str r0, [sp, #0x1c]
	bl HealParty
	ldrb r0, [r5, #4]
	bl ov80_02237850
	add r1, r0, #0
	mov r0, #0xb
	bl BattleSetup_New
	ldr r1, [r6, #0xc]
	add r4, r0, #0
	str r1, [sp, #0]
	ldr r1, [r6, #0x1c]
	str r1, [sp, #4]
	ldr r2, [r6, #8]
	ldr r3, [r6, #0x18]
	mov r1, #0
	bl sub_02051D18
	mov r0, #0x53
	mov r1, #0x16
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x18]
	bl Party_InitWithMaxSize
	mov r0, #0xb
	bl AllocMonZeroed
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	mov r6, #0
	cmp r0, #0
	ble _02237668
_02237642:
	mov r1, #0x26
	add r2, r5, r6
	lsl r1, r1, #4
	ldrb r1, [r2, r1]
	ldr r0, [sp, #0x1c]
	bl Party_GetMonByIndex
	ldr r1, [sp, #0x20]
	bl CopyPokemonToPokemon
	ldr r1, [sp, #0x20]
	add r0, r4, #0
	mov r2, #0
	bl BattleSetup_AddMonToParty
	ldr r0, [sp, #0x18]
	add r6, r6, #1
	cmp r6, r0
	blt _02237642
_02237668:
	ldr r0, [sp, #0x20]
	bl Heap_Free
	add r0, r4, #0
	bl BattleSetup_SetAllySideBattlersToPlayer
	lsl r0, r7, #1
	str r0, [sp, #0x28]
	add r6, r5, #0
	ldr r1, [sp, #0x28]
	add r6, #0x18
	ldrh r1, [r6, r1]
	add r0, sp, #0x34
	mov r2, #0xb
	mov r3, #0xcc
	bl ov80_02229F04
	bl Heap_Free
	mov r0, #0xb
	str r0, [sp, #0]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	add r1, sp, #0x34
	mov r3, #1
	bl ov80_0222A480
	ldr r0, [r4, #8]
	ldr r1, [sp, #0x10]
	bl Party_InitWithMaxSize
	ldr r1, =0x000006F5
	ldrb r2, [r5, #4]
	ldrb r0, [r5, r1]
	add r1, #0xf
	add r3, r5, r1
	lsl r1, r2, #3
	add r1, r2, r1
	add r1, r3, r1
	bl sub_02030BD0
	str r0, [sp, #0x24]
	ldrb r0, [r5, #4]
	cmp r0, #2
	bne _022376C6
	mov r0, #9
	str r0, [sp, #0x24]
_022376C6:
	ldr r2, [sp, #0x24]
	add r0, r5, #0
	add r1, r7, #0
	bl ov80_02237980
	mov r2, #0
	add r1, r4, #0
_022376D4:
	add r2, r2, #1
	str r0, [r1, #0x34]
	add r1, #0x34
	cmp r2, #4
	blt _022376D4
	mov r0, #0x38
	mul r0, r7
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	mov r3, #0x29
	str r0, [sp, #0]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #0xce
	str r0, [sp, #8]
	ldr r2, [sp, #0x28]
	lsl r3, r3, #4
	add r1, r5, r3
	ldr r0, [sp, #0x14]
	ldrh r2, [r6, r2]
	sub r3, #0x28
	add r0, r1, r0
	add r6, r5, r3
	lsl r3, r7, #1
	ldr r1, [sp, #0x24]
	add r3, r6, r3
	bl ov80_02237894
	mov r0, #0xb
	bl AllocMonZeroed
	add r6, r0, #0
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ble _0223776E
	mov r0, #0x29
	lsl r0, r0, #4
	add r0, r5, r0
	str r0, [sp, #0x2c]
	mov r0, #0x38
	mul r0, r7
	str r0, [sp, #0x30]
_0223772C:
	add r0, r5, #0
	add r1, r7, #0
	bl ov80_02237820
	cmp r0, #0
	bne _0223772C
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	bl ov80_022378F8
	add r2, r0, #0
	lsl r2, r2, #0x18
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	lsr r2, r2, #0x18
	add r0, r1, r0
	add r1, r6, #0
	bl ov80_0222A140
	add r0, r6, #0
	bl UpdateMonAbility
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #1
	bl BattleSetup_AddMonToParty
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	str r1, [sp, #0xc]
	cmp r1, r0
	blt _0223772C
_0223776E:
	add r0, r6, #0
	bl Heap_Free
	ldrb r0, [r5, #4]
	cmp r0, #2
	beq _0223777E
	cmp r0, #3
	bne _02237810
_0223777E:
	add r0, r4, #0
	bl BattleSetup_SetAllySideBattlersToPlayer
	bl sub_0203769C
	mov r1, #1
	sub r0, r1, r0
	bl sub_02034818
	mov r1, #1
	lsl r1, r1, #8
	ldr r1, [r4, r1]
	bl PlayerProfile_Copy
	add r1, r7, #1
	lsl r1, r1, #1
	add r1, r5, r1
	ldrh r1, [r1, #0x18]
	add r0, sp, #0x34
	mov r2, #0xb
	mov r3, #0xcc
	bl ov80_02229F04
	bl Heap_Free
	mov r0, #0xb
	str r0, [sp, #0]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	add r1, sp, #0x34
	mov r3, #3
	bl ov80_0222A480
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #0x10]
	bl Party_InitWithMaxSize
	mov r0, #0xb
	bl AllocMonZeroed
	add r6, r0, #0
_022377D0:
	add r0, r5, #0
	add r1, r7, #0
	bl ov80_02237820
	cmp r0, #0
	bne _022377D0
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	bl ov80_022378F8
	add r2, r0, #0
	mov r0, #0x29
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, [sp, #0x14]
	lsl r2, r2, #0x18
	add r0, r1, r0
	add r1, r6, #0
	lsr r2, r2, #0x18
	bl ov80_0222A140
	add r0, r6, #0
	bl UpdateMonAbility
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #3
	bl BattleSetup_AddMonToParty
	add r0, r6, #0
	bl Heap_Free
_02237810:
	add r0, r4, #0
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
}
// clang-format on
#endif

static u8 ov80_02237820(void *work, u8 slot) {
    u32 offset;
    u32 *pidPtr;
    u32 pid;
    u32 otid;

    offset = (u32)slot * 0x38;
    pidPtr = (u32 *)((u8 *)work + 0x2a0 + offset);
    pid = *pidPtr;
    if (pid > 0x3D0A9) {
        *pidPtr = pid - 0x3D0A9;
    } else {
        *pidPtr = pid + 0x3D0A9;
    }
    otid = *(u32 *)((u8 *)work + 0x29C + offset);
    return CalcShininessByOtIdAndPersonality(otid, *pidPtr);
}

static u32 ov80_02237850(u8 a0) {
    switch (a0) {
    case 0:
        return 0x81;
    case 1:
        return 0x83;
    case 2:
        return 0x8f;
    case 3:
        return 0x8f;
    default:
        return 0x81;
    }
}

u8 ov80_0223787C(u8 a0) {
    if (a0 == 1) {
        return 2;
    }
    return 1;
}

static u8 ov80_02237888(u8 a0) {
    if (a0 == 1) {
        return 2;
    }
    return 1;
}

static void ov80_02237894(void *work, int rank, u16 trainerId, u16 *slots, int count, void *a5, void *a6) {
    int level;
    int i;

    if (trainerId == 0x133) {
        level = 0x1f;
    } else if (trainerId == 0x134) {
        level = 0x1f;
    } else {
        level = ov80_0223796C(rank);
    }

    for (i = 0; i < count; i++) {
        ov80_0222A4EC(work, *slots, i, (u8)level, 0, a5, a6);
        slots++;
        work = (u8 *)work + 0x38;
    }
}

static u16 ov80_022378F8(void *work, int a1) {
    u8 slot;
    u16 val;
    u16 check;

    slot = *(u8 *)((u8 *)work + 5);
    val = *(u16 *)((u8 *)work + 0x18 + (((u32)(slot & 0x7F) << 0x19) >> 0x17));
    check = (u16)(val + 0xFECD);
    if (check <= 1) {
        return ov80_022379C8(work);
    }
    return *(u8 *)((u8 *)work + 7);
}

u8 ov80_02237920(u8 a0) {
    return ov80_0223D4C0[a0];
}

int ov80_0223792C(u8 a0) {
    switch (a0) {
    case 2:
    case 3:
        return 1;
    }
    return 0;
}

u8 ov80_0223793C(void *work) {
    Party *party;
    Pokemon *mon;
    int level;

    party = SaveArray_Party_Get(*(SaveData **)((u8 *)work + 0x6FC));
    mon = Party_GetMonByIndex(party, *(u8 *)((u8 *)work + 0x260));
    level = GetMonData(mon, 0xa1, NULL);
    level = level / 10;
    return (u8)level;
}

static int ov80_0223796C(int a0) {
    int clamped;
    clamped = ov80_022379C0(a0);
    return ov80_0223C5B8[(u32)clamped << 2];
}

static int ov80_02237980(void *work, u8 slot, int a2) {
    u8 unk4;

    a2++;
    if (a2 >= 8) {
        a2 = 7;
    } else if (a2 >= 4) {
        a2 = 1;
    } else {
        a2 = 0;
    }

    unk4 = *(u8 *)((u8 *)work + 4);
    if (unk4 == 0) {
        u16 val = *(u16 *)((u8 *)work + 0x18 + (((u32)(slot & 0x7F) << 0x19) >> 0x17));
        u16 check = (u16)(val + 0xFECD);
        if (check <= 1) {
            a2 = 7;
        }
    }

    if (unk4 == 2) {
        a2 = 7;
    }

    return a2;
}

static int ov80_022379C0(u32 a0) {
    if (a0 >= 0xa) {
        return 9;
    }
    return a0;
}

u16 ov80_022379C8(void *work) {
    Party *party;
    Pokemon *mon;
    u16 level;
    u16 level2;
    u8 sides;

    party = SaveArray_Party_Get(*(SaveData **)((u8 *)work + 0x6FC));
    mon = Party_GetMonByIndex(party, *(u8 *)((u8 *)work + 0x260));
    level = GetMonData(mon, 0xa1, NULL);

    sides = ov80_0223787C(*(u8 *)((u8 *)work + 4));
    if (sides == 2) {
        mon = Party_GetMonByIndex(party, *(u8 *)((u8 *)work + 0x261));
        level2 = GetMonData(mon, 0xa1, NULL);
        if (level <= level2) {
            level = level2;
        }
        return level;
    }

    if (ov80_0223792C(*(u8 *)((u8 *)work + 4)) == 1) {
        u16 minLevel = *(u16 *)((u8 *)work + 0xD84);
        if (level <= minLevel) {
            level = minLevel;
        }
        return level;
    }

    return level;
}

fx32 ov80_02237A40(u32 a0) {
    f32 t;
    if (a0 != 0) {
        t = (f32)(a0 << 12);
        t = t + 0.5f;
    } else {
        t = (f32)(a0 << 12);
        t = t - 0.5f;
    }
    return FX_Sqrt((fx32)t);
}
