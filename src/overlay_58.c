#include "overlay_58.h"

#include <nitro/mi/memory.h>

#include "global.h"

#include "constants/heap.h"

#include "bag.h"
#include "gf_gfx_planes.h"
#include "heap.h"
#include "mail.h"
#include "party.h"
#include "party_menu.h"
#include "player_data.h"
#include "pokemon_mood.h"
#include "system.h"
#include "unk_0200FA24.h"

FS_EXTERN_OVERLAY(OVY_59);

extern int ov59_02237D40(OverlayManager *man, int *state);
extern int ov59_02237DA8(OverlayManager *man, int *state);
extern int ov59_02237E68(OverlayManager *man, int *state);
extern int ov59_0223A8E0(OverlayManager *man, int *state);
extern int ov59_0223A948(OverlayManager *man, int *state);
extern int ov59_0223A9B8(OverlayManager *man, int *state);
extern void sub_02031DA0(void *a0, void *a1);
void _ffltu(void);
void _fmul(void);
void _ffixu(void);
void _fsub(void);
void _s32_div_f(void);

typedef struct ApricornBoxWork {
    enum HeapID heapId;    // 0x00
    ApricornBoxArgs *args; // 0x04
    OverlayManager *child; // 0x08
    u8 fillerC[0x4];       // 0x0c
    void *partyMenuArgs;   // 0x10
    int unk14;             // 0x14
    u8 unk18;              // 0x18
    u8 unk19;              // 0x19
    u8 filler1A[0x2];      // 0x1a
    u8 unk1c;              // 0x1c
    u8 filler1D[0x3];      // 0x1d
} ApricornBoxWork;         // 0x20

static BOOL ov58_022378C0(OverlayManager **pChild);
void ov58_022379C0(void *a0, Party *party, int slot);
static void ov58_02237B40(ApricornBoxWork *work);
static void ov58_02237B94(ApricornBoxWork *work);
static int ov58_02237B98(ApricornBoxWork *work);
static int ov58_02237BB0(ApricornBoxWork *work);
static int ov58_02237BD4(ApricornBoxWork *work);
static int ov58_02237C4C(ApricornBoxWork *work);
static int ov58_02237C88(ApricornBoxWork *work);
static int ov58_02237CA0(ApricornBoxWork *work);
static void ov58_02237CCC(void);

static const OverlayManagerTemplate _02237D1C = {
    ov59_02237D40,
    ov59_02237DA8,
    ov59_02237E68,
    FS_OVERLAY_ID(OVY_59),
};

static const OverlayManagerTemplate ov58_02237D2C = {
    ov59_0223A8E0,
    ov59_0223A948,
    ov59_0223A9B8,
    FS_OVERLAY_ID(OVY_59),
};

static BOOL ov58_022378C0(OverlayManager **pChild) {
    if (*pChild != NULL && OverlayManager_Run(*pChild)) {
        OverlayManager_Delete(*pChild);
        *pChild = NULL;
        return TRUE;
    }
    return FALSE;
}

BOOL ApricornBox_Init(OverlayManager *man, int *state) {
    ApricornBoxWork *work;
    ov58_02237CCC();
    Heap_Create(HEAP_ID_3, HEAP_ID_133, 0x2000);
    work = OverlayManager_CreateAndGetData(man, sizeof(ApricornBoxWork), HEAP_ID_133);
    MI_CpuFill8(work, 0, sizeof(ApricornBoxWork));
    work->heapId = HEAP_ID_133;
    work->args = OverlayManager_GetArgs(man);
    ov58_02237B40(work);
    return TRUE;
}

BOOL ApricornBox_Main(OverlayManager *man, int *state) {
    ApricornBoxWork *work = OverlayManager_GetData(man);
    switch (*state) {
    case 0:
        if (work->args->unk0 == 3) {
            *state = 3;
        } else {
            *state = 1;
        }
        break;
    case 1:
        *state = ov58_02237B98(work);
        break;
    case 2:
        *state = ov58_02237BB0(work);
        break;
    case 3:
        *state = ov58_02237BD4(work);
        break;
    case 4:
        *state = ov58_02237C4C(work);
        break;
    case 5:
        *state = ov58_02237C88(work);
        break;
    case 6:
        *state = ov58_02237CA0(work);
        break;
    case 7:
        return TRUE;
    }
    return FALSE;
}

BOOL ApricornBox_Exit(OverlayManager *man, int *state) {
    ApricornBoxWork *work = OverlayManager_GetData(man);
    ov58_02237CCC();
    ov58_02237B94(work);
    OverlayManager_FreeData(man);
    Heap_Destroy(HEAP_ID_133);
    return TRUE;
}

#ifdef NONMATCHING
void ov58_022379C0(void *a0, Party *party, int slot) {
    u8 newMods[5];
    PartyExtraSub curMods;
    u8 sortedApri[14];
    u32 v8;
    u8 idx0, idx1;
    u8 count = ((u8 *)a0)[2];
    int i;
    u8 delta;

    MI_CpuFill8(newMods, 0, 5);
    sub_02031DA0(a0, sortedApri);

    idx0 = (*(u16 *)&sortedApri[0] & 0xf) < 5 ? (*(u16 *)&sortedApri[0] & 0xf) : sortedApri[6];
    idx1 = (*(u16 *)&sortedApri[2] & 0xf) < 5 ? (*(u16 *)&sortedApri[2] & 0xf) : sortedApri[7];

    Party_GetMonAprijuiceModifiers(party, &curMods, slot);

    v8 = (*(u16 *)&sortedApri[0] << 16) >> 24;
    newMods[idx0] = (u8)((u32)((float)v8 * 1.5f));
    if (v8 != 0) {
        newMods[idx0] = (s8)newMods[idx0] + 0xa;
    }

    idx1 = (*(u16 *)&sortedApri[2] << 16) >> 24;
    newMods[idx1] = (u8)((u32)((float)idx1 * 1.5f));
    {
        u8 combined = (u8)(v8 + idx1);
        if (count == 0xff) {
            delta = (u8)((u32)((float)combined * 0.1f));
        } else if (count >= 0xc8) {
            delta = (u8)((u32)((float)combined * 0.2f));
        } else {
            delta = (u8)((u32)((float)combined * ((float)(u8)(count / 25) * 0.1f - 1.0f)));
        }
    }
    newMods[sortedApri[10]] = (s8)newMods[sortedApri[10]] - delta;
    for (i = 0; i < 5; i++) {
        s8 v = (s8)newMods[i];
        if (v < -127) {
            v = -127;
        } else if (v > 127) {
            v = 127;
        }
        ((u8 *)&curMods)[i] = v;
    }
    Party_SetMonAprijuiceModifiers(party, &curMods, slot);
    ApplyMonMoodModifier(Party_GetMonByIndex(party, slot), 7);
}
#else
// clang-format off
// NONMATCHING: soft-float aprijuice modifier computation. The exact float
// rounding/scheduling and the overlapping stack buffers (curMods at sp+0xc,
// newMods at sp+0x11, sortedApri at sp+0x16 all reached via a common sp+0xc
// base) are not reliably reproducible from C.
asm void ov58_022379C0(void *a0, Party *party, int slot) {
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r0, #0
	add r0, sp, #0x10
	str r1, [sp]
	str r2, [sp, #4]
	add r0, #1
	mov r1, #0
	mov r2, #5
	bl MI_CpuFill8
	add r1, sp, #0x14
	add r0, r4, #0
	add r1, #2
	bl sub_02031DA0
	add r0, sp, #0xc
	ldrh r1, [r0, #0xa]
	ldrb r4, [r4, #2]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	cmp r1, #5
	blo _022379F2
	ldrb r5, [r0, #0x10]
	b _022379F6
_022379F2:
	lsl r0, r1, #0x18
	lsr r5, r0, #0x18
_022379F6:
	add r0, sp, #0xc
	ldrh r1, [r0, #0xc]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	cmp r1, #5
	blo _02237A06
	ldrb r7, [r0, #0x11]
	b _02237A0A
_02237A06:
	lsl r0, r1, #0x18
	lsr r7, r0, #0x18
_02237A0A:
	ldr r0, [sp]
	ldr r2, [sp, #4]
	add r1, sp, #0xc
	bl Party_GetMonAprijuiceModifiers
	add r0, sp, #0xc
	ldrh r0, [r0, #0xa]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	add r0, sp, #0x10
	add r0, #1
	add r6, r0, r5
	ldr r0, [sp, #8]
	bl _ffltu
	add r1, r0, #0
	mov r0, #0xff
	lsl r0, r0, #0x16
	bl _fmul
	bl _ffixu
	add r1, sp, #0x10
	add r1, #1
	strb r0, [r1, r5]
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _02237A4C
	mov r0, #0
	ldrsb r0, [r6, r0]
	add r0, #0xa
	strb r0, [r6]
_02237A4C:
	add r0, sp, #0xc
	ldrh r0, [r0, #0xc]
	lsl r0, r0, #0x10
	lsr r5, r0, #0x18
	add r0, r5, #0
	bl _ffltu
	add r1, r0, #0
	mov r0, #0xff
	lsl r0, r0, #0x16
	bl _fmul
	bl _ffixu
	add r1, sp, #0x10
	add r1, #1
	strb r0, [r1, r7]
	ldr r0, [sp, #8]
	add r0, r0, r5
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r4, #0xff
	bne _02237A90
	bl _ffltu
	add r1, r0, #0
	ldr r0, =0x3DCCCCCD
	bl _fmul
	bl _ffixu
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	b _02237AE2
_02237A90:
	cmp r4, #0xc8
	blo _02237AAA
	bl _ffltu
	add r1, r0, #0
	ldr r0, =0x3E4CCCCD
	bl _fmul
	bl _ffixu
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	b _02237AE2
_02237AAA:
	bl _ffltu
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0x19
	bl _s32_div_f
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl _ffltu
	add r1, r0, #0
	ldr r0, =0x3DCCCCCD
	bl _fmul
	add r1, r0, #0
	mov r0, #0xfe
	lsl r0, r0, #0x16
	bl _fsub
	add r1, r0, #0
	add r0, r5, #0
	bl _fmul
	bl _ffixu
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
_02237AE2:
	add r0, sp, #0xc
	ldrb r1, [r0, #0x14]
	add r5, sp, #0x10
	add r5, #1
	ldrsb r0, [r5, r1]
	mov r7, #0x7f
	mov r3, #0
	sub r0, r0, r2
	strb r0, [r5, r1]
	add r2, r7, #0
	add r1, r7, #0
	add r6, sp, #0xc
	sub r2, #0xfe
	add r0, r3, #0
	sub r1, #0xfe
_02237B00:
	ldrsb r4, [r5, r0]
	cmp r4, r1
	bge _02237B0A
	add r4, r2, #0
	b _02237B10
_02237B0A:
	cmp r4, #0x7f
	ble _02237B10
	add r4, r7, #0
_02237B10:
	add r3, r3, #1
	strb r4, [r6]
	add r5, r5, #1
	add r6, r6, #1
	cmp r3, #5
	blt _02237B00
	ldr r0, [sp]
	ldr r2, [sp, #4]
	add r1, sp, #0xc
	bl Party_SetMonAprijuiceModifiers
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl Party_GetMonByIndex
	mov r1, #7
	bl ApplyMonMoodModifier
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
}
// clang-format on
#endif

static void ov58_02237B40(ApricornBoxWork *work) {
    if (work->args->unk8 != NULL) {
        *work->args->unk8 = 0;
    }
    switch (work->args->unk0) {
    case 0:
        work->unk18 = 0;
        break;
    case 1:
        work->unk18 = 1;
        break;
    case 2:
        work->unk18 = 2;
        break;
    case 3:
        work->unk19 = 1;
        work->unk18 = 0;
        work->unk14 = work->args->unkC;
        return;
    }
    work->unk19 = 0;
    work->unk14 = 8;
}

static void ov58_02237B94(ApricornBoxWork *work) {
}

static int ov58_02237B98(ApricornBoxWork *work) {
    work->child = OverlayManager_New(&_02237D1C, work, work->heapId);
    return 2;
}

static int ov58_02237BB0(ApricornBoxWork *work) {
    if (!ov58_022378C0(&work->child)) {
        return 2;
    }
    if (work->unk18 == 3) {
        work->unk1c = 0;
        return 3;
    }
    return 7;
}

static int ov58_02237BD4(ApricornBoxWork *work) {
    PartyMenuArgs *args = Heap_Alloc(work->heapId, sizeof(PartyMenuArgs));
    MI_CpuFill8(args, 0, sizeof(PartyMenuArgs));
    args->party = SaveArray_Party_Get(work->args->saveData);
    args->bag = Save_Bag_Get(work->args->saveData);
    args->unk_25 = 0;
    args->context = 0x14;
    args->options = Save_PlayerData_GetOptionsAddr(work->args->saveData);
    args->mailbox = Save_Mailbox_Get(work->args->saveData);
    args->fieldSystem = NULL;
    args->menuInputStatePtr = work->args->menuInputStatePtr;
    args->partySlot = work->unk1c;
    work->child = OverlayManager_New(&gOverlayTemplate_PartyMenu, args, work->heapId);
    work->partyMenuArgs = args;
    return 4;
}

static int ov58_02237C4C(ApricornBoxWork *work) {
    u8 slot;
    if (!ov58_022378C0(&work->child)) {
        return 4;
    }
    slot = ((PartyMenuArgs *)work->partyMenuArgs)->partySlot;
    work->unk1c = slot;
    Heap_Free(work->partyMenuArgs);
    work->partyMenuArgs = NULL;
    if (slot == 7) {
        if (work->args->unk0 == 3) {
            return 7;
        }
        return 1;
    }
    return 5;
}

static int ov58_02237C88(ApricornBoxWork *work) {
    work->child = OverlayManager_New(&ov58_02237D2C, work, work->heapId);
    return 6;
}

static int ov58_02237CA0(ApricornBoxWork *work) {
    if (!ov58_022378C0(&work->child)) {
        return 6;
    }
    if (work->unk18 == 3) {
        return 3;
    }
    if (work->args->unk0 == 3) {
        return 7;
    }
    return 1;
}

static void ov58_02237CCC(void) {
    Main_SetVBlankIntrCB(NULL, NULL);
    HBlankInterruptDisable();
    GfGfx_DisableEngineAPlanes();
    GfGfx_DisableEngineBPlanes();
    *(u32 *)0x04000000 &= 0xFFFFE0FF;
    *(u32 *)0x04001000 &= 0xFFFFE0FF;
    sub_0200FBF4(0, 0);
    sub_0200FBF4(1, 0);
    sub_0200FBDC(0);
    sub_0200FBDC(1);
}
