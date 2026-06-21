#include "frontier/overlay_80_02235900.h"

#include <nitro/mi/memory.h>

#include "global.h"

#include "frontier/frontier.h"
#include "frontier/frontier_script_context.h"
#include "frontier/frontier_system.h"
#include "frontier/overlay_80_0222BDF4.h"

#include "heap.h"
#include "party.h"
#include "party_menu.h"
#include "scrcmd_20.h"
#include "unk_0202D230.h"
#include "unk_02030A98.h"
#include "unk_02035900.h"
#include "unk_0204A3F4.h"
#include "unk_0205BFF0.h"
#include "unk_02096910.h"
#include "use_item_on_mon.h"

extern u32 ov80_02235FC8(SaveData *saveData);
extern void ov80_02235FEC(void *a0);
extern BOOL ov80_02235FF8(void *parent, int sel, int a, int b);
extern void ov80_02236040(void *a0, void *parent, u32 sel);
extern int ov80_022385D8(int index);
extern int ov80_02238610(int index);
extern void ov80_0222A840(SaveData *saveData);
extern int sub_02037B5C(int a0);
extern int sub_02096998(void *data);
extern u32 sub_0205C268(u32 param0);

static BOOL ov80_02235990(FrontierScriptContext *ctx);
static BOOL ov80_022359D4(FrontierScriptContext *ctx);
static BOOL ov80_02235F90(FrontierScriptContext *ctx);

typedef struct {
    u32 words[45];
} FrtCmd179SaveCopy; // 0xb4

BOOL FrtCmd_170(FrontierScriptContext *ctx) {
    Frontier_SetData(ctx->frontierSystem->unk0, ov80_02235FC8(Frontier_GetLaunchArgs(ctx->frontierSystem->unk0)->saveData));
    return FALSE;
}

BOOL FrtCmd_171(FrontierScriptContext *ctx) {
    ov80_02235FEC(Frontier_GetData(ctx->frontierSystem->unk0));
    return FALSE;
}

BOOL FrtCmd_172(FrontierScriptContext *ctx) {
    u32 a = FrontierScript_ReadVar(ctx);
    u32 b = FrontierScript_ReadVar(ctx);
    u32 c = FrontierScript_ReadVar(ctx);
    u16 *out = FrontierScript_ReadVarPtr(ctx);
    *out = ov80_02235FF8(Frontier_GetData(ctx->frontierSystem->unk0), a, b, c);
    return TRUE;
}

BOOL FrtCmd_173(FrontierScriptContext *ctx) {
    ctx->data[0] = FrontierScriptContext_ReadHalfWord(ctx);
    FrontierScriptContext_Pause(ctx, ov80_02235990);
    return TRUE;
}

static BOOL ov80_02235990(FrontierScriptContext *ctx) {
    u8 *data = Frontier_GetData(ctx->frontierSystem->unk0);
    if (data[0x6f] >= 2) {
        data[0x6f] = 0;
        return TRUE;
    }
    return FALSE;
}

BOOL FrtCmd_202(FrontierScriptContext *ctx) {
    ctx->data[0] = FrontierScriptContext_ReadHalfWord(ctx);
    FrontierScriptContext_Pause(ctx, ov80_022359D4);
    return TRUE;
}

static BOOL ov80_022359D4(FrontierScriptContext *ctx) {
    u8 *data = Frontier_GetData(ctx->frontierSystem->unk0);
    if (data[0x6f] >= 2) {
        data[0x6f] = 0;
        return TRUE;
    }
    if (sub_02037B5C(1 ^ sub_0203769C()) == 0xaf) {
        *((u8 *)ctx->frontierSystem + 0x39) = 1;
        return TRUE;
    }
    return FALSE;
}

BOOL FrtCmd_174(FrontierScriptContext *ctx) {
    u32 a = FrontierScript_ReadVar(ctx);
    u16 *out = FrontierScript_ReadVarPtr(ctx);
    u8 *data = Frontier_GetData(ctx->frontierSystem->unk0);
    if (a == data[0x6e]) {
        *out = 1;
    } else {
        *out = 0;
    }
    return FALSE;
}

BOOL FrtCmd_175(FrontierScriptContext *ctx) {
    u32 a = FrontierScript_ReadVar(ctx);
    u32 b = FrontierScript_ReadVar(ctx);
    u16 *out = FrontierScript_ReadVarPtr(ctx);
    u8 *data = Frontier_GetData(ctx->frontierSystem->unk0);
    *(void **)(data + 0x98) = Frontier_GetLaunchArgs(ctx->frontierSystem->unk0)->fieldSystem;
    *(u16 **)(data + 0xb0) = out;
    ov80_02236040(ctx->frontierSystem->unk0, data, b);
    return TRUE;
}

BOOL FrtCmd_176(FrontierScriptContext *ctx) {
    u16 *out1 = FrontierScript_ReadVarPtr(ctx);
    u16 *out2 = FrontierScript_ReadVarPtr(ctx);
    u8 *data = Frontier_GetData(ctx->frontierSystem->unk0);
    PartyMenuArgs *pma = *(PartyMenuArgs **)(data + 0xa8);
    if (pma->partySlot == 7) {
        int i;
        *out1 = 0xff;
        for (i = 0; i < 2; i++) {
            data[0xa1 + i] = 0;
        }
    } else if (pma->partySlot == 6) {
        *out1 = pma->selectedOrder[0];
        *out1 = *out1 - 1;
        *out2 = (*(PartyMenuArgs **)(data + 0xa8))->selectedOrder[1];
        if (*out2 != 0) {
            *out2 = *out2 - 1;
        }
    }
    Heap_Free(*(void **)(data + 0xa8));
    *(void **)(data + 0xa8) = NULL;
    return FALSE;
}

BOOL FrtCmd_177(FrontierScriptContext *ctx) {
    u16 *out = FrontierScript_ReadVarPtr(ctx);
    u8 *data = Frontier_GetData(ctx->frontierSystem->unk0);
    *out = data[0x59];
    return FALSE;
}

BOOL FrtCmd_178(FrontierScriptContext *ctx) {
    u8 sel = *ctx->scriptPtr++;
    u8 arg = *ctx->scriptPtr++;
    ctx->scriptPtr++;
    u16 *out = FrontierScript_ReadVarPtr(ctx);
    u8 *data = Frontier_GetData(ctx->frontierSystem->unk0);
    FrontierLaunchArgs *launchArgs = Frontier_GetLaunchArgs(ctx->frontierSystem->unk0);
    switch (sel) {
    case 0:
        sub_02096910(data);
        break;
    case 1:
        *out = *(u16 *)(data + 0x86);
        break;
    case 2:
        if (arg == 1) {
            *out = 0;
            if (*(u16 *)(data + 0x76) == *(u16 *)(data + 0x86) || *(u16 *)(data + 0x76) == *(u16 *)(data + 0x88)) {
                *out = *out + 1;
            }
            if (*(u16 *)(data + 0x78) == *(u16 *)(data + 0x86) || *(u16 *)(data + 0x78) == *(u16 *)(data + 0x88)) {
                *out = *out + 2;
            }
        } else if (arg == 5) {
            if (*(u16 *)(data + 0x76) == *(u16 *)(data + 0x86)) {
                *out = 0;
            } else {
                *out = 1;
            }
        } else if (arg == 4 || arg == 6) {
            *out = 0;
            if (*(u16 *)(data + 0x76) == *(u16 *)(data + 0x86) || *(u16 *)(data + 0x76) == *(u16 *)(data + 0x88)) {
                *out = *out + 1;
            }
            if (*(u16 *)(data + 0x78) == *(u16 *)(data + 0x86) || *(u16 *)(data + 0x78) == *(u16 *)(data + 0x88)) {
                *out = *out + 2;
            }
        }
        break;
    case 3:
        *out = FrontierSave_GetStat(Save_Frontier_GetStatic(launchArgs->saveData), 0x6a, sub_0205C268(0x6a));
        break;
    case 4: {
        FrontierSave *fs = Save_Frontier_GetStatic(launchArgs->saveData);
        int stat = sub_0205C11C(3);
        *out = FrontierSave_GetStat(fs, stat, sub_0205C268(sub_0205C11C(3)));
        break;
    }
    case 5:
        *out = *(u16 *)(data + arg * 2 + 0x76);
        break;
    case 6:
        sub_0204F878(launchArgs->saveData, sub_02030C5C(launchArgs->saveData), 3);
        break;
    case 7:
        data[0xa0] = arg;
        break;
    case 8:
        *out = *(u16 *)(data + 0x74);
        break;
    case 9:
        *out = data[0xa0];
        break;
    case 10:
        *out = data[0x71];
        break;
    case 11: {
        int idx;
        u16 stat;
        *out = 1;
        idx = ov80_022385D8(data[0xa0]);
        stat = FrontierSave_GetStat(Save_Frontier_GetStatic(*(SaveData **)data), idx, sub_0205C268(idx));
        if (stat != *(u16 *)(data + 0x72)) {
            sub_02031108(Save_Frontier_GetStatic(*(SaveData **)data), idx, sub_0205C268(idx), 0);
            idx = ov80_02238610(data[0xa0]);
            sub_02031108(Save_Frontier_GetStatic(*(SaveData **)data), idx, sub_0205C268(idx), 0);
            *out = 0;
        }
        break;
    }
    case 12: {
        int idx = ov80_02238610(data[0xa0]);
        *out = FrontierSave_GetStat(Save_Frontier_GetStatic(*(SaveData **)data), idx, sub_0205C268(idx));
        if (*out == 0) {
            idx = ov80_022385D8(data[0xa0]);
            sub_02031108(Save_Frontier_GetStatic(*(SaveData **)data), idx, sub_0205C268(idx), 0);
            if (data[0xa0] == 1) {
                sub_0202D57C(Save_FrontierData_Get(*(SaveData **)data), 6, 2);
            }
            if (data[0xa0] == 4) {
                sub_02031108(Save_Frontier_GetStatic(*(SaveData **)data), 0x88, sub_0205C268(0x88), 0);
                sub_02031108(Save_Frontier_GetStatic(*(SaveData **)data), 0x89, sub_0205C268(0x89), 0);
            }
            if (data[0xa0] == 2) {
                sub_02031108(Save_Frontier_GetStatic(*(SaveData **)data), sub_0205C048(0, 3), sub_0205C268(sub_0205C048(0, 3)), 0);
            }
            if (data[0xa0] == 3) {
                sub_02031108(Save_Frontier_GetStatic(*(SaveData **)data), sub_0205C048(1, 3), sub_0205C268(sub_0205C048(1, 3)), 0);
            }
        } else {
            sub_02031108(Save_Frontier_GetStatic(*(SaveData **)data), idx, sub_0205C268(idx), 0);
        }
        break;
    }
    case 13: {
        int i;
        for (i = 0; i < 2; i++) {
            data[0xa1 + i] = 0;
        }
        data[0x9f] = 0;
        break;
    }
    }
    return FALSE;
}

#ifdef NONMATCHING
BOOL FrtCmd_179(FrontierScriptContext *ctx) {
    FrtCmd179SaveCopy old;
    FrontierLaunchArgs *launchArgs = Frontier_GetLaunchArgs(ctx->frontierSystem->unk0);
    void *data = Frontier_GetData(ctx->frontierSystem->unk0);
    FrontierFieldSystem *ffs;
    int i;
    old = *(FrtCmd179SaveCopy *)data;
    ov80_02235FEC(data);
    ffs = FrontierFieldSystem_New(launchArgs->saveData, 0, 6);
    Frontier_SetData(ctx->frontierSystem->unk0, (u32)ffs);
    if (ffs->towerMode == 6) {
        ov80_0222A840(launchArgs->saveData);
    }
    for (i = 0; i < ffs->numMons; i++) {
        ffs->partyMonIndexes[i] = ((u8 *)&old)[0x6a + i];
        ffs->partyMonSpecies[i] = *(u16 *)((u8 *)&old + 0x76 + i * 2);
        ffs->partyMonItems[i] = *(u16 *)((u8 *)&old + 0x7e + i * 2);
    }
    ffs->linkAllyMonSpecies[0] = *(u16 *)((u8 *)&old + 0x86);
    ffs->linkAllyMonSpecies[1] = *(u16 *)((u8 *)&old + 0x88);
    ffs->linkAllyGender = ((u8 *)&old)[0x58];
    ffs->multiBattleAllyID = ((u8 *)&old)[0x58] + 5;
    if (sub_0203769C() == 0) {
        FrontierFieldSystem_SetRandomFrontierTrainers(ffs, launchArgs->saveData);
    }
    HealParty(SaveArray_Party_Get(launchArgs->saveData));
    sub_02096910(ffs);
    ffs->unk8D4 = 0;
    return FALSE;
}
#else
// clang-format off
// NONMATCHING: logic-correct C above. MWCC allocates ctx to r6 (retail uses r5),
// which spills launchArgs to the stack (extra push {r3} + 0x4 larger frame). A
// register-allocation tie-break that isn't source-controllable here.
asm BOOL FrtCmd_179(FrontierScriptContext *ctx) {
	push {r4, r5, r6, r7, lr}
	sub sp, #0xb4
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl Frontier_GetLaunchArgs
	add r7, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl Frontier_GetData
	add r6, r0, #0
	add r4, r6, #0
	add r3, sp, #0
	mov r2, #0x16
_02235EA4:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02235EA4
	ldr r0, [r4, #0]
	str r0, [r3, #0]
	add r0, r6, #0
	bl ov80_02235FEC
	ldr r0, [r7, #8]
	mov r1, #0
	mov r2, #6
	bl FrontierFieldSystem_New
	add r4, r0, #0
	ldr r0, [r5, #0]
	add r1, r4, #0
	ldr r0, [r0, #0]
	bl Frontier_SetData
	ldrb r0, [r4, #0xf]
	cmp r0, #6
	bne _02235ED8
	ldr r0, [r7, #8]
	bl ov80_0222A840
_02235ED8:
	ldrb r0, [r4, #0xe]
	mov r2, #0
	cmp r0, #0
	ble _02235F10
	add r3, sp, #0
	add r5, r3, #0
	add r6, r4, #0
_02235EE6:
	add r0, r3, #0
	add r0, #0x6a
	ldrb r1, [r0, #0]
	add r0, r4, r2
	add r0, #0x2a
	strb r1, [r0, #0]
	add r0, r5, #0
	add r0, #0x76
	ldrh r0, [r0, #0]
	add r2, r2, #1
	add r3, r3, #1
	strh r0, [r6, #0x2e]
	add r0, r5, #0
	add r0, #0x7e
	ldrh r0, [r0, #0]
	add r5, r5, #2
	strh r0, [r6, #0x36]
	ldrb r0, [r4, #0xe]
	add r6, r6, #2
	cmp r2, r0
	blt _02235EE6
_02235F10:
	add r0, sp, #0x80
	ldrh r1, [r0, #6]
	strh r1, [r4, #0x16]
	ldrh r0, [r0, #8]
	mov r1, #0xe0
	strh r0, [r4, #0x18]
	add r0, sp, #0x40
	ldrb r2, [r0, #0x18]
	strb r2, [r4, #0x12]
	ldrb r0, [r4, #0x10]
	bic r0, r1
	add r1, r2, #5
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x18
	orr r0, r1
	strb r0, [r4, #0x10]
	bl sub_0203769C
	cmp r0, #0
	bne _02235F44
	ldr r1, [r7, #8]
	add r0, r4, #0
	bl FrontierFieldSystem_SetRandomFrontierTrainers
_02235F44:
	ldr r0, [r7, #8]
	bl SaveArray_Party_Get
	bl HealParty
	add r0, r4, #0
	bl sub_02096910
	ldr r1, =0x000008D4
	mov r0, #0
	strb r0, [r4, r1]
	add sp, #0xb4
	pop {r4, r5, r6, r7, pc}
}
// clang-format on
#endif

BOOL FrtCmd_180(FrontierScriptContext *ctx) {
    u16 *out = FrontierScript_ReadVarPtr(ctx);
    *out = sub_02096998(Frontier_GetData(ctx->frontierSystem->unk0));
    return TRUE;
}

BOOL FrtCmd_181(FrontierScriptContext *ctx) {
    FrontierScriptContext_Pause(ctx, ov80_02235F90);
    return TRUE;
}

static BOOL ov80_02235F90(FrontierScriptContext *ctx) {
    u8 *data = Frontier_GetData(ctx->frontierSystem->unk0);
    if (data[0x8d4] < 2) {
        return FALSE;
    }
    data[0x8d4] = 0;
    return TRUE;
}

BOOL FrtCmd_182(FrontierScriptContext *ctx) {
    FrontierFieldSystem_Free(Frontier_GetData(ctx->frontierSystem->unk0));
    return FALSE;
}
