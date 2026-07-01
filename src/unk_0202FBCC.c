#include "unk_0202FBCC.h"

#include <nitro/mi/memory.h>

#include "global.h"

#include "assert.h"
#include "error_handling.h"
#include "heap.h"
#include "link_ruleset_data.h"
#include "math_util.h"
#include "options.h"
#include "party.h"
#include "player_data.h"
#include "pokedex.h"
#include "pokemon.h"
#include "save.h"
#include "save_frontier.h"
#include "sound_chatot.h"
#include "system.h"

extern struct UnkStruct_0202FBCC *sub_0202711C(SaveData *saveData, enum HeapID heapID, int *ret_p, int idx);
extern int sub_02027134(SaveData *saveData, struct UnkStruct_0202FBCC *data, int idx);
FrontierSave *Save_Frontier_GetStatic(SaveData *saveData);

static void sub_0202FF08(SaveData *save, void *dst, void *src, int rulesetSel, u16 roundCount);
static int sub_02030154(SaveData *save, void *p);
static int sub_0203018C(SaveData *save, void *p);
static void sub_02030258(u16 *data, u32 size, u32 seed);
static void sub_020306DC(Party *party, void *dest);
static void sub_02030724(void *src, Party *party);

/* File-local prototypes for this module's public functions. These are NOT
 * placed in include/unk_0202FBCC.h because that header is frozen at its
 * current 4-symbol surface (encounter.c / unk_02087A78.c / battle_system.c
 * were matched against it); adding declarations would cascade codegen via
 * MWCC -ipa file. File-scope declarations are invisible to other TUs. */
u32 sub_0202FBCC(void);
void sub_0202FBD4(void *data);
void sub_0202FC24(void);
void *sub_0202FC5C(void);
void *sub_0202FC74(void);
BOOL sub_0202FC90(SaveData *save, enum HeapID heapID, int *status, void *outProfile, int idx);
BOOL sub_0202FD28(SaveData *save, enum HeapID heapID, int *status, int idx);
int sub_0202FDA4(SaveData *save, struct UnkStruct_0202FBCC *data, int idx, u16 *state);
int sub_0202FE14(SaveData *save, int field, u16 roundCount, int idx, u16 *state, u16 *writeState);
void sub_0202FEB8(int level, int *outA, int *outB);
void sub_02030250(u16 *data, u32 size, u32 seed);
void sub_020302A4(SaveData *save);
void sub_0203049C(int idx, void *value);
BOOL sub_020304B4(void);
void sub_020304F0(void *dest, SaveData *save);
void *sub_0203077C(enum HeapID heapID);
void *sub_020307AC(enum HeapID heapID);
void *sub_020307DC(void);
void *sub_020307F8(void);
void sub_02030814(void *ruleset, void *descriptor, void *payload, void *outProfile, SaveData *save);
u64 sub_0203088C(void *record, int field, int idx);
void *sub_02030920(enum HeapID heapID);
void sub_02030938(void *ptr);
void sub_02030940(void *dest);
void *sub_0203094C(SaveData *save);
BOOL sub_0203095C(const u8 *p);
void sub_02030964(u8 *p, BOOL value);
void sub_02030978(void *record, u32 field, u32 idx, const void *val);
u32 sub_02030A24(void *record, u32 field, u32 idx);

u8 *_021D2AF8;

static const u8 _020F68C4[4] = { 0x00, 0x02, 0x01, 0x03 };
static const u8 _020F68C8[8] = { 0x00, 0x02, 0x03, 0x01, 0x03, 0x01, 0x00, 0x02 };

u32 sub_0202FBCC(void) {
    return 0x1D50;
}

void sub_0202FBD4(void *data) {
    MIi_CpuClear32(0, data, 0x1D50);
    *(u32 *)data = 0xFFFFFFFF;
}

void sub_0202FBF0(SaveData *save, enum HeapID heapID, u32 *out) {
    if (_021D2AF8 != NULL) {
        Heap_Free(_021D2AF8);
        _021D2AF8 = NULL;
    }
    _021D2AF8 = (u8 *)sub_0202711C(save, heapID, (int *)out, 0);
    sub_0202FBD4(_021D2AF8);
}

void sub_0202FC24(void) {
    GF_ASSERT(_021D2AF8 != NULL);
    Heap_Free(_021D2AF8);
    _021D2AF8 = NULL;
}

BOOL sub_0202FC48(void) {
    return _021D2AF8 != NULL;
}

void *sub_0202FC5C(void) {
    GF_ASSERT(_021D2AF8 != NULL);
    return _021D2AF8;
}

void *sub_0202FC74(void) {
    GF_ASSERT(_021D2AF8 != NULL);
    return _021D2AF8 + 4;
}

BOOL sub_0202FC90(SaveData *save, enum HeapID heapID, int *status, void *outProfile, int idx) {
    u8 *p;
    u8 *payload;
    u16 chk;
    u32 seed;

    if (_021D2AF8 != NULL) {
        Heap_Free(_021D2AF8);
        _021D2AF8 = NULL;
    }
    p = (u8 *)sub_0202711C(save, heapID, status, idx);
    _021D2AF8 = p;
    if (*status != 1) {
        *status = 3;
        return TRUE;
    }
    payload = p + 0xE8;
    chk = *(u16 *)(payload + 0x1C64);
    seed = chk + ((chk ^ 0xFFFF) << 16);
    sub_02030258((u16 *)payload, 0x1C64, seed);
    if (sub_02030154(save, _021D2AF8) == 1) {
        *status = 0;
        return TRUE;
    }
    if (sub_0203018C(save, _021D2AF8) == 0) {
        *status = 2;
        return TRUE;
    }
    if (outProfile != NULL) {
        sub_020304F0(outProfile, save);
    }
    *status = 1;
    return TRUE;
}

BOOL sub_0202FD28(SaveData *save, enum HeapID heapID, int *status, int idx) {
    struct UnkStruct_0202FBCC *data = sub_0202711C(save, heapID, status, idx);
    u8 *payload;
    u16 chk;
    u32 seed;

    if (*status != 1) {
        *status = 3;
        Heap_Free(data);
        return FALSE;
    }
    payload = (u8 *)data + 0xE8;
    chk = *(u16 *)(payload + 0x1C64);
    seed = chk + ((chk ^ 0xFFFF) << 16);
    sub_02030258((u16 *)payload, 0x1C64, seed);
    if (sub_02030154(save, data) == 1) {
        *status = 0;
        Heap_Free(data);
        return FALSE;
    }
    if (sub_0203018C(save, data) == 0) {
        *status = 2;
        Heap_Free(data);
        return FALSE;
    }
    *status = 1;
    Heap_Free(data);
    return TRUE;
}

int sub_0202FDA4(SaveData *save, struct UnkStruct_0202FBCC *data, int idx, u16 *state) {
    int result;

    switch (*state) {
    case 0:
        sub_0201A728(8);
        sub_0201A748(HEAP_ID_FIELD2);
        result = sub_02027134(save, data, idx);
        if (result == 2) {
            Save_PrepareForAsyncWrite(save, 2);
            (*state)++;
            return 0;
        }
        sub_0201A738(8);
        return result;
    case 1:
        result = Save_WriteFileAsync(save);
        if (result == 2 || result == 3) {
            *state = 0;
            sub_0201A774();
            sub_0201A738(8);
        }
        return result;
    default:
        return 0;
    }
}

/* MEDIUM CONFIDENCE: 6-param state machine (4 reg + 2 stack args), fully
 * hand-traced against the asm register flow; flagged because of its size and
 * the unusual stack-argument handling the orchestrator asked about. */
int sub_0202FE14(SaveData *save, int field, u16 roundCount, int idx, u16 *state, u16 *writeState) {
    u8 *payload;
    u8 *descriptor;
    u16 chk;
    u32 seed;

    switch (*state) {
    case 0:
        if (_021D2AF8 == NULL) {
            return 3;
        }
        descriptor = _021D2AF8 + 0x84;
        payload = _021D2AF8 + 0xE8;
        sub_0202FF08(save, descriptor, payload, field, roundCount);
        *(u16 *)(descriptor + 0x48) = 0xE281;
        *(u16 *)(descriptor + 0x60) = SaveArray_CalcCRC16(save, descriptor, 0x58);
        *(u16 *)(payload + 0x1C62) = 0xE281;
        *(u16 *)(payload + 0x1C64) = SaveArray_CalcCRC16(save, payload, 0x1C64);
        chk = *(u16 *)(payload + 0x1C64);
        seed = chk + ((chk ^ 0xFFFF) << 16);
        sub_02030250((u16 *)payload, 0x1C64, seed);
        *writeState = 0;
        (*state)++;
        break;
    case 1:
        return sub_0202FDA4(save, (struct UnkStruct_0202FBCC *)_021D2AF8, idx, writeState);
    }
    return 0;
}

void sub_0202FEB8(int level, int *outA, int *outB) {
    switch (level) {
    case 0xE:
    case 0x11:
    case 0x14:
    case 0x17:
    case 0x1A:
    case 0x1D:
    case 0x20:
        *outA = 4;
        *outB = 3;
        break;
    default:
        *outA = 2;
        *outB = 6;
        break;
    }
}

/* LOW CONFIDENCE: largest/most complex function in the file (record dedup +
 * ruleset-table build). Offsets 0x144/0x134 verified by register-CSE tracing
 * (corrects sweep's 0xC4/0xB4 guess), but inner dedup-loop control flow is a
 * best-effort reconstruction, not a verified line-for-line match. */
#ifdef NONMATCHING
static void sub_0202FF08(SaveData *save, void *dst_, void *src_, int rulesetSel, u16 roundCount) {
    u8 *dst = (u8 *)dst_;
    u8 *src = (u8 *)src_;
    u8 buf8[8];
    u8 buf4[4];
    int outA, outB;
    u32 flags;
    u32 idx2;
    int i, j;
    u16 *rulesetSrc;

    for (i = 0; i < 8; i++) {
        buf8[i] = _020F68C8[i];
    }
    for (i = 0; i < 4; i++) {
        buf4[i] = _020F68C4[i];
    }

    MI_CpuFill8(dst, 0, 0x64);

    sub_0202FEB8(rulesetSel, &outA, &outB);

    flags = *(u32 *)src;
    if (flags & 4) {
        if (flags & 0x80) {
            idx2 = (*(u16 *)(src + 0x144)) << 1;
        } else {
            idx2 = *(u16 *)(src + 0x144);
        }
    } else {
        idx2 = 0;
    }

    for (i = 0; i < outA; i++) {
        u32 *p = (u32 *)(src + idx2 * 4);
        u32 cur = *(u32 *)src;
        int dupCount;
        u8 want;

        if ((cur & 8) && !(cur & 0x80)) {
            u32 v = *(u32 *)((u8 *)p + 0x134);
            u32 sel = (v & 1) << 2;
            want = buf8[sel + i];
            dupCount = 0;
            for (j = 0; j < outA; j++) {
                u32 *rec = (u32 *)(src + (j * 0x134));
                if (*(u32 *)((u8 *)rec + 0x134) == want) {
                    break;
                }
                dupCount++;
            }
        } else {
            if (cur & 0x80) {
                dupCount = buf4[i];
            } else {
                dupCount = i ^ 1;
            }
        }

        if (outB > 0) {
            u32 *rec = (u32 *)(src + 0x1154 + dupCount * 0x2A4);
            for (j = 0; j < outB; j++) {
                if (!(rec[0xB] & 0x80000000) && !((*(u16 *)((u8 *)rec + 4)) & 8)) {
                    *(u16 *)(dst + 0x28 + j * 2) = *(u16 *)((u8 *)rec + 6);
                    dst[0x18 + i] = (u8)((*((u8 *)rec + 0x30)) >> 3);
                }
                rec = (u32 *)((u8 *)rec + 0x70);
            }
        }
    }

    switch (rulesetSel) {
    case 0:
    case 7:
        rulesetSrc = (u16 *)sub_0202925C();
        break;
    case 1:
    case 8:
        rulesetSrc = (u16 *)sub_020291E8(save, 0);
        break;
    case 2:
    case 9:
        rulesetSrc = (u16 *)sub_020291E8(save, 1);
        break;
    case 3:
    case 10:
        rulesetSrc = (u16 *)sub_020291E8(save, 2);
        break;
    case 4:
    case 11:
        rulesetSrc = (u16 *)sub_020291E8(save, 3);
        break;
    case 5:
    case 12:
        rulesetSrc = (u16 *)sub_020291E8(save, 4);
        break;
    case 6:
    case 13:
        rulesetSrc = (u16 *)sub_020291E8(save, 5);
        break;
    default:
        rulesetSrc = NULL;
        break;
    }
    for (i = 0; i < 16; i++) {
        *(u16 *)(dst + 0x28 + i * 2) = rulesetSrc[i];
    }

    *(u16 *)(dst + 0x24) = roundCount;
    dst[0x26] = (u8)rulesetSel;
}
#else
// NONMATCHING: Battle Hall opponent-record builder (dedup scan + ruleset jump table). 11 stack slots + ip make the spill layout irreproducible from C; the C below is an INCOMPLETE reconstruction kept for documentation only.
// clang-format off
static asm void sub_0202FF08(SaveData *save, void *dst_, void *src_, int rulesetSel, u16 roundCount) {
    push {r4, r5, r6, r7, lr}
    sub sp, #0x2c
    str r3, [sp, #8]
    add r7, r1, #0
    str r2, [sp, #4]
    ldr r3, =_020F68C8
    str r0, [sp, #0]
    add r2, sp, #0x1c
    mov r1, #8
_0202FF1A:
    ldrb r0, [r3, #0]
    add r3, r3, #1
    strb r0, [r2, #0]
    add r2, r2, #1
    sub r1, r1, #1
    bne _0202FF1A
    ldr r1, =_020F68C4
    add r0, sp, #0x18
    ldrb r2, [r1, #0]
    strb r2, [r0, #0]
    ldrb r2, [r1, #1]
    strb r2, [r0, #1]
    ldrb r2, [r1, #2]
    ldrb r1, [r1, #3]
    strb r2, [r0, #2]
    strb r1, [r0, #3]
    add r0, r7, #0
    mov r1, #0
    mov r2, #0x64
    bl MI_CpuFill8
    ldr r0, [sp, #8]
    add r1, sp, #0x28
    add r2, sp, #0x24
    bl sub_0202FEB8
    ldr r0, [sp, #4]
    mov r2, #0
    ldr r3, [r0, #0]
    mov r0, #4
    tst r0, r3
    beq _0202FF74
    mov r1, #0x80
    add r0, r3, #0
    tst r0, r1
    beq _0202FF6C
    ldr r0, [sp, #4]
    add r1, #0xc4
    ldrh r0, [r0, r1]
    lsl r4, r0, #1
    b _0202FF76
_0202FF6C:
    ldr r0, [sp, #4]
    add r1, #0xc4
    ldrh r4, [r0, r1]
    b _0202FF76
_0202FF74:
    add r4, r2, #0
_0202FF76:
    ldr r5, [sp, #0x28]
    mov r0, #0
    mov ip, r0
    cmp r5, #0
    ble _0203004E
    add r0, sp, #0x18
    str r0, [sp, #0x14]
    ldr r0, [sp, #4]
    lsl r1, r4, #2
    add r0, r0, r1
    str r0, [sp, #0x10]
    mov r0, #1
    and r0, r4
    add r3, r7, #0
    str r0, [sp, #0xc]
_0202FF94:
    ldr r0, [sp, #4]
    mov r1, #8
    ldr r0, [r0, #0]
    add r6, r0, #0
    and r6, r1
    beq _0202FFD6
    mov r4, #0x80
    add r1, r0, #0
    tst r1, r4
    bne _0202FFD6
    mov r6, #0
    cmp r5, #0
    ble _0202FFF6
    ldr r1, [sp, #0x10]
    add r4, #0xb4
    ldr r1, [r1, r4]
    ldr r0, [sp, #4]
    lsl r1, r1, #0x1f
    lsr r4, r1, #0x1d
    add r1, sp, #0x1c
    add r4, r1, r4
    mov r1, ip
    ldrb r1, [r1, r4]
_0202FFC2:
    mov r4, #0x4d
    lsl r4, r4, #2
    ldr r4, [r0, r4]
    cmp r4, r1
    beq _0202FFF6
    add r6, r6, #1
    add r0, r0, #4
    cmp r6, r5
    blt _0202FFC2
    b _0202FFF6
_0202FFD6:
    cmp r6, #0
    beq _0202FFE6
    mov r1, #0x80
    tst r0, r1
    beq _0202FFE6
    ldr r0, [sp, #0x14]
    ldrb r6, [r0, #0]
    b _0202FFF6
_0202FFE6:
    ldr r0, [sp, #0xc]
    mov r6, ip
    cmp r0, #0
    beq _0202FFF6
    mov r0, ip
    mov r1, #1
    add r6, r0, #0
    eor r6, r1
_0202FFF6:
    ldr r0, [sp, #0x24]
    mov r5, #0
    cmp r0, #0
    ble _0203003C
    ldr r1, =0x00001154
    ldr r0, [sp, #4]
    add r1, r0, r1
    mov r0, #0xa9
    lsl r0, r0, #2
    mul r0, r6
    add r4, r1, r0
_0203000C:
    ldr r0, [r4, #0x2c]
    lsl r0, r0, #1
    lsr r0, r0, #0x1f
    bne _0203002E
    ldrh r0, [r4, #4]
    lsl r0, r0, #0x1d
    lsr r0, r0, #0x1f
    bne _0203002E
    ldrh r0, [r4, #6]
    strh r0, [r3, #0]
    add r0, r4, #0
    add r0, #0x30
    ldrb r0, [r0, #0]
    lsl r0, r0, #0x18
    lsr r1, r0, #0x1b
    add r0, r7, r2
    strb r1, [r0, #0x18]
_0203002E:
    ldr r0, [sp, #0x24]
    add r5, r5, #1
    add r3, r3, #2
    add r2, r2, #1
    add r4, #0x70
    cmp r5, r0
    blt _0203000C
_0203003C:
    ldr r0, [sp, #0x14]
    ldr r5, [sp, #0x28]
    add r0, r0, #1
    str r0, [sp, #0x14]
    mov r0, ip
    add r0, r0, #1
    mov ip, r0
    cmp r0, r5
    blt _0202FF94
_0203004E:
    ldr r0, [sp, #8]
    cmp r0, #0xd
    bhi _02030124
    add r0, r0, r0
    add r0, pc
    ldrh r0, [r0, #6]
    lsl r0, r0, #0x10
    asr r0, r0, #0x10
    add pc, r0
    lsl r2, r0, #3
    lsl r2, r3, #0
    lsl r6, r6, #0
    lsl r2, r2, #1
    lsl r6, r5, #1
    lsl r2, r1, #2
    lsl r6, r4, #2
    lsl r2, r0, #3
    lsl r2, r3, #0
    lsl r6, r6, #0
    lsl r2, r2, #1
    lsl r6, r5, #1
    lsl r2, r1, #2
    lsl r6, r4, #2
_0203007C:
    ldr r0, [sp, #0]
    mov r1, #0
    bl sub_020291E8
    add r3, r7, #0
    add r3, #0x28
    mov r2, #0x10
_0203008A:
    ldrh r1, [r0, #0]
    add r0, r0, #2
    strh r1, [r3, #0]
    add r3, r3, #2
    sub r2, r2, #1
    bne _0203008A
    b _0203013A
_02030098:
    ldr r0, [sp, #0]
    mov r1, #1
    bl sub_020291E8
    add r3, r7, #0
    add r3, #0x28
    mov r2, #0x10
_020300A6:
    ldrh r1, [r0, #0]
    add r0, r0, #2
    strh r1, [r3, #0]
    add r3, r3, #2
    sub r2, r2, #1
    bne _020300A6
    b _0203013A
_020300B4:
    ldr r0, [sp, #0]
    mov r1, #2
    bl sub_020291E8
    add r3, r7, #0
    add r3, #0x28
    mov r2, #0x10
_020300C2:
    ldrh r1, [r0, #0]
    add r0, r0, #2
    strh r1, [r3, #0]
    add r3, r3, #2
    sub r2, r2, #1
    bne _020300C2
    b _0203013A
_020300D0:
    ldr r0, [sp, #0]
    mov r1, #3
    bl sub_020291E8
    add r3, r7, #0
    add r3, #0x28
    mov r2, #0x10
_020300DE:
    ldrh r1, [r0, #0]
    add r0, r0, #2
    strh r1, [r3, #0]
    add r3, r3, #2
    sub r2, r2, #1
    bne _020300DE
    b _0203013A
_020300EC:
    ldr r0, [sp, #0]
    mov r1, #4
    bl sub_020291E8
    add r3, r7, #0
    add r3, #0x28
    mov r2, #0x10
_020300FA:
    ldrh r1, [r0, #0]
    add r0, r0, #2
    strh r1, [r3, #0]
    add r3, r3, #2
    sub r2, r2, #1
    bne _020300FA
    b _0203013A
_02030108:
    ldr r0, [sp, #0]
    mov r1, #5
    bl sub_020291E8
    add r3, r7, #0
    add r3, #0x28
    mov r2, #0x10
_02030116:
    ldrh r1, [r0, #0]
    add r0, r0, #2
    strh r1, [r3, #0]
    add r3, r3, #2
    sub r2, r2, #1
    bne _02030116
    b _0203013A
_02030124:
    bl sub_0202925C
    add r3, r7, #0
    add r3, #0x28
    mov r2, #0x10
_0203012E:
    ldrh r1, [r0, #0]
    add r0, r0, #2
    strh r1, [r3, #0]
    add r3, r3, #2
    sub r2, r2, #1
    bne _0203012E
_0203013A:
    ldr r0, [sp, #0x40]
    strh r0, [r7, #0x24]
    ldr r0, [sp, #8]
    add r7, #0x26
    strb r0, [r7, #0]
    add sp, #0x2c
    pop {r4, r5, r6, r7, pc}
}
// clang-format on
#endif

static int sub_02030154(SaveData *save, void *p_) {
    u8 *payload = (u8 *)p_ + 0xE8;
    u8 *descriptor = (u8 *)p_ + 0x84;

    if (Save_CheckExtraChunksExist(save) == 0) {
        return 1;
    }
    if (*(u16 *)(payload + 0x1C62) != 0xE281 || *(u16 *)(descriptor + 0x48) != 0xE281) {
        return 1;
    }
    return 0;
}

#ifdef NONMATCHING
static int sub_0203018C(SaveData *save, void *p_) {
    u8 *payload = (u8 *)p_ + 0xE8;
    u8 *descriptor = (u8 *)p_ + 0x84;
    u8 *r;
    u8 *s;
    u8 *recBase;
    u16 crc;
    int i, j, k;

    if (*(u16 *)(payload + 0x1C62) != 0xE281 || *(u16 *)(descriptor + 0x48) != 0xE281) {
        return 0;
    }
    crc = SaveArray_CalcCRC16(save, descriptor, 0x58);
    if (crc != *(u16 *)(descriptor + 0x60)) {
        return 0;
    }
    crc = SaveArray_CalcCRC16(save, payload, 0x1C64);
    if (crc != *(u16 *)(payload + 0x1C64)) {
        return 0;
    }

    recBase = payload + 0x1154;
    for (i = 0; i < 4; i++) {
        r = recBase;
        for (j = 0; j < 6; j++) {
            if (*(u16 *)(r + 6) > 0x1EF) {
                return 0;
            }
            if (*(u16 *)(r + 8) > 0x218) {
                return 0;
            }
            s = r;
            for (k = 0; k < 4; k++) {
                if (*(u16 *)(s + 0x1C) > 0x1D3) {
                    return 0;
                }
                s += 2;
            }
            r += 0x70;
        }
        recBase += 0x2A4;
    }
    return 1;
}
#else
// NONMATCHING: nested validation loop -- asm keeps outer counter i in ip and spills recBase; MWCC won'\''t reproduce that spill choice from C.
// clang-format off
static asm int sub_0203018C(SaveData *save, void *p_) {
    push {r3, r4, r5, r6, r7, lr}
    add r4, r1, #0
    add r5, r1, #0
    ldr r1, =0x00001C62
    add r4, #0xe8
    ldrh r1, [r4, r1]
    ldr r2, =0x0000E281
    add r6, r0, #0
    add r5, #0x84
    cmp r1, r2
    bne _020301AC
    add r1, r5, #0
    add r1, #0x48
    ldrh r1, [r1, #0]
    cmp r1, r2
    beq _020301B0
_020301AC:
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
_020301B0:
    add r1, r5, #0
    mov r2, #0x58
    bl SaveArray_CalcCRC16
    add r5, #0x60
    ldrh r1, [r5, #0]
    cmp r0, r1
    beq _020301C4
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
_020301C4:
    ldr r2, =0x00001C64
    add r0, r6, #0
    add r1, r4, #0
    bl SaveArray_CalcCRC16
    ldr r1, =0x00001C64
    ldrh r1, [r4, r1]
    cmp r0, r1
    beq _020301DA
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
_020301DA:
    mov r0, #0
    mov ip, r0
    ldr r0, =0x00001154
    add r0, r4, r0
    str r0, [sp, #0]
    ldr r0, =0x000001D3
    add r7, r0, #0
    add r6, r0, #0
    add r7, #0x45
    add r6, #0x1c
_020301EE:
    ldr r4, [sp, #0]
    mov r2, #0
_020301F2:
    ldrh r1, [r4, #6]
    cmp r1, r6
    bls _020301FC
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
_020301FC:
    ldrh r1, [r4, #8]
    cmp r1, r7
    bls _02030206
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
_02030206:
    mov r3, #0
    add r5, r4, #0
_0203020A:
    ldrh r1, [r5, #0x1c]
    cmp r1, r0
    bls _02030214
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
_02030214:
    add r3, r3, #1
    add r5, r5, #2
    cmp r3, #4
    blt _0203020A
    add r2, r2, #1
    add r4, #0x70
    cmp r2, #6
    blt _020301F2
    mov r1, #0xa9
    ldr r2, [sp, #0]
    lsl r1, r1, #2
    add r1, r2, r1
    str r1, [sp, #0]
    mov r1, ip
    add r1, r1, #1
    mov ip, r1
    cmp r1, #4
    blt _020301EE
    mov r0, #1
    pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on
#endif

void sub_02030250(u16 *data, u32 size, u32 seed) {
    _MonEncryptSegment(data, size, seed);
}

static void sub_02030258(u16 *data, u32 size, u32 seed) {
    _MonDecryptSegment(data, size, seed);
}

void sub_02030260(int battlerId, u32 a1, u8 data) {
    if (_021D2AF8 != NULL) {
        *(_021D2AF8 + (battlerId << 10) + a1 + 0x238) = data;
    }
}

u8 sub_0203027C(int battlerId, u32 a1) {
    GF_ASSERT(_021D2AF8 != NULL);
    return *(_021D2AF8 + (battlerId << 10) + a1 + 0x238);
}

typedef struct {
    u32 w[13];
} UnkRec34;

#ifdef NONMATCHING
void sub_020302A4(SaveData *save) {
    u8 *p;
    u8 *dst;
    int i;

    if (_021D2AF8 == NULL) {
        return;
    }
    p = (u8 *)save;
    dst = _021D2AF8 + 0xE8;

    *(u32 *)(dst + 0x0) = *(u32 *)(p + 0x0);
    *(u32 *)(dst + 0x4) = *(u32 *)(p + 0x14);
    *(u32 *)(dst + 0xE8) = *(u32 *)(p + 0x14C);
    *(u32 *)(dst + 0xEC) = *(u32 *)(p + 0x150);
    *(u32 *)(dst + 0xF0) = *(u32 *)(p + 0x154);
    *(u32 *)(dst + 0xF4) = *(u32 *)(p + 0x158);
    *(u32 *)(dst + 0xF8) = *(u32 *)(p + 0x15C);
    *(u32 *)(dst + 0xFC) = *(u32 *)(p + 0x160);
    *(u32 *)(dst + 0x100) = *(u32 *)(p + 0x164);
    *(u32 *)(dst + 0x104) = *(u32 *)(p + 0x168);
    *(u32 *)(dst + 0x108) = *(u32 *)(p + 0x170);
    *(u32 *)(dst + 0x10C) = *(u32 *)(p + 0x174);
    *(u32 *)(dst + 0x110) = *(u32 *)(p + 0x178);
    *(u32 *)(dst + 0x124) = *(u32 *)(p + 0x18C);
    *(u32 *)(dst + 0x128) = *(u32 *)(p + 0x190);
    *(u32 *)(dst + 0x12C) = *(u32 *)(p + 0x194);
    *(u32 *)(dst + 0x130) = *(u32 *)(p + 0x19C);
    *(u16 *)(dst + 0x134) = *(u16 *)(p + 0x1B0);
    *(u16 *)(dst + 0x136) = *(u8 *)(p + 0x1B3);
    *(u32 *)(dst + 0x138) = *(u32 *)(p + 0x1B4);

    for (i = 0; i < 4; i++) {
        u8 *srcRec = p + 0x34 * i + 0x28;
        u8 *dstRec = dst + 0x34 * i + 0x18;
        u32 v;

        *(u32 *)(dst + 4 * i + 8) = *(u32 *)(p + 4 * i + 0x18);
        *(UnkRec34 *)dstRec = *(UnkRec34 *)srcRec;

        v = *(u32 *)(p + 4 * i + 0x17C);
        *(u32 *)(dst + 4 * i + 0x114) = (v != 0) ? v : 0x140;

        *(u32 *)(dst + 4 * i + 0x134) = *(u32 *)(p + 4 * i + 0x1A0);

        *(u8 *)(dst + i + 0x14C) = *(u8 *)(p + i + 0x1BC);
    }

    for (i = 0; i < 4; i++) {
        sub_020306DC((Party *)(*(u32 *)(p + 4 * i + 4)), dst + 0x1150 + i * 0x2A4);
        PlayerProfile_Copy((PlayerProfile *)(*(u32 *)(p + 4 * i + 0xF8)), (PlayerProfile *)(dst + 0x1BE0 + i * 0x20));
        *(u8 *)(dst + i + 0x14C) = (u8)sub_02006EFC((SOUND_CHATOT *)(*(u32 *)(p + 4 * i + 0x118)));
    }

    Options_Copy((Options *)(*(u32 *)(p + 0x130)), (Options *)(dst + 0x1C60));
}
#else
// NONMATCHING: ~20-field SaveData->work copy -- asm spills the save param to the stack and reloads per access; not coercible from C.
// clang-format off
asm void sub_020302A4(SaveData *save) {
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #0x10
    str r0, [sp, #0]
    ldr r0, =_021D2AF8
    ldr r1, [r0, #0]
    cmp r1, #0
    bne _020302B4
    b _02030488
_020302B4:
    ldr r0, [sp, #0]
    add r7, r1, #0
    ldr r0, [r0, #0]
    add r1, #0xe8
    str r0, [r1, #0]
    ldr r0, [sp, #0]
    add r7, #0xe8
    ldr r0, [r0, #0x14]
    ldr r1, [sp, #0]
    str r0, [r7, #4]
    mov r0, #0x53
    lsl r0, r0, #2
    ldr r2, [r1, r0]
    add r1, r7, #0
    add r1, #0xe8
    str r2, [r1, #0]
    ldr r1, [sp, #0]
    add r2, r0, #4
    ldr r2, [r1, r2]
    add r1, r7, #0
    add r1, #0xec
    str r2, [r1, #0]
    add r2, r0, #0
    ldr r1, [sp, #0]
    add r2, #8
    ldr r2, [r1, r2]
    add r1, r7, #0
    add r1, #0xf0
    str r2, [r1, #0]
    add r2, r0, #0
    ldr r1, [sp, #0]
    add r2, #0xc
    ldr r2, [r1, r2]
    add r1, r7, #0
    add r1, #0xf4
    str r2, [r1, #0]
    add r2, r0, #0
    ldr r1, [sp, #0]
    add r2, #0x10
    ldr r2, [r1, r2]
    add r1, r7, #0
    add r1, #0xf8
    str r2, [r1, #0]
    add r2, r0, #0
    ldr r1, [sp, #0]
    add r2, #0x14
    ldr r2, [r1, r2]
    add r1, r7, #0
    add r1, #0xfc
    str r2, [r1, #0]
    add r2, r0, #0
    ldr r1, [sp, #0]
    add r2, #0x18
    ldr r2, [r1, r2]
    add r1, r0, #0
    sub r1, #0x4c
    str r2, [r7, r1]
    add r2, r0, #0
    ldr r1, [sp, #0]
    add r2, #0x1c
    ldr r2, [r1, r2]
    add r1, r0, #0
    sub r1, #0x48
    str r2, [r7, r1]
    add r2, r0, #0
    ldr r1, [sp, #0]
    add r2, #0x24
    ldr r2, [r1, r2]
    add r1, r0, #0
    sub r1, #0x44
    str r2, [r7, r1]
    add r2, r0, #0
    ldr r1, [sp, #0]
    add r2, #0x28
    ldr r2, [r1, r2]
    add r1, r0, #0
    sub r1, #0x40
    str r2, [r7, r1]
    add r2, r0, #0
    ldr r1, [sp, #0]
    add r2, #0x2c
    ldr r2, [r1, r2]
    add r1, r0, #0
    sub r1, #0x3c
    str r2, [r7, r1]
    add r2, r0, #0
    ldr r1, [sp, #0]
    add r2, #0x40
    ldr r2, [r1, r2]
    add r1, r0, #0
    sub r1, #0x28
    str r2, [r7, r1]
    add r2, r0, #0
    ldr r1, [sp, #0]
    add r2, #0x44
    ldr r2, [r1, r2]
    add r1, r0, #0
    sub r1, #0x24
    str r2, [r7, r1]
    add r2, r0, #0
    ldr r1, [sp, #0]
    add r2, #0x48
    ldr r2, [r1, r2]
    add r1, r0, #0
    sub r1, #0x20
    str r2, [r7, r1]
    add r2, r0, #0
    ldr r1, [sp, #0]
    add r2, #0x50
    ldr r2, [r1, r2]
    add r1, r0, #0
    sub r1, #0x1c
    str r2, [r7, r1]
    add r2, r0, #0
    ldr r1, [sp, #0]
    add r2, #0x64
    ldrh r2, [r1, r2]
    add r1, r0, #0
    sub r1, #8
    strh r2, [r7, r1]
    add r2, r0, #0
    ldr r1, [sp, #0]
    add r2, #0x67
    ldrb r2, [r1, r2]
    sub r1, r0, #6
    ldr r4, [sp, #0]
    strh r2, [r7, r1]
    add r2, r0, #0
    ldr r1, [sp, #0]
    add r2, #0x68
    ldr r1, [r1, r2]
    sub r0, r0, #4
    str r1, [r7, r0]
    add r0, r4, #0
    mov r3, #0
    add r5, r7, #0
    str r0, [sp, #8]
    str r7, [sp, #4]
_020303C8:
    ldr r0, [r4, #0x18]
    ldr r2, [sp, #8]
    ldr r6, [sp, #4]
    str r0, [r5, #8]
    mov r0, #6
    add r2, #0x28
    add r6, #0x18
    mov ip, r0
_020303D8:
    ldmia r2!, {r0, r1}
    stmia r6!, {r0, r1}
    mov r0, ip
    sub r0, r0, #1
    mov ip, r0
    bne _020303D8
    ldr r0, [r2, #0]
    mov r1, #0x5f
    lsl r1, r1, #2
    str r0, [r6, #0]
    ldr r0, [r4, r1]
    cmp r0, #0
    bne _020303FA
    mov r0, #5
    sub r1, #0x68
    lsl r0, r0, #6
    b _020303FC
_020303FA:
    sub r1, #0x68
_020303FC:
    str r0, [r5, r1]
    mov r0, #0x1a
    lsl r0, r0, #4
    ldr r2, [r4, r0]
    add r1, r0, #0
    sub r1, #0x6c
    str r2, [r5, r1]
    ldr r1, [sp, #0]
    add r4, r4, #4
    add r2, r1, r3
    add r1, r0, #0
    add r1, #0x1c
    ldrb r2, [r2, r1]
    add r1, r7, r3
    sub r0, #0x54
    strb r2, [r1, r0]
    ldr r0, [sp, #8]
    add r3, r3, #1
    add r0, #0x34
    str r0, [sp, #8]
    ldr r0, [sp, #4]
    add r5, r5, #4
    add r0, #0x34
    str r0, [sp, #4]
    cmp r3, #4
    blt _020303C8
    ldr r0, =0x00001150
    ldr r4, [sp, #0]
    add r0, r7, r0
    str r0, [sp, #0xc]
    ldr r0, =0x00001BE0
    mov r5, #0
    add r6, r7, r0
_0203043E:
    ldr r0, [r4, #4]
    ldr r1, [sp, #0xc]
    bl sub_020306DC
    add r0, r4, #0
    add r0, #0xf8
    ldr r0, [r0, #0]
    add r1, r6, #0
    bl PlayerProfile_Copy
    mov r0, #0x46
    lsl r0, r0, #2
    ldr r0, [r4, r0]
    bl sub_02006EFC
    mov r1, #0x53
    add r2, r7, r5
    lsl r1, r1, #2
    strb r0, [r2, r1]
    mov r0, #0xa9
    ldr r1, [sp, #0xc]
    lsl r0, r0, #2
    add r0, r1, r0
    add r5, r5, #1
    str r0, [sp, #0xc]
    add r4, r4, #4
    add r6, #0x20
    cmp r5, #4
    blt _0203043E
    mov r1, #0x13
    ldr r0, [sp, #0]
    lsl r1, r1, #4
    ldr r0, [r0, r1]
    ldr r1, =0x00001C60
    add r1, r7, r1
    bl Options_Copy
_02030488:
    add sp, #0x10
    pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on
#endif

void sub_0203049C(int idx, void *value) {
    if (_021D2AF8 != NULL) {
        *(void **)(_021D2AF8 + idx * 4 + 0x1FC) = value;
    }
}

BOOL sub_020304B4(void) {
    u32 *p = (u32 *)_021D2AF8;
    int i;

    if (p == NULL) {
        return TRUE;
    }
    i = 0;
    p = (u32 *)((u8 *)p + 0xE8);
    for (; i < 4; i++) {
        if (p[0x45] > 0x140) {
            return FALSE;
        }
        p++;
    }
    return TRUE;
}

/* MEDIUM-LOW CONFIDENCE: mirror-image of sub_020302A4 (work buffer -> caller
 * dest). Linear field offsets confirmed by symbolic tracer to be the exact
 * mirror of sub_020302A4's; the trailing Options/frame-clamp logic is a
 * faithful but unverified translation. */
#ifdef NONMATCHING
void sub_020304F0(void *dest_, SaveData *save) {
    u8 *dst = (u8 *)dest_;
    u8 *p;
    int i;

    p = _021D2AF8 + 0xE8;

    *(u32 *)(dst + 0x0) = *(u32 *)(p + 0x0);
    *(u32 *)(dst + 0x14C) = *(u32 *)(p + 0xE8);
    *(u32 *)(dst + 0x150) = *(u32 *)(p + 0xEC);
    *(u32 *)(dst + 0x154) = *(u32 *)(p + 0xF0);
    *(u32 *)(dst + 0x158) = *(u32 *)(p + 0xF4);
    *(u32 *)(dst + 0x15C) = *(u32 *)(p + 0xF8);
    *(u32 *)(dst + 0x160) = *(u32 *)(p + 0xFC);
    *(u32 *)(dst + 0x164) = *(u32 *)(p + 0x100);
    *(u32 *)(dst + 0x168) = *(u32 *)(p + 0x104);
    *(u32 *)(dst + 0x170) = *(u32 *)(p + 0x108);
    *(u32 *)(dst + 0x174) = *(u32 *)(p + 0x10C);
    *(u32 *)(dst + 0x18C) = *(u32 *)(p + 0x110) | 0x10;
    *(u32 *)(dst + 0x190) = *(u32 *)(p + 0x124);
    *(u32 *)(dst + 0x194) = *(u32 *)(p + 0x128);
    *(u32 *)(dst + 0x19C) = *(u32 *)(p + 0x12C);
    *(u16 *)(dst + 0x1B0) = *(u16 *)(p + 0x134);

    *(u32 *)(dst + 0x14) = 0;
    *(u32 *)(dst + 0x178) = 0;

    Pokedex_Copy(Save_Pokedex_Get(save), (Pokedex *)(*(u32 *)(dst + 0x110)));

    for (i = 0; i < 4; i++) {
        *(u32 *)(dst + 4 * i + 0x18) = *(u32 *)(p + 4 * i + 8);
        *(UnkRec34 *)(dst + 0x34 * i + 0x28) = *(UnkRec34 *)(p + 0x34 * i + 0x18);
        *(u32 *)(dst + 4 * i + 0x17C) = *(u32 *)(p + 4 * i + 0x114);
        *(u32 *)(dst + 4 * i + 0x1A0) = *(u32 *)(p + 4 * i + 0x134);

        sub_02030724(dst + 0x1150 + i * 0x2A4, (Party *)(*(u32 *)(dst + 4 * i + 4)));
        PlayerProfile_Copy((PlayerProfile *)(p + 0x1BE0 + i * 0x20), (PlayerProfile *)(*(u32 *)(dst + 4 * i + 0xF8)));
    }

    Options_Copy(Save_PlayerData_GetOptionsAddr(save), (Options *)(*(u32 *)(dst + 0x130)));

    ((Options *)(*(u32 *)(dst + 0x130)))->frame = ((Options *)(p + 0x1C60))->frame;
    if (((Options *)(*(u32 *)(dst + 0x130)))->frame >= 20) {
        ((Options *)(*(u32 *)(dst + 0x130)))->frame = 0;
    }
}
#else
// NONMATCHING: mirror of sub_020302A4 (work->dest); same save-spill reg-alloc that resists C source control.
// clang-format off
asm void sub_020304F0(void *dest_, SaveData *save) {
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #0x18
    add r6, r0, #0
    ldr r0, =_021D2AF8
    str r1, [sp, #0]
    ldr r1, [r0, #0]
    add r0, r1, #0
    str r0, [sp, #0x14]
    add r0, #0xe8
    add r1, #0xe8
    str r0, [sp, #0x14]
    ldr r0, [r1, #0]
    str r0, [r6, #0]
    ldr r0, [sp, #0x14]
    add r0, #0xe8
    ldr r1, [r0, #0]
    mov r0, #0x53
    lsl r0, r0, #2
    str r1, [r6, r0]
    ldr r1, [sp, #0x14]
    add r1, #0xec
    ldr r2, [r1, #0]
    add r1, r0, #4
    str r2, [r6, r1]
    ldr r1, [sp, #0x14]
    add r1, #0xf0
    ldr r2, [r1, #0]
    add r1, r0, #0
    add r1, #8
    str r2, [r6, r1]
    ldr r1, [sp, #0x14]
    add r1, #0xf4
    ldr r2, [r1, #0]
    add r1, r0, #0
    add r1, #0xc
    str r2, [r6, r1]
    ldr r1, [sp, #0x14]
    add r1, #0xf8
    ldr r2, [r1, #0]
    add r1, r0, #0
    add r1, #0x10
    str r2, [r6, r1]
    ldr r1, [sp, #0x14]
    add r1, #0xfc
    ldr r2, [r1, #0]
    add r1, r0, #0
    add r1, #0x14
    str r2, [r6, r1]
    add r2, r0, #0
    ldr r1, [sp, #0x14]
    sub r2, #0x4c
    ldr r2, [r1, r2]
    add r1, r0, #0
    add r1, #0x18
    str r2, [r6, r1]
    add r2, r0, #0
    ldr r1, [sp, #0x14]
    sub r2, #0x48
    ldr r2, [r1, r2]
    add r1, r0, #0
    add r1, #0x1c
    str r2, [r6, r1]
    add r2, r0, #0
    ldr r1, [sp, #0x14]
    sub r2, #0x44
    ldr r2, [r1, r2]
    add r1, r0, #0
    add r1, #0x24
    str r2, [r6, r1]
    add r2, r0, #0
    ldr r1, [sp, #0x14]
    sub r2, #0x40
    ldr r2, [r1, r2]
    add r1, r0, #0
    add r1, #0x28
    str r2, [r6, r1]
    add r2, r0, #0
    ldr r1, [sp, #0x14]
    sub r2, #0x28
    ldr r2, [r1, r2]
    mov r1, #0x10
    orr r2, r1
    add r1, r0, #0
    add r1, #0x40
    str r2, [r6, r1]
    add r2, r0, #0
    ldr r1, [sp, #0x14]
    sub r2, #0x24
    ldr r2, [r1, r2]
    add r1, r0, #0
    add r1, #0x44
    str r2, [r6, r1]
    add r2, r0, #0
    ldr r1, [sp, #0x14]
    sub r2, #0x20
    ldr r2, [r1, r2]
    add r1, r0, #0
    add r1, #0x48
    str r2, [r6, r1]
    add r2, r0, #0
    ldr r1, [sp, #0x14]
    sub r2, #0x1c
    ldr r2, [r1, r2]
    add r1, r0, #0
    add r1, #0x50
    str r2, [r6, r1]
    add r2, r0, #0
    ldr r1, [sp, #0x14]
    sub r2, #8
    ldrh r2, [r1, r2]
    add r1, r0, #0
    add r1, #0x64
    strh r2, [r6, r1]
    mov r1, #0
    str r1, [r6, #0x14]
    add r0, #0x2c
    str r1, [r6, r0]
    ldr r0, [sp, #0]
    bl Save_Pokedex_Get
    mov r1, #0x11
    lsl r1, r1, #4
    ldr r1, [r6, r1]
    bl Pokedex_Copy
    ldr r5, [sp, #0x14]
    ldr r1, =0x00001150
    add r0, r5, #0
    str r0, [sp, #0x10]
    add r0, r0, r1
    str r0, [sp, #8]
    ldr r1, =0x00001BE0
    add r0, r5, #0
    add r0, r0, r1
    mov r7, #0
    add r4, r6, #0
    str r6, [sp, #0xc]
    str r0, [sp, #4]
_02030604:
    ldr r0, [r5, #8]
    ldr r3, [sp, #0x10]
    ldr r2, [sp, #0xc]
    str r0, [r4, #0x18]
    mov r0, #6
    add r3, #0x18
    add r2, #0x28
    mov ip, r0
_02030614:
    ldmia r3!, {r0, r1}
    stmia r2!, {r0, r1}
    mov r0, ip
    sub r0, r0, #1
    mov ip, r0
    bne _02030614
    ldr r0, [r3, #0]
    mov r1, #0x45
    lsl r1, r1, #2
    str r0, [r2, #0]
    add r0, r1, #0
    ldr r2, [r5, r1]
    add r0, #0x68
    str r2, [r4, r0]
    add r0, r1, #0
    add r0, #0x20
    ldr r0, [r5, r0]
    add r1, #0x8c
    str r0, [r4, r1]
    ldr r0, [sp, #8]
    ldr r1, [r4, #4]
    bl sub_02030724
    add r1, r4, #0
    add r1, #0xf8
    ldr r0, [sp, #4]
    ldr r1, [r1, #0]
    bl PlayerProfile_Copy
    ldr r0, [sp, #0x14]
    add r5, r5, #4
    add r1, r0, r7
    mov r0, #0x53
    lsl r0, r0, #2
    ldrb r2, [r1, r0]
    add r1, r6, r7
    add r0, #0x70
    strb r2, [r1, r0]
    ldr r0, [sp, #0x10]
    mov r1, #0xa9
    add r0, #0x34
    str r0, [sp, #0x10]
    ldr r0, [sp, #0xc]
    lsl r1, r1, #2
    add r0, #0x34
    str r0, [sp, #0xc]
    ldr r0, [sp, #8]
    add r7, r7, #1
    add r0, r0, r1
    str r0, [sp, #8]
    ldr r0, [sp, #4]
    add r4, r4, #4
    add r0, #0x20
    str r0, [sp, #4]
    cmp r7, #4
    blt _02030604
    ldr r0, [sp, #0]
    bl Save_PlayerData_GetOptionsAddr
    mov r1, #0x13
    lsl r1, r1, #4
    ldr r1, [r6, r1]
    bl Options_Copy
    mov r5, #0x13
    lsl r5, r5, #4
    ldr r1, [r6, r5]
    ldr r4, =0x00001C60
    ldr r2, [sp, #0x14]
    ldrh r0, [r1, #0]
    ldrh r2, [r2, r4]
    ldr r3, =0xFFFF83FF
    lsl r2, r2, #0x11
    lsr r2, r2, #0x1b
    lsl r2, r2, #0x1b
    and r0, r3
    lsr r2, r2, #0x11
    orr r0, r2
    strh r0, [r1, #0]
    ldr r2, [r6, r5]
    ldrh r0, [r2, #0]
    lsl r1, r0, #0x11
    lsr r1, r1, #0x1b
    cmp r1, #0x14
    blo _020306C2
    and r0, r3
    strh r0, [r2, #0]
_020306C2:
    add sp, #0x18
    pop {r3, r4, r5, r6, r7, pc}
    nop
}
// clang-format on
#endif

typedef struct {
    u16 maxCount;
    u16 count;
    struct UnkPokemonStruct_02072A98 mons[6];
} PartySnapshot;

static void sub_020306DC(Party *party, void *dest_) {
    PartySnapshot *snap = (PartySnapshot *)dest_;
    int i;

    MI_CpuFill8(snap, 0, 0x2A4);
    snap->maxCount = Party_GetMaxCount(party);
    snap->count = Party_GetCount(party);
    for (i = 0; i < snap->count; i++) {
        sub_02072A98(Party_GetMonByIndex(party, i), &snap->mons[i]);
    }
}

static void sub_02030724(void *src_, Party *party) {
    PartySnapshot *snap = (PartySnapshot *)src_;
    Pokemon *mon;
    u8 ballCapsule;
    int i;

    ballCapsule = 0;
    mon = AllocMonZeroed(HEAP_ID_FIELD2);
    Party_InitWithMaxSize(party, snap->maxCount);
    for (i = 0; i < snap->count; i++) {
        sub_02072D64(&snap->mons[i], mon);
        SetMonData(mon, 0xA2, &ballCapsule);
        Party_AddMon(party, mon);
    }
    Heap_Free(mon);
}

void *sub_0203077C(enum HeapID heapID) {
    void *buf;

    GF_ASSERT(_021D2AF8 != NULL);
    buf = Heap_Alloc(heapID, 0x64);
    MIi_CpuCopy32((u32 *)(_021D2AF8 + 0x84), buf, 0x64);
    return buf;
}

void *sub_020307AC(enum HeapID heapID) {
    void *buf;

    GF_ASSERT(_021D2AF8 != NULL);
    buf = Heap_Alloc(heapID, 0x80);
    MIi_CpuCopy32((u32 *)(_021D2AF8 + 4), buf, 0x80);
    return buf;
}

void *sub_020307DC(void) {
    GF_ASSERT(_021D2AF8 != NULL);
    return _021D2AF8 + 4;
}

void *sub_020307F8(void) {
    GF_ASSERT(_021D2AF8 != NULL);
    return _021D2AF8 + 0x84;
}

/* NOTE: this is an IMPORT/restore (copies caller buffers INTO the live work
 * buffer), not an export as the sweep JSON guessed -- confirmed via
 * MI_CpuCopy8(src, dst, size) argument order in the asm. */
void sub_02030814(void *ruleset, void *descriptor, void *payload, void *outProfile, SaveData *save) {
    u16 chk;
    u32 seed;

    GF_ASSERT(_021D2AF8 != NULL);
    MI_CpuCopy8(descriptor, _021D2AF8 + 0x84, 0x64);
    MI_CpuCopy8(payload, _021D2AF8 + 0xE8, 0x1C68);
    MI_CpuCopy8(ruleset, _021D2AF8 + 4, 0x80);

    chk = *(u16 *)(_021D2AF8 + 0x1D4C);
    seed = chk + ((chk ^ 0xFFFF) << 16);
    sub_02030258((u16 *)(_021D2AF8 + 0xE8), 0x1C64, seed);

    if (outProfile != NULL) {
        sub_020304F0(outProfile, save);
    }
}

u64 sub_0203088C(void *record_, int field, int idx) {
    u8 *record = (u8 *)record_;

    switch (field) {
    case 0:
        GF_ASSERT(idx < 0xC);
        if (*(u16 *)(record + idx * 2) > 0x1ED) {
            return 0;
        }
        return *(u16 *)(record + idx * 2);
    case 1:
        GF_ASSERT(idx < 0xC);
        return (record + idx)[0x18];
    case 2:
        if (*(u16 *)(record + 0x24) > 0x270F) {
            return 0x270F;
        }
        return *(u16 *)(record + 0x24);
    case 3:
        if (record[0x26] >= 0x21) {
            return 0;
        }
        return record[0x26];
    case 4:
        return *(u64 *)(record + 0x58);
    case 5:
        return record[0x27];
    default:
        GF_AssertFail();
        return 0;
    }
}

void *sub_02030920(enum HeapID heapID) {
    void *buf = Heap_Alloc(heapID, 0x64);
    MI_CpuFill8(buf, 0, 0x64);
    return buf;
}

void sub_02030938(void *ptr) {
    Heap_Free(ptr);
}

void sub_02030940(void *dest) {
    MI_CpuFill8(dest, 0, 0x58);
}

void *sub_0203094C(SaveData *save) {
    return (u8 *)Save_Frontier_GetStatic(save) + 0x8E0;
}

typedef union {
    u8 raw;
    struct {
        u8 unk0 : 4;
        u8 flag : 1;
        u8 unk5 : 3;
    } bits;
} UnkFlagsByte_0203095C;

BOOL sub_0203095C(const u8 *p) {
    return ((const UnkFlagsByte_0203095C *)p)->bits.flag;
}

void sub_02030964(u8 *p, BOOL value) {
    ((UnkFlagsByte_0203095C *)p)->bits.flag = value;
}

typedef union {
    u8 raw;
    struct {
        u8 f0 : 1;
        u8 f1_3 : 3;
        u8 f4_7 : 4;
    } bits;
} BattleHallRecFlags;

void sub_02030978(void *record_, u32 field, u32 idx, const void *val_) {
    u8 *record = (u8 *)record_;
    const u8 *val = (const u8 *)val_;

    switch (field) {
    case 0:
        ((BattleHallRecFlags *)record)->raw = (((BattleHallRecFlags *)record)->raw & ~1) | (*val & 1);
        break;
    case 1:
        ((BattleHallRecFlags *)record)->bits.f1_3 = *val;
        break;
    case 2:
        record[1] = *val;
        break;
    case 3:
        *(u16 *)(record + idx * 2 + 4) = *(const u16 *)val;
        break;
    case 4:
        *(u16 *)(record + idx * 2 + 0x20) = *(const u16 *)val;
        break;
    case 5:
        record[idx + 0x28] = *val;
        break;
    case 6:
        *(u32 *)(record + idx * 4 + 0x2C) = *(const u32 *)val;
        break;
    case 7:
        *(u16 *)(record + idx * 2 + 0x3C) = *(const u16 *)val;
        break;
    case 8:
        record[idx + 0x44] = *val;
        break;
    case 9:
        *(u32 *)(record + idx * 4 + 0x48) = *(const u32 *)val;
        break;
    default:
        break;
    }
}

u32 sub_02030A24(void *record_, u32 field, u32 idx) {
    u8 *record = (u8 *)record_;

    switch (field) {
    case 1:
        return ((BattleHallRecFlags *)record)->bits.f1_3;
    case 0:
        return ((BattleHallRecFlags *)record)->bits.f0;
    case 2:
        return record[1];
    case 3:
        return *(u16 *)(record + idx * 2 + 4);
    case 4:
        return *(u16 *)(record + idx * 2 + 0x20);
    case 5:
        return record[idx + 0x28];
    case 6:
        return *(u32 *)(record + idx * 4 + 0x2C);
    case 7:
        return *(u16 *)(record + idx * 2 + 0x3C);
    case 8:
        return record[idx + 0x44];
    case 9:
        return *(u32 *)(record + idx * 4 + 0x48);
    default:
        return 0;
    }
}
