#include "unk_0202C034.h"

#include "global.h"

#include "constants/save_arrays.h"

#include "assert.h"
#include "gf_rtc.h"
#include "pm_string.h"

typedef struct DWCFriendData {
    u32 unk0;
    u32 unk4;
    u32 unk8;
} DWCFriendData;

typedef struct BattleRecord {
    /* 0x00 */ u16 unk00[8];
    /* 0x10 */ u16 unk10[8];
    /* 0x20 */ u32 unk20;
    /* 0x24 */ u16 unk24;
    /* 0x26 */ u16 unk26;
    /* 0x28 */ u16 unk28;
    /* 0x2A */ u16 unk2A;
    /* 0x2C */ u8 unk2C;
    /* 0x2D */ u8 unk2D;
    /* 0x2E */ u8 unk2E;
    /* 0x2F */ u8 unk2F;
    /* 0x30 */ u16 unk30;
    /* 0x32 */ u16 unk32;
    /* 0x34 */ u16 unk34;
    /* 0x36 */ u16 unk36;
} BattleRecord;

struct UnkStruct_021D2230 {
    /* 0x000 */ u8 unk00[0x40];
    /* 0x040 */ DWCFriendData unk40[32];
    /* 0x1C0 */ BattleRecord unk1C0[32];
};

extern void sub_0203A01C(UnkStruct_021D2230 *a0);
extern BOOL DWC_IsValidFriendData(DWCFriendData *friendData);

u32 sub_0202C034(void);
void *sub_0202C08C(UnkStruct_021D2230 *a0);
void *sub_0202C23C(UnkStruct_021D2230 *a0, int a1);
void sub_0202C270(UnkStruct_021D2230 *a0, int a1, const String *a2);
void sub_0202C2B4(UnkStruct_021D2230 *a0, int a1, const String *a2);
BOOL sub_0202C2DC(UnkStruct_021D2230 *a0, int a1);
void sub_0202C338(UnkStruct_021D2230 *a0, int a1);
static void sub_0202C3E8(UnkStruct_021D2230 *a0, int a1, int a2);
void sub_0202C4F0(UnkStruct_021D2230 *a0, int a1, int a2, int a3, int a4);
void sub_0202C554(UnkStruct_021D2230 *a0, int a1, int a2);
void sub_0202C584(UnkStruct_021D2230 *a0, int a1, int a2);
void sub_0202C5B4(UnkStruct_021D2230 *a0, int a1, int a2);
void sub_0202C5E4(UnkStruct_021D2230 *a0, int a1, int a2);

static UnkStruct_021D2230 _021D2230;

u32 sub_0202C034(void) {
    return sizeof(UnkStruct_021D2230);
}

void sub_0202C03C(UnkStruct_021D2230 *a0) {
    s32 i;
    MIi_CpuClearFast(0, (u32 *)a0, sizeof(UnkStruct_021D2230));
    for (i = 0; i < 32; i++) {
        a0->unk1C0[i].unk10[0] = 0xFFFF;
        a0->unk1C0[i].unk00[0] = 0xFFFF;
        a0->unk1C0[i].unk2E = 2;
    }
    sub_0203A01C(a0);
    MI_CpuCopy8(a0, &_021D2230, sizeof(UnkStruct_021D2230));
}

void *sub_0202C08C(UnkStruct_021D2230 *a0) {
    return a0;
}

s32 sub_0202C090(UnkStruct_021D2230 *a0, s32 a1, s32 a2) {
    s32 result;
    GF_ASSERT(a1 < 32);
    switch (a2) {
    case 0:
        result = a0->unk1C0[a1].unk20;
        break;
    case 1:
        result = a0->unk1C0[a1].unk24;
        break;
    case 2:
        result = a0->unk1C0[a1].unk26;
        break;
    case 3:
        result = a0->unk1C0[a1].unk28;
        break;
    case 4:
        result = a0->unk1C0[a1].unk2A;
        break;
    case 5:
        result = a0->unk1C0[a1].unk2C;
        break;
    case 6:
        result = a0->unk1C0[a1].unk2D;
        break;
    case 8:
        result = a0->unk1C0[a1].unk2E;
        break;
    case 7:
        result = a0->unk1C0[a1].unk2F;
        break;
    case 9:
        result = a0->unk1C0[a1].unk30;
        break;
    case 10:
        result = a0->unk1C0[a1].unk32;
        break;
    case 11:
        result = a0->unk1C0[a1].unk34;
        break;
    case 12:
        result = a0->unk1C0[a1].unk36;
        break;
    }
    return result;
}

void sub_0202C190(UnkStruct_021D2230 *a0, int a1, int a2, u8 a3) {
    GF_ASSERT(a1 < 32);
    switch (a2) {
    case 0:
        a0->unk1C0[a1].unk20 = a3;
        break;
    case 1:
        GF_AssertFail();
        break;
    case 2:
        GF_AssertFail();
        break;
    case 3:
        GF_AssertFail();
        break;
    case 4:
        a0->unk1C0[a1].unk2A = a3;
        break;
    case 5:
        a0->unk1C0[a1].unk2C = a3;
        break;
    case 6:
        a0->unk1C0[a1].unk2D = a3;
        break;
    case 8:
        a0->unk1C0[a1].unk2E = a3;
        break;
    case 7:
        a0->unk1C0[a1].unk2F = a3;
        break;
    case 9:
        GF_AssertFail();
        break;
    }
}

void *sub_0202C23C(UnkStruct_021D2230 *a0, int a1) {
    GF_ASSERT(a1 < 32);
    return &a0->unk40[a1];
}

u16 *sub_0202C254(UnkStruct_021D2230 *a0, s32 a1) {
    GF_ASSERT(a1 < 32);
    return a0->unk1C0[a1].unk10;
}

void sub_0202C270(UnkStruct_021D2230 *a0, int a1, const String *a2) {
    GF_ASSERT(a1 < 32);
    CopyStringToU16Array(a2, a0->unk1C0[a1].unk10, 16);
}

u16 *sub_0202C298(UnkStruct_021D2230 *a0, s32 a1) {
    GF_ASSERT(a1 < 32);
    return a0->unk1C0[a1].unk00;
}

void sub_0202C2B4(UnkStruct_021D2230 *a0, int a1, const String *a2) {
    GF_ASSERT(a1 < 32);
    CopyStringToU16Array(a2, a0->unk1C0[a1].unk00, 16);
}

BOOL sub_0202C2DC(UnkStruct_021D2230 *a0, int a1) {
    GF_ASSERT(a1 < 32);
    return DWC_IsValidFriendData(&a0->unk40[a1]);
}

#ifdef NONMATCHING
int sub_0202C2F8(UnkStruct_021D2230 *a0) {
    int count = 0;
    int i;
    for (i = 0; i < 32; i++) {
        if (sub_0202C2DC(a0, i) != 0) {
            count++;
        }
    }
    return count;
}
#else
// clang-format off
asm int sub_0202C2F8(UnkStruct_021D2230 *a0) {
	push {r4, r5, r6, lr}
	mov r5, #0
	add r6, r0, #0
	add r4, r5, #0
_0202C300:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0202C2DC
	cmp r0, #0
	beq _0202C30E
	add r5, r5, #1
_0202C30E:
	add r4, r4, #1
	cmp r4, #0x20
	blt _0202C300
	add r0, r5, #0
	pop {r4, r5, r6, pc}
}
// clang-format on
#endif

#ifdef NONMATCHING
u16 sub_0202C318(UnkStruct_021D2230 *a0) {
    int last = 0;
    int i;
    for (i = 0; i < 32; i++) {
        if (sub_0202C2DC(a0, i) != 0) {
            last = i + 1;
        }
    }
    return last;
}
#else
// clang-format off
asm u16 sub_0202C318(UnkStruct_021D2230 *a0) {
	push {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #0
	add r4, r6, #0
_0202C320:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202C2DC
	cmp r0, #0
	beq _0202C32E
	add r6, r4, #1
_0202C32E:
	add r4, r4, #1
	cmp r4, #0x20
	blt _0202C320
	add r0, r6, #0
	pop {r4, r5, r6, pc}
}
// clang-format on
#endif

#ifdef NONMATCHING
void sub_0202C338(UnkStruct_021D2230 *a0, int a1) {
    if (a1 >= 0 && a1 < 32) {
        if (a1 < 31) {
            BattleRecord *recDst = &a0->unk1C0[a1];
            DWCFriendData *frDst = &a0->unk40[a1];
            do {
                MI_CpuCopy8(&a0->unk1C0[a1 + 1], recDst, sizeof(BattleRecord));
                MI_CpuCopy8(&a0->unk40[a1 + 1], frDst, sizeof(DWCFriendData));
                recDst++;
                frDst++;
                a1++;
            } while (a1 < 31);
        }
        MIi_CpuClearFast(0, (u32 *)&a0->unk1C0[31], sizeof(BattleRecord));
        MIi_CpuClearFast(0, (u32 *)&a0->unk40[31], sizeof(DWCFriendData));
        a0->unk1C0[31].unk10[0] = 0xFFFF;
        a0->unk1C0[31].unk00[0] = 0xFFFF;
        a0->unk1C0[31].unk2E = 2;
    }
}
#else
// clang-format off
asm void sub_0202C338(UnkStruct_021D2230 *a0, int a1) {
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #0]
	add r5, r1, #0
	bmi _0202C3D8
	cmp r5, #0x20
	bge _0202C3D8
	cmp r5, #0x1f
	bge _0202C39E
	mov r1, #7
	lsl r1, r1, #6
	add r0, r0, r1
	str r0, [sp, #4]
	mov r0, #0x38
	add r1, r5, #0
	mul r1, r0
	ldr r0, [sp, #4]
	add r6, r0, r1
	ldr r0, [sp, #0]
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, #0x40
	str r0, [sp, #8]
	mov r0, #0xc
	mul r1, r0
	ldr r0, [sp, #8]
	add r4, r0, r1
_0202C36E:
	add r7, r5, #1
	mov r0, #0x38
	add r1, r7, #0
	mul r1, r0
	ldr r0, [sp, #4]
	mov r2, #0x38
	add r0, r0, r1
	add r1, r6, #0
	bl MI_CpuCopy8
	mov r0, #0xc
	add r1, r7, #0
	mul r1, r0
	ldr r0, [sp, #8]
	mov r2, #0xc
	add r0, r0, r1
	add r1, r4, #0
	bl MI_CpuCopy8
	add r5, r5, #1
	add r6, #0x38
	add r4, #0xc
	cmp r5, #0x1f
	blt _0202C36E
_0202C39E:
	mov r2, #7
	ldr r1, [sp, #0]
	lsl r2, r2, #6
	add r2, r1, r2
	ldr r1, =0x000006C8
	mov r0, #0
	add r1, r2, r1
	mov r2, #0x38
	bl MIi_CpuClearFast
	ldr r2, [sp, #0]
	mov r1, #0x5d
	add r2, #0x40
	lsl r1, r1, #2
	add r1, r2, r1
	mov r0, #0
	mov r2, #0xc
	bl MIi_CpuClearFast
	ldr r2, =0x00000898
	ldr r3, =0x0000FFFF
	ldr r0, [sp, #0]
	add r1, r2, #0
	strh r3, [r0, r2]
	sub r1, #0x10
	strh r3, [r0, r1]
	mov r1, #2
	add r2, #0x1e
	strb r1, [r0, r2]
_0202C3D8:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
}
// clang-format on
#endif

static void sub_0202C3E8(UnkStruct_021D2230 *a0, int a1, int a2) {
    if (a1 >= 0 && a1 < 32 && a2 >= 0 && a2 < 32) {
        MI_CpuCopy8(&a0->unk1C0[a2], &a0->unk1C0[a1], sizeof(BattleRecord));
        MI_CpuCopy8(&a0->unk40[a2], &a0->unk40[a1], sizeof(DWCFriendData));
        MIi_CpuClearFast(0, (u32 *)&a0->unk1C0[a2], sizeof(BattleRecord));
        MIi_CpuClearFast(0, (u32 *)&a0->unk40[a2], sizeof(DWCFriendData));
        a0->unk1C0[a2].unk10[0] = 0xFFFF;
        a0->unk1C0[a2].unk00[0] = 0xFFFF;
        a0->unk1C0[a2].unk2E = 2;
    }
}

#ifdef NONMATCHING
void sub_0202C46C(UnkStruct_021D2230 *a0) {
    int gap = -1;
    int i;
    for (i = 0; i < 32; i++) {
        if (sub_0202C2DC(a0, i) != 0) {
            if (gap != -1) {
                sub_0202C3E8(a0, gap, i);
                i = -1;
                gap = -1;
            }
        } else {
            if (gap == -1) {
                gap = i;
            }
        }
    }
}
#else
// clang-format off
asm void sub_0202C46C(UnkStruct_021D2230 *a0) {
	push {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	mvn r5, r5
	add r6, r0, #0
	mov r4, #0
	add r7, r5, #0
_0202C478:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0202C2DC
	cmp r0, #0
	beq _0202C49C
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _0202C4A6
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0202C3E8
	add r4, r7, #0
	add r5, r7, #0
	b _0202C4A6
_0202C49C:
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	bne _0202C4A6
	add r5, r4, #0
_0202C4A6:
	add r4, r4, #1
	cmp r4, #0x20
	blt _0202C478
	pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on
#endif

void sub_0202C4B0(UnkStruct_021D2230 *a0, s32 a1) {
    RTCDate date;
    GF_RTC_CopyDate(&date);
    if (a1 >= 0 && a1 < 32) {
        a0->unk1C0[a1].unk2A = date.year + 2000;
        a0->unk1C0[a1].unk2C = date.month;
        a0->unk1C0[a1].unk2D = date.day;
    }
}

#ifdef NONMATCHING
void sub_0202C4F0(UnkStruct_021D2230 *a0, int a1, int a2, int a3, int a4) {
    if (a1 >= 0 && a1 < 32) {
        a0->unk1C0[a1].unk24 += a2;
        if (a0->unk1C0[a1].unk24 > 0x270F) {
            a0->unk1C0[a1].unk24 = 0x270F;
        }
        a0->unk1C0[a1].unk26 += a3;
        if (a0->unk1C0[a1].unk26 > 0x270F) {
            a0->unk1C0[a1].unk26 = 0x270F;
        }
        a0->unk1C0[a1].unk28 += a4;
        if (a0->unk1C0[a1].unk28 > 0x270F) {
            a0->unk1C0[a1].unk28 = 0x270F;
        }
        sub_0202C4B0(a0, a1);
    }
}
#else
// clang-format off
asm void sub_0202C4F0(UnkStruct_021D2230 *a0, int a1, int a2, int a3, int a4) {
	push {r4, r5, r6, lr}
	add r4, r0, #0
	cmp r1, #0
	blt _0202C548
	cmp r1, #0x20
	bge _0202C548
	mov r5, #0x79
	mov r0, #0x38
	lsl r5, r5, #2
	mul r0, r1
	add r5, r4, r5
	ldrh r6, [r5, r0]
	add r2, r6, r2
	strh r2, [r5, r0]
	ldrh r6, [r5, r0]
	ldr r2, =0x0000270F
	cmp r6, r2
	bls _0202C516
	strh r2, [r5, r0]
_0202C516:
	ldr r2, =0x000001E6
	add r2, r4, r2
	ldrh r5, [r2, r0]
	add r3, r5, r3
	strh r3, [r2, r0]
	ldrh r5, [r2, r0]
	ldr r3, =0x0000270F
	cmp r5, r3
	bls _0202C52A
	strh r3, [r2, r0]
_0202C52A:
	mov r2, #0x7a
	lsl r2, r2, #2
	add r2, r4, r2
	ldrh r5, [r2, r0]
	ldr r3, [sp, #0x10]
	add r3, r5, r3
	strh r3, [r2, r0]
	ldrh r5, [r2, r0]
	ldr r3, =0x0000270F
	cmp r5, r3
	bls _0202C542
	strh r3, [r2, r0]
_0202C542:
	add r0, r4, #0
	bl sub_0202C4B0
_0202C548:
	pop {r4, r5, r6, pc}
}
// clang-format on
#endif

void sub_0202C554(UnkStruct_021D2230 *a0, int a1, int a2) {
    if (a1 >= 0 && a1 < 32) {
        a0->unk1C0[a1].unk32 += a2;
        if (a0->unk1C0[a1].unk32 > 0x270F) {
            a0->unk1C0[a1].unk32 = 0x270F;
        }
        sub_0202C4B0(a0, a1);
    }
}

void sub_0202C584(UnkStruct_021D2230 *a0, int a1, int a2) {
    if (a1 >= 0 && a1 < 32) {
        a0->unk1C0[a1].unk34 += a2;
        if (a0->unk1C0[a1].unk34 > 0x270F) {
            a0->unk1C0[a1].unk34 = 0x270F;
        }
        sub_0202C4B0(a0, a1);
    }
}

void sub_0202C5B4(UnkStruct_021D2230 *a0, int a1, int a2) {
    if (a1 >= 0 && a1 < 32) {
        a0->unk1C0[a1].unk36 += a2;
        if (a0->unk1C0[a1].unk36 > 0x270F) {
            a0->unk1C0[a1].unk36 = 0x270F;
        }
        sub_0202C4B0(a0, a1);
    }
}

void sub_0202C5E4(UnkStruct_021D2230 *a0, int a1, int a2) {
    if (a2 >= 0 && a2 < 32 && a1 >= 0 && a1 < 32) {
        a0->unk1C0[a2].unk24 += a0->unk1C0[a1].unk24;
        if (a0->unk1C0[a2].unk24 > 0x270F) {
            a0->unk1C0[a2].unk24 = 0x270F;
        }
        a0->unk1C0[a2].unk26 += a0->unk1C0[a1].unk26;
        if (a0->unk1C0[a2].unk26 > 0x270F) {
            a0->unk1C0[a2].unk26 = 0x270F;
        }
        a0->unk1C0[a2].unk28 += a0->unk1C0[a1].unk28;
        if (a0->unk1C0[a2].unk28 > 0x270F) {
            a0->unk1C0[a2].unk28 = 0x270F;
        }
        a0->unk1C0[a2].unk30 += a0->unk1C0[a1].unk30;
        if (a0->unk1C0[a2].unk30 > 0x270F) {
            a0->unk1C0[a2].unk30 = 0x270F;
        }
        a0->unk1C0[a2].unk32 += a0->unk1C0[a1].unk32;
        if (a0->unk1C0[a2].unk32 > 0x270F) {
            a0->unk1C0[a2].unk32 = 0x270F;
        }
        a0->unk1C0[a2].unk34 += a0->unk1C0[a1].unk34;
        if (a0->unk1C0[a2].unk34 > 0x270F) {
            a0->unk1C0[a2].unk34 = 0x270F;
        }
        a0->unk1C0[a2].unk36 += a0->unk1C0[a1].unk36;
        if (a0->unk1C0[a2].unk36 > 0x270F) {
            a0->unk1C0[a2].unk36 = 0x270F;
        }
        MIi_CpuCopyFast((u32 *)a0->unk1C0[a1].unk00, (u32 *)a0->unk1C0[a2].unk00, 16);
        MIi_CpuClearFast(0, (u32 *)&a0->unk1C0[a1], sizeof(BattleRecord));
        a0->unk1C0[a1].unk10[0] = 0xFFFF;
        a0->unk1C0[a1].unk00[0] = 0xFFFF;
        a0->unk1C0[a1].unk2E = 2;
    }
}

UnkStruct_021D2230 *sub_0202C6F4(SaveData *saveData) {
#pragma unused(saveData)
    return &_021D2230;
}

void sub_0202C6FC(SaveData *saveData) {
    void *chunk = SaveArray_Get(saveData, SAVE_UNK_25);
    MI_CpuCopy8(chunk, &_021D2230, sizeof(UnkStruct_021D2230));
}

void sub_0202C714(SaveData *saveData) {
    void *chunk = SaveArray_Get(saveData, SAVE_UNK_25);
    MI_CpuCopy8(&_021D2230, chunk, sizeof(UnkStruct_021D2230));
}
