#include "frontier/overlay_80_02236B78.h"

#include "global.h"

#include "battle/battle_setup.h"

#include "error_handling.h"
#include "heap.h"
#include "math_util.h"
#include "party.h"
#include "player_data.h"
#include "pokemon.h"
#include "unk_02034354.h"
#include "unk_02035900.h"
#include "use_item_on_mon.h"

extern void ov80_02229EF4(void *a0, int a1, int a2);
extern void *ov80_02229F04(void *dst, u16 trainerId, int heapId, int a3);
extern void ov80_0222A140(void *a0, Pokemon *mon, int a2);
extern void ov80_0222A3BC(void *a0, void *a1, void *a2);
extern void ov80_0222A480(BattleSetup *setup, void *a1, int a2, int battler, int heapId);
extern void ov80_0222A52C(void *a0, void *a1, void *a2, void *a3, void *a4, int a5, int a6, int a7);

void _s32_div_f(void);

extern const u32 ov80_0223C464[];
extern const u16 ov80_0223C478[];
extern const u16 ov80_0223C47A[];
extern const u16 ov80_0223C47C[];
extern const u16 ov80_0223C47E[];
extern const u8 ov80_0223C4B8[];
extern const u8 ov80_0223C508[];
extern const u8 ov80_0223C558[];

static const void *ov80_0223DD38[2];

static int ov80_02236B78(int a0, u32 a1, int a2);
static void *ov80_02236C78(int a0, int a1);
static int ov80_022370F4(int a0);
static int ov80_02237264(void *work);

static int ov80_02236B78(int a0, u32 a1, int a2) {
    u16 lo;
    int range;
    int rv;

    if (a1 >= 8) {
        a1 = 7;
    }
    if (a0 == 0) {
        int sum;
        sum = (a2 + 1) + 7 * a1;
        if (sum == 0x15) {
            return 0x135;
        }
        if (sum == 0x31) {
            return 0x136;
        }
    }
    if (a2 == 6 || a2 == 0xd) {
        lo = ov80_0223C47C[a1 * 4];
        range = ov80_0223C47E[a1 * 4] - lo;
    } else {
        lo = ov80_0223C478[a1 * 4];
        range = ov80_0223C47A[a1 * 4] - lo;
    }
    rv = LCRandom();
    return lo + rv % range;
}

#ifdef NONMATCHING
void ov80_02236BE4(int a0, int a1, u16 *a2, int a3) {
    int count;
    u16 *dst;
    int i;

    count = 0;
    dst = a2;
    do {
        *dst = ov80_02236B78(a0, a1, count);
        i = 0;
        if (count > 0) {
            u16 v;
            u16 *p;
            v = a2[count];
            p = a2;
            do {
                if (*p == v) {
                    break;
                }
                i++;
                p++;
            } while (i < count);
        }
        if (i == count) {
            dst++;
            count++;
        }
    } while (count < a3);
}
#else
// clang-format off
// NONMATCHING: MWCC register-allocation / instruction-scheduling tie; transcribed asm.
asm void ov80_02236BE4(int a0, int a1, u16 *a2, int a3) {
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r2, #0
	str r0, [sp, #0]
	str r1, [sp, #4]
	add r7, r3, #0
	mov r4, #0
	add r5, r6, #0
_02236BF4:
	ldr r0, [sp, #0]
	ldr r1, [sp, #4]
	add r2, r4, #0
	bl ov80_02236B78
	mov r1, #0
	strh r0, [r5, #0]
	cmp r4, #0
	ble _02236C1A
	lsl r0, r4, #1
	ldrh r3, [r6, r0]
	add r2, r6, #0
_02236C0C:
	ldrh r0, [r2, #0]
	cmp r0, r3
	beq _02236C1A
	add r1, r1, #1
	add r2, r2, #2
	cmp r1, r4
	blt _02236C0C
_02236C1A:
	cmp r1, r4
	bne _02236C22
	add r5, r5, #2
	add r4, r4, #1
_02236C22:
	cmp r4, r7
	blt _02236BF4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on
#endif

#ifdef NONMATCHING
void *ov80_02236C2C(int a0, int a1) {
    int i;
    int limit;

    if (a1 == 0) {
        ov80_0223DD38[0] = (void *)ov80_0223C508;
    } else {
        ov80_0223DD38[0] = (void *)ov80_0223C558;
    }
    limit = 10;
    i = 0;
    if (limit > 0) {
        u8 *ptr;
        ptr = (u8 *)ov80_0223DD38[0];
        while (i < limit) {
            if (a0 < *(u16 *)ptr) {
                break;
            }
            i++;
            ptr += 8;
        }
    }
    if (i >= limit) {
        GF_AssertFail();
        i = limit - 1;
    }
    return (u8 *)ov80_0223DD38[0] + i * 8;
}
#else
// clang-format off
// NONMATCHING: MWCC register-allocation / instruction-scheduling tie; transcribed asm.
asm void *ov80_02236C2C(int a0, int a1) {
	push {r4, lr}
	cmp r1, #0
	bne _02236C38
	ldr r2, =ov80_0223C508
	ldr r1, =ov80_0223DD38
	b _02236C3C
_02236C38:
	ldr r2, =ov80_0223C558
	ldr r1, =ov80_0223DD38
_02236C3C:
	mov r4, #0xa
	str r2, [r1, #0]
	mov r2, #0
	cmp r4, #0
	ble _02236C58
	ldr r1, =ov80_0223DD38
	ldr r3, [r1, #0]
_02236C4A:
	ldrh r1, [r3, #0]
	cmp r0, r1
	blt _02236C58
	add r2, r2, #1
	add r3, #8
	cmp r2, r4
	blt _02236C4A
_02236C58:
	cmp r2, r4
	blt _02236C62
	bl GF_AssertFail
	sub r2, r4, #1
_02236C62:
	ldr r0, =ov80_0223DD38
	ldr r1, [r0, #0]
	lsl r0, r2, #3
	add r0, r1, r0
	pop {r4, pc}
}
// clang-format on
#endif

static void *ov80_02236C78(int a0, int a1) {
    if (a0 >= 8) {
        a0 = 7;
    }
    if (a1 == 0) {
        return (void *)(ov80_0223C508 + a0 * 8);
    }
    return (void *)(ov80_0223C4B8 + a0 * 8);
}

#ifdef NONMATCHING
int ov80_02236C9C(u16 *a0, u16 *a1, int a2, int a3, u16 *a4, int a5, void *a6, u16 a7, u8 *a8) {
    int typeVal;
    int range;
    int trainerId;
    void *slotPtr;
    u16 *outPtr;
    int limit;
    u8 buf[0x60];
    int r4;
    int r5;
    int rank;

    if (a3 > 6) {
        GF_AssertFail();
    }
    r4 = 0;
    range = *(u16 *)((u8 *)a6 + 4) - *(u16 *)((u8 *)a6 + 2);
    r5 = a7;
    rank = 0;
    if (r5 != 0) {
        u32 r2;
        rank = 5;
        for (r2 = 0; r2 < 5; r2++) {
            if ((int)r5 <= (int)ov80_0223C464[r2]) {
                rank = r2;
                break;
            }
        }
    }
    if (a3 != 0) {
        outPtr = a4;
        slotPtr = buf;
        limit = a3 - rank;
        do {
            int rv;
            int rem;
            if (r4 >= limit && *(u8 *)((u8 *)a6 + 7) == 1) {
                range = *(u16 *)((u8 *)a6 + 0xc) - *(u16 *)((u8 *)a6 + 0xa);
                rv = LCRandom();
                rem = rv % (range + 1);
                trainerId = *(u16 *)((u8 *)a6 + 0xc) - rem;
                typeVal = *(u8 *)((u8 *)a6 + 0xe);
            } else {
                rv = LCRandom();
                rem = rv % (range + 1);
                trainerId = *(u16 *)((u8 *)a6 + 4) - rem;
                typeVal = *(u8 *)((u8 *)a6 + 6);
            }
            ov80_02229EF4(slotPtr, trainerId, 0xcd);
            {
                int j;
                u16 id0;
                u16 id1;
                u8 *scan;
                j = 0;
                if (r4 > 0) {
                    id0 = *(u16 *)slotPtr;
                    id1 = *(u16 *)((u8 *)slotPtr + 0xc);
                    scan = buf;
                    do {
                        if (*(u16 *)scan == id0) {
                            break;
                        }
                        if (*(u16 *)(scan + 0xc) == id1) {
                            break;
                        }
                        j++;
                        scan += 0x10;
                    } while (j < r4);
                }
                if (j == r4) {
                    int k;
                    u16 newId0;
                    u16 newId1;
                    u16 *excl0;
                    u16 *excl1;
                    k = 0;
                    if (a2 > 0) {
                        newId0 = *(u16 *)slotPtr;
                        newId1 = *(u16 *)((u8 *)slotPtr + 0xc);
                        excl0 = a0;
                        excl1 = a1;
                        do {
                            if (*excl0 == newId0) {
                                break;
                            }
                            if (*excl1 == newId1) {
                                break;
                            }
                            k++;
                            excl0++;
                            excl1++;
                        } while (k < a2);
                    }
                    if (k == a2) {
                        *outPtr = (u16)trainerId;
                        a8[r4] = (u8)typeVal;
                        r4++;
                        slotPtr = (u8 *)slotPtr + 0x10;
                        outPtr++;
                    }
                }
            }
        } while (r4 != a3);
    }
    return 0;
}
#else
// clang-format off
// NONMATCHING: MWCC register-allocation / instruction-scheduling tie; transcribed asm.
asm int ov80_02236C9C(u16 *a0, u16 *a1, int a2, int a3, u16 *a4, int a5, void *a6, u16 a7, u8 *a8) {
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	str r0, [sp, #0]
	ldr r0, [sp, #0xa0]
	str r1, [sp, #4]
	str r0, [sp, #0xa0]
	ldr r0, [sp, #0xa8]
	add r7, r2, #0
	str r0, [sp, #0xa8]
	add r0, r3, #0
	str r3, [sp, #8]
	cmp r0, #6
	ble _02236CBA
	bl GF_AssertFail
_02236CBA:
	ldr r0, [sp, #0xa0]
	mov r4, #0
	ldrh r1, [r0, #4]
	ldrh r0, [r0, #2]
	sub r0, r1, r0
	add r1, sp, #0x88
	ldrh r5, [r1, #0x1c]
	str r0, [sp, #0x1c]
	add r0, r4, #0
	cmp r5, #0
	beq _02236CE8
	ldr r3, =ov80_0223C464
	mov r0, #5
	add r2, r4, #0
_02236CD6:
	ldr r1, [r3, #0]
	cmp r5, r1
	bgt _02236CE0
	add r0, r2, #0
	b _02236CE8
_02236CE0:
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, #5
	blo _02236CD6
_02236CE8:
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _02236DC8
	add r1, sp, #0x24
	str r1, [sp, #0x14]
	ldr r1, [sp, #0x98]
	str r1, [sp, #0x10]
	ldr r1, [sp, #8]
	sub r0, r1, r0
	str r0, [sp, #0xc]
_02236CFC:
	ldr r0, [sp, #0xc]
	cmp r4, r0
	blt _02236D30
	ldr r0, [sp, #0xa0]
	ldrb r0, [r0, #7]
	cmp r0, #1
	bne _02236D30
	ldr r0, [sp, #0xa0]
	ldrh r1, [r0, #0xc]
	ldrh r0, [r0, #0xa]
	sub r0, r1, r0
	str r0, [sp, #0x1c]
	bl LCRandom
	ldr r1, [sp, #0x1c]
	add r1, r1, #1
	bl _s32_div_f
	ldr r0, [sp, #0xa0]
	ldrh r0, [r0, #0xc]
	sub r0, r0, r1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0xa0]
	ldrb r0, [r0, #0xe]
	str r0, [sp, #0x20]
	b _02236D4A
_02236D30:
	bl LCRandom
	ldr r1, [sp, #0x1c]
	add r1, r1, #1
	bl _s32_div_f
	ldr r0, [sp, #0xa0]
	ldrh r0, [r0, #4]
	sub r0, r0, r1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0xa0]
	ldrb r0, [r0, #6]
	str r0, [sp, #0x20]
_02236D4A:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	mov r2, #0xcd
	bl ov80_02229EF4
	mov r2, #0
	cmp r4, #0
	ble _02236D78
	ldr r1, [sp, #0x14]
	ldr r3, [sp, #0x14]
	ldrh r1, [r1, #0]
	ldrh r3, [r3, #0xc]
	add r0, sp, #0x24
_02236D64:
	ldrh r5, [r0, #0]
	cmp r5, r1
	beq _02236D78
	ldrh r5, [r0, #0xc]
	cmp r5, r3
	beq _02236D78
	add r2, r2, #1
	add r0, #0x10
	cmp r2, r4
	blt _02236D64
_02236D78:
	cmp r2, r4
	bne _02236DC2
	mov r3, #0
	cmp r7, #0
	ble _02236DA4
	ldr r2, [sp, #0x14]
	ldr r5, [sp, #0x14]
	ldrh r2, [r2, #0]
	ldrh r6, [r5, #0xc]
	ldr r0, [sp, #0]
	ldr r1, [sp, #4]
_02236D8E:
	ldrh r5, [r0, #0]
	cmp r2, r5
	beq _02236DA4
	ldrh r5, [r1, #0]
	cmp r6, r5
	beq _02236DA4
	add r3, r3, #1
	add r0, r0, #2
	add r1, r1, #2
	cmp r3, r7
	blt _02236D8E
_02236DA4:
	cmp r3, r7
	bne _02236DC2
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x10]
	strh r1, [r0, #0]
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0xa8]
	strb r1, [r0, r4]
	ldr r0, [sp, #0x14]
	add r4, r4, #1
	add r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, r0, #2
	str r0, [sp, #0x10]
_02236DC2:
	ldr r0, [sp, #8]
	cmp r4, r0
	bne _02236CFC
_02236DC8:
	mov r0, #0
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
	nop
}
// clang-format on
#endif

int ov80_02236DD4(int a0) {
    switch (a0) {
    case 0:
    case 1:
        return 3;
    case 2:
    case 3:
        return 2;
    default:
        return 0;
    }
}

int ov80_02236DF8(int a0, int a1) {
    switch (a0) {
    case 0:
    case 1:
        return 3;
    case 2:
    case 3:
        if (a1 == 0) {
            return 2;
        }
        return 4;
    default:
        return 0;
    }
}

void ov80_02236E24(int a0, int a1, u16 *a2, int a3, void *a4, void *a5, u16 a6, u16 *a7) {
    void *tablePtr;

    tablePtr = ov80_02236C78(a0, a1);
    if (a7 == NULL) {
        ov80_02236C9C(NULL, NULL, 0, 6, a2, HEAP_ID_FIELD2, tablePtr, a6, (u8 *)a4);
    } else {
        ov80_02236C9C(a7, a7, 6, 6, a2, HEAP_ID_FIELD2, tablePtr, a6, (u8 *)a4);
    }
    ov80_0222A52C((void *)a3, a2, a4, NULL, a5, 6, HEAP_ID_FIELD2, 0xcd);
}

#ifdef NONMATCHING
void ov80_02236E90(int a0, int a1, int a2, void *a3, u16 *a4, void *a5, void *a6, void *a7, int a8) {
    void *tablePtr;
    u16 arr2[12];
    u16 arr1[12];
    u8 tmpBuf[0x38];
    void *src;

    tablePtr = ov80_02236C2C(a1, a2);
    src = a3;
    if (a8 > 0) {
        int ip;
        u16 *r4;
        u16 *r5;
        ip = 0;
        r4 = arr1;
        r5 = arr2;
        do {
            void *r6;
            void *r3;
            int r2;
            r6 = src;
            r3 = tmpBuf;
            r2 = 7;
            do {
                u32 w0, w1;
                w0 = *(u32 *)r6;
                w1 = *(u32 *)((u8 *)r6 + 4);
                *(u32 *)r3 = w0;
                *(u32 *)((u8 *)r3 + 4) = w1;
                r6 = (u8 *)r6 + 8;
                r3 = (u8 *)r3 + 8;
                r2--;
            } while (r2 != 0);
            *r4 = *(u16 *)(tmpBuf + 0x30) & 0x7ff;
            *r5 = *(u16 *)(tmpBuf + 0x32);
            src = (u8 *)src + 0x38;
            r4++;
            r5++;
            ip++;
        } while (ip < a8);
    }
    ov80_02236C9C(arr1, arr2, a8, a0, a4, HEAP_ID_FIELD2, tablePtr, 0, (u8 *)a6);
    ov80_0222A52C(a5, a4, a6, NULL, a7, a0, HEAP_ID_FIELD2, 0xcd);
}
#else
// clang-format off
// NONMATCHING: MWCC register-allocation / instruction-scheduling tie; transcribed asm.
asm void ov80_02236E90(int a0, int a1, int a2, void *a3, u16 *a4, void *a5, void *a6, void *a7, int a8) {
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xa8]
	add r7, r3, #0
	str r0, [sp, #0xa8]
	add r0, r1, #0
	add r1, r2, #0
	bl ov80_02236C2C
	str r0, [sp, #0x18]
	mov r0, #0
	mov ip, r0
	ldr r0, [sp, #0xa8]
	cmp r0, #0
	ble _02236EE4
	add r4, sp, #0x34
	add r5, sp, #0x1c
_02236EB4:
	add r6, r7, #0
	add r3, sp, #0x4c
	mov r2, #7
_02236EBA:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02236EBA
	add r0, sp, #0x1c
	ldrh r0, [r0, #0x30]
	add r7, #0x38
	lsl r0, r0, #0x15
	lsr r0, r0, #0x15
	strh r0, [r4, #0]
	add r0, sp, #0x1c
	ldrh r0, [r0, #0x32]
	add r4, r4, #2
	strh r0, [r5, #0]
	mov r0, ip
	add r1, r0, #1
	ldr r0, [sp, #0xa8]
	add r5, r5, #2
	mov ip, r1
	cmp r1, r0
	blt _02236EB4
_02236EE4:
	ldr r0, [sp, #0x98]
	ldr r2, [sp, #0xa8]
	str r0, [sp, #0]
	mov r0, #0xb
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	add r1, sp, #0x1c
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0xa0]
	str r0, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r0, sp, #0x34
	bl ov80_02236C9C
	ldr r0, [sp, #0xa4]
	ldr r1, [sp, #0x98]
	str r0, [sp, #0]
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0xa0]
	str r0, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	mov r0, #0xcd
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x9c]
	mov r3, #0
	bl ov80_0222A52C
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
}
// clang-format on
#endif

#ifdef NONMATCHING
BattleSetup *ov80_02236F24(void *work, void *fieldCtx) {
    BattleSetup *setup;
    Pokemon *tmpMon;
    int sidesA;
    int sidesB;
    int i;
    void *trainerBuf;

    sidesA = ov80_02236DD4(*(u8 *)((u8 *)work + 4));
    sidesB = ov80_02236DF8(*(u8 *)((u8 *)work + 4), 0);

    HealParty(*(Party **)((u8 *)work + 0x4D4));
    HealParty(*(Party **)((u8 *)work + 0x4D8));

    {
        u32 flags;
        flags = ov80_022370F4(*(u8 *)((u8 *)work + 4));
        setup = BattleSetup_New(HEAP_ID_FIELD2, flags);
    }

    sub_02051D18(setup,
        NULL,
        *(SaveData **)((u8 *)fieldCtx + 8),
        *(u32 *)((u8 *)fieldCtx + 0x18),
        *(BagCursor **)((u8 *)fieldCtx + 0xc),
        *(void **)((u8 *)fieldCtx + 0x1c));

    *(u32 *)((u8 *)setup + (0x53 << 2)) = 0x13;
    *(u32 *)((u8 *)setup + (0x53 << 2) + 4) = 0x13;

    Party_InitWithMaxSize(*(Party **)((u8 *)setup + 4), sidesA);

    tmpMon = AllocMonZeroed(HEAP_ID_FIELD2);
    i = 0;
    if (sidesA > 0) {
        do {
            Pokemon *src;
            src = Party_GetMonByIndex(*(Party **)((u8 *)work + 0x4D4), i);
            CopyPokemonToPokemon(src, tmpMon);
            BattleSetup_AddMonToParty(setup, tmpMon, 0);
            i++;
        } while (i < sidesA);
    }
    Heap_Free(tmpMon);

    BattleSetup_SetAllySideBattlersToPlayer(setup);

    {
        u16 trainerId;
        int slot;
        slot = *(u8 *)((u8 *)work + 6);
        trainerId = *(u16 *)((u8 *)work + 0x18 + slot * 2);
        Heap_Free(ov80_02229F04(&trainerBuf, trainerId, HEAP_ID_FIELD2, 0xcc));
        ov80_0222A480(setup, &trainerBuf, sidesB, 1, HEAP_ID_FIELD2);
    }

    {
        int sB2;
        sB2 = ov80_02236DF8(*(u8 *)((u8 *)work + 4), 0);
        Party_InitWithMaxSize(*(Party **)((u8 *)setup + 8), sB2);
    }

    {
        int j;
        BattleSetup *cur;
        j = 0;
        cur = setup;
        do {
            *(int *)((u8 *)cur + 0x34) = ov80_02237264(work);
            j++;
            cur = (BattleSetup *)((u8 *)cur + 0x34);
        } while (j < 4);
    }

    tmpMon = AllocMonZeroed(HEAP_ID_FIELD2);
    i = 0;
    if (sidesB > 0) {
        do {
            Pokemon *src;
            src = Party_GetMonByIndex(*(Party **)((u8 *)work + 0x4D8), i);
            CopyPokemonToPokemon(src, tmpMon);
            BattleSetup_AddMonToParty(setup, tmpMon, 1);
            i++;
        } while (i < sidesB);
    }
    Heap_Free(tmpMon);

    if (*(u8 *)((u8 *)work + 4) == 2 || *(u8 *)((u8 *)work + 4) == 3) {
        BattleSetup_SetAllySideBattlersToPlayer(setup);
        {
            BOOL online;
            PlayerProfile *prof;
            online = sub_0203769C();
            prof = sub_02034818((u32)(1 - (int)online));
            PlayerProfile_Copy(prof, (PlayerProfile *)*(void **)((u8 *)setup + (1 << 8)));
        }
        {
            u16 trainerId2;
            int slot;
            slot = *(u8 *)((u8 *)work + 6);
            trainerId2 = *(u16 *)((u8 *)work + 0x18 + (slot + 7) * 2);
            Heap_Free(ov80_02229F04(&trainerBuf, trainerId2, HEAP_ID_FIELD2, 0xcc));
            ov80_0222A480(setup, &trainerBuf, sidesB, 3, HEAP_ID_FIELD2);
        }
        Party_InitWithMaxSize(*(Party **)((u8 *)setup + 0x10), sidesB);
        tmpMon = AllocMonZeroed(HEAP_ID_FIELD2);
        i = 0;
        if (sidesB > 0) {
            do {
                Pokemon *src;
                src = Party_GetMonByIndex(*(Party **)((u8 *)work + 0x4D8), i);
                CopyPokemonToPokemon(src, tmpMon);
                BattleSetup_AddMonToParty(setup, tmpMon, 3);
                i++;
            } while (i < sidesB);
        }
        Heap_Free(tmpMon);
    }

    return setup;
}
#else
// clang-format off
// NONMATCHING: MWCC register-allocation / instruction-scheduling tie; transcribed asm.
asm BattleSetup *ov80_02236F24(void *work, void *fieldCtx) {
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r5, r0, #0
	ldrb r0, [r5, #4]
	add r6, r1, #0
	bl ov80_02236DD4
	str r0, [sp, #0x10]
	ldrb r0, [r5, #4]
	mov r1, #0
	bl ov80_02236DF8
	str r0, [sp, #0xc]
	ldr r0, =0x000004D4
	ldr r0, [r5, r0]
	bl HealParty
	ldr r0, =0x000004D8
	ldr r0, [r5, r0]
	bl HealParty
	ldrb r0, [r5, #4]
	bl ov80_022370F4
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
	mov r1, #0x13
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x10]
	bl Party_InitWithMaxSize
	mov r0, #0xb
	bl AllocMonZeroed
	add r7, r0, #0
	ldr r0, [sp, #0x10]
	mov r6, #0
	cmp r0, #0
	ble _02236FB6
_02236F94:
	ldr r0, =0x000004D4
	add r1, r6, #0
	ldr r0, [r5, r0]
	bl Party_GetMonByIndex
	add r1, r7, #0
	bl CopyPokemonToPokemon
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #0
	bl BattleSetup_AddMonToParty
	ldr r0, [sp, #0x10]
	add r6, r6, #1
	cmp r6, r0
	blt _02236F94
_02236FB6:
	add r0, r7, #0
	bl Heap_Free
	add r0, r4, #0
	bl BattleSetup_SetAllySideBattlersToPlayer
	ldrb r1, [r5, #6]
	add r0, sp, #0x14
	mov r2, #0xb
	lsl r1, r1, #1
	add r1, r5, r1
	ldrh r1, [r1, #0x18]
	mov r3, #0xcc
	bl ov80_02229F04
	bl Heap_Free
	mov r0, #0xb
	str r0, [sp, #0]
	ldr r2, [sp, #0xc]
	add r0, r4, #0
	add r1, sp, #0x14
	mov r3, #1
	bl ov80_0222A480
	ldrb r0, [r5, #4]
	mov r1, #0
	bl ov80_02236DF8
	add r1, r0, #0
	ldr r0, [r4, #8]
	bl Party_InitWithMaxSize
	mov r7, #0
	add r6, r4, #0
_02236FFC:
	add r0, r5, #0
	bl ov80_02237264
	str r0, [r6, #0x34]
	add r7, r7, #1
	add r6, #0x34
	cmp r7, #4
	blt _02236FFC
	mov r0, #0xb
	bl AllocMonZeroed
	add r7, r0, #0
	ldr r0, [sp, #0xc]
	mov r6, #0
	cmp r0, #0
	ble _0223703E
_0223701C:
	ldr r0, =0x000004D8
	add r1, r6, #0
	ldr r0, [r5, r0]
	bl Party_GetMonByIndex
	add r1, r7, #0
	bl CopyPokemonToPokemon
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #1
	bl BattleSetup_AddMonToParty
	ldr r0, [sp, #0xc]
	add r6, r6, #1
	cmp r6, r0
	blt _0223701C
_0223703E:
	add r0, r7, #0
	bl Heap_Free
	ldrb r0, [r5, #4]
	cmp r0, #2
	beq _0223704E
	cmp r0, #3
	bne _022370E4
_0223704E:
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
	ldrb r1, [r5, #6]
	add r0, sp, #0x14
	mov r2, #0xb
	add r1, r1, #7
	lsl r1, r1, #1
	add r1, r5, r1
	ldrh r1, [r1, #0x18]
	mov r3, #0xcc
	bl ov80_02229F04
	bl Heap_Free
	mov r0, #0xb
	str r0, [sp, #0]
	ldr r2, [sp, #0xc]
	add r0, r4, #0
	add r1, sp, #0x14
	mov r3, #3
	bl ov80_0222A480
	ldrb r0, [r5, #4]
	mov r1, #0
	bl ov80_02236DF8
	add r1, r0, #0
	ldr r0, [r4, #0x10]
	bl Party_InitWithMaxSize
	mov r0, #0xb
	bl AllocMonZeroed
	add r7, r0, #0
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	ble _022370DE
	add r6, r0, #0
_022370B6:
	ldr r0, =0x000004D8
	add r1, r6, #0
	ldr r0, [r5, r0]
	bl Party_GetMonByIndex
	add r1, r7, #0
	bl CopyPokemonToPokemon
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #3
	bl BattleSetup_AddMonToParty
	ldr r0, [sp, #8]
	add r6, r6, #1
	add r1, r0, #1
	ldr r0, [sp, #0xc]
	str r1, [sp, #8]
	cmp r1, r0
	blt _022370B6
_022370DE:
	add r0, r7, #0
	bl Heap_Free
_022370E4:
	add r0, r4, #0
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
}
// clang-format on
#endif

static int ov80_022370F4(int a0) {
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

int ov80_02237120(void *work) {
    if (*(u8 *)((u8 *)work + 5) == 0) {
        return 0x32;
    }
    return 0x64;
}

void ov80_02237130(void *work) {
    int j;
    Pokemon *tmpMon;
    void *trainerBase;

    ov80_0222A52C(
        (u8 *)work + 0x280,
        (u8 *)work + 0x254,
        (u8 *)work + 0x260,
        (u8 *)work + 0x268,
        NULL,
        6,
        HEAP_ID_FIELD2,
        0xcd);

    SaveArray_Party_Init(*(Party **)((u8 *)work + 0x4D4));

    tmpMon = AllocMonZeroed(HEAP_ID_FIELD2);
    j = 0;
    trainerBase = (u8 *)work + 0x280;
    do {
        ov80_0222A140(trainerBase, tmpMon, ov80_02237120(work));
        ov80_0222A3BC(*(void **)((u8 *)work + 0x4F8), *(void **)((u8 *)work + 0x4D4), tmpMon);
        j++;
        trainerBase = (u8 *)trainerBase + 0x38;
    } while (j < 6);

    Heap_Free(tmpMon);
}

#ifdef NONMATCHING
void ov80_022371B0(void *work) {
    int count;
    int i;
    Pokemon *tmpMon;
    u8 localBuf[0x70];
    void *trainerBase;
    void *r4;

    count = Party_GetCount(*(Party **)((u8 *)work + 0x4D4));
    while (count > 2) {
        Party_RemoveMon(*(Party **)((u8 *)work + 0x4D4), count - 1);
        count--;
    }

    ov80_0222A52C(
        localBuf,
        (u8 *)work + 0x584,
        (u8 *)work + 0x590,
        (u8 *)work + 0x598,
        NULL,
        2,
        HEAP_ID_FIELD2,
        0xcd);

    tmpMon = AllocMonZeroed(HEAP_ID_FIELD2);
    i = 0;
    trainerBase = localBuf;
    r4 = work;
    do {
        ov80_0222A140(trainerBase, tmpMon, ov80_02237120(work));
        ov80_0222A3BC(*(void **)((u8 *)work + 0x4F8), *(void **)((u8 *)work + 0x4D4), tmpMon);
        {
            u16 val;
            val = *(u16 *)((u8 *)r4 + 0x584);
            *(u16 *)((u8 *)r4 + 0x4EC) = val;
        }
        trainerBase = (u8 *)trainerBase + 0x38;
        i++;
        r4 = (u8 *)r4 + 2;
    } while (i < 2);

    Heap_Free(tmpMon);
}
#else
// clang-format off
// NONMATCHING: MWCC register-allocation / instruction-scheduling tie; transcribed asm.
asm void ov80_022371B0(void *work) {
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	add r5, r0, #0
	ldr r0, =0x000004D4
	ldr r0, [r5, r0]
	bl Party_GetCount
	add r4, r0, #0
	cmp r4, #2
	ble _022371D4
	ldr r6, =0x000004D4
_022371C6:
	ldr r0, [r5, r6]
	sub r1, r4, #1
	bl Party_RemoveMon
	sub r4, r4, #1
	cmp r4, #2
	bgt _022371C6
_022371D4:
	ldr r3, =0x00000584
	mov r0, #0
	str r0, [sp, #0]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0xb
	add r2, r3, #0
	str r0, [sp, #8]
	mov r0, #0xcd
	add r1, r5, r3
	add r2, #0xc
	add r3, #0x14
	str r0, [sp, #0xc]
	add r0, sp, #0x14
	add r2, r5, r2
	add r3, r5, r3
	bl ov80_0222A52C
	mov r0, #0xb
	bl AllocMonZeroed
	add r7, r0, #0
	mov r0, #0
	str r0, [sp, #0x10]
	add r6, sp, #0x14
	add r4, r5, #0
_02237208:
	add r0, r5, #0
	bl ov80_02237120
	add r2, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl ov80_0222A140
	ldr r0, =0x000004F8
	ldr r1, =0x000004D4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r7, #0
	bl ov80_0222A3BC
	ldr r0, =0x00000584
	add r6, #0x38
	ldrh r1, [r4, r0]
	sub r0, #0x98
	strh r1, [r4, r0]
	ldr r0, [sp, #0x10]
	add r4, r4, #2
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #2
	blt _02237208
	add r0, r7, #0
	bl Heap_Free
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
	nop
}
// clang-format on
#endif

int ov80_02237254(int a0) {
    switch (a0) {
    case 2:
    case 3:
        return 1;
    }
    return 0;
}

#ifdef NONMATCHING
static int ov80_02237264(void *work) {
    int r1;
    int val;

    if (*(u8 *)((u8 *)work + 4) == 0) {
        int slot;
        u16 trainerId;
        u16 check;
        slot = *(u8 *)((u8 *)work + 6);
        trainerId = *(u16 *)((u8 *)work + 0x18 + slot * 2);
        check = (u16)(trainerId + 0xFECB);
        if (check <= 1) {
            return 7;
        }
    }

    val = ov80_022372B4(work) + 1;
    r1 = 7;
    switch (val) {
    case 0:
        break;
    case 1:
    case 2:
        r1 = 0;
        break;
    case 3:
    case 4:
        r1 = 1;
        break;
    }
    return r1;
}
#else
// clang-format off
// NONMATCHING: MWCC value/result register swap in the switch; transcribed asm (jump table as lsl).
static asm int ov80_02237264(void *work) {
	push {r3, lr}
	ldrb r1, [r0, #4]
	cmp r1, #0
	bne _02237284
	ldrb r1, [r0, #6]
	lsl r1, r1, #1
	add r1, r0, r1
	ldrh r2, [r1, #0x18]
	ldr r1, =0x0000FECB
	add r1, r2, r1
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	cmp r1, #1
	bhi _02237284
	mov r0, #7
	pop {r3, pc}
_02237284:
	bl ov80_022372B4
	add r0, r0, #1
	mov r1, #7
	cmp r0, #4
	bhi _022372AC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223729C:
	lsl r6, r1, #0  // .short _022372AC - _0223729C - 2 ; case 0
	lsl r0, r1, #0  // .short _022372A6 - _0223729C - 2 ; case 1
	lsl r0, r1, #0  // .short _022372A6 - _0223729C - 2 ; case 2
	lsl r4, r1, #0  // .short _022372AA - _0223729C - 2 ; case 3
	lsl r4, r1, #0  // .short _022372AA - _0223729C - 2 ; case 4
_022372A6:
	mov r1, #0
	b _022372AC
_022372AA:
	mov r1, #1
_022372AC:
	add r0, r1, #0
	pop {r3, pc}
}
// clang-format on
#endif

int ov80_022372B4(void *work) {
    u16 r4;
    int r0;

    r4 = *(u16 *)((u8 *)work + 0xe);
    r0 = ov80_02237254(*(u8 *)((u8 *)work + 4));
    if (r0 == 1) {
        u16 val;
        val = *(u16 *)((u8 *)work + 0x57E);
        if (val > *(u16 *)((u8 *)work + 0xe)) {
            r4 = val;
        }
    }
    return r4;
}
