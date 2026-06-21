#include "frontier/overlay_80_02229EE0.h"

#include "global.h"

#include "battle/battle_setup.h"

#include "error_handling.h"
#include "filesystem.h"
#include "heap.h"
#include "map_header.h"
#include "math_util.h"
#include "message_format.h"
#include "msgdata.h"
#include "party.h"
#include "player_data.h"
#include "pm_string.h"
#include "pm_version.h"
#include "pokemon.h"
#include "save.h"
#include "save_wifi_history.h"
#include "sprite.h"
#include "string_util.h"
#include "trainer_memo.h"
#include "unk_02034354.h"
#include "unk_02035900.h"
#include "unk_02037C94.h"
#include "unk_0208805C.h"

void _s32_div_f(void);

static void *ov80_02229EE0(s32 fileId, enum HeapID heapId, NarcId narcId);
static void ov80_02229F6C(void *dst, u16 trainerId, u32 otId, u32 personality, u32 a4, u8 slotIdx, int natureFlag, enum HeapID heapId2, NarcId narcId);
static void ov80_0222A334(SaveData *saveData, Pokemon *mon);
static u8 ov80_0222A5A4(u32 a0);
static BOOL ov80_0222A5E0(void *a0, void *a1, void *a2, int a3, void *a4, u32 a5, enum HeapID heapId);

void ov80_02229EF4(void *dst, s32 fileId, NarcId narcId);
void *ov80_02229F04(FrontierTrainerData *dst, u16 trainerId, enum HeapID heapId, NarcId narcId);
void ov80_0222A140(void *src, Pokemon *mon, int level);
u16 ov80_0222A30C(u16 abilityId);
void ov80_0222A3BC(SaveData *saveData, Party *party, Pokemon *mon);
void ov80_0222A3D4(Sprite *sprite, int seq);
void ov80_0222A400(Sprite *sprite, int x, int y, int flag);
u32 ov80_0222A43C(u16 hp, u16 maxHp);
void ov80_0222A480(void *battleSetup, FrontierTrainerData *ftd, u32 a2, int slotIdx);
void ov80_0222A4EC(void *dst, u16 trainerId, u8 slotIdx, u32 a3, u32 a4, enum HeapID a5, NarcId narcId);
void ov80_0222A6B8(int count, int level, int a2, void *a3, u8 *levelBuf, int a5, void *trainerTable, void *a7, enum HeapID heapId);
void ov80_0222A7CC(MessageFormat *fmt, u32 idx);
u16 ov80_0222A7EC(PlayerProfile *profile);
void ov80_0222A840(SaveData *saveData);

static const struct {
    u16 natureTable[4];
    u16 abilityKey0;
    u16 abilityRest[125];
} sRodata = {
    { 0xD5, 0x9D, 0xEA, 0xD9 },
    0x5A,
    { 0x8D, 0x5B, 0x8E, 0x5C, 0x8F, 0x5D, 0x90, 0x5E, 0x91, 0x02, 0x04, 0x03, 0x06, 0x3C, 0x03, 0x3D, 0x08, 0x20, 0x3E, 0x21, 0x3F, 0x04, 0x34, 0x05, 0x35, 0x2C, 0x01, 0x2D, 0x02, 0x14, 0x0F, 0x15, 0x10, 0x51, 0x3B, 0x1A, 0x3C, 0x10, 0x09, 0x11, 0x0C, 0x53, 0x17, 0x54, 0x16, 0x47, 0x29, 0x12, 0x2A, 0x0C, 0x26, 0x0D, 0x27, 0x0E, 0x33, 0x0A, 0x07, 0x1B, 0x11, 0x23, 0x25, 0x31, 0x46, 0x32, 0x46, 0x27, 0x0B, 0x28, 0x0E, 0x18, 0x0B, 0x19, 0x0E, 0x35, 0x44, 0x36, 0x45, 0x1D, 0x0B, 0x06, 0x05, 0x1C, 0x01, 0x13, 0x2D, 0x0B, 0x36, 0x2E, 0x38, 0x09, 0x14, 0x30, 0x32, 0x34, 0x0A, 0x25, 0x13, 0x39, 0x1F, 0x4E, 0x1D, 0x22, 0x24, 0x3B, 0x28, 0x3A, 0x2B, 0x26, 0x22, 0x33, 0x3E, 0x1E, 0x0E, 0x50, 0x37, 0x24, 0x0D, 0x07, 0x0C, 0x55, 0x23, 0x0F, 0x2C, 0x16, 0x47 }
};

static void *ov80_02229EE0(s32 fileId, enum HeapID heapId, NarcId narcId) {
    return AllocAndReadWholeNarcMemberByIdPair(narcId, fileId, heapId);
}

void ov80_02229EF4(void *dst, s32 fileId, NarcId narcId) {
    ReadWholeNarcMemberByIdPair(dst, narcId, fileId);
}

#ifdef NONMATCHING
void *ov80_02229F04(FrontierTrainerData *dst, u16 trainerId, enum HeapID heapId, NarcId narcId) {
    MsgData *msgData;
    void *raw;
    String *nameStr;

    msgData = NewMsgDataFromNarc(MSGDATA_LOAD_LAZY, NARC_msgdata_msg, NARC_msgdata_msg, heapId);
    MI_CpuFill8(dst, 0, 0x30);
    raw = ov80_02229EE0((u16)trainerId, heapId, narcId);
    *(u32 *)dst->unk0 = trainerId;
    dst->unk18[0] = 0xFFFF;
    dst->unk18[1] = trainerId * 3;
    *(u16 *)(dst->unk0 + 4) = *(u16 *)raw;
    nameStr = NewString_ReadMsgData(msgData, trainerId);
    CopyStringToU16Array(nameStr, (u16 *)(dst->unk0 + 8), 8);
    String_Delete(nameStr);
    DestroyMsgData(msgData);
    return raw;
}
#else
// clang-format off
// NONMATCHING: MWCC scheduling/regalloc tie; transcribed asm.
asm void *ov80_02229F04(FrontierTrainerData *dst, u16 trainerId, enum HeapID heapId, NarcId narcId) {
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	mov r1, #0x1b
	str r3, [sp, #0]
	mov r0, #1
	add r2, r1, #0
	add r3, r6, #0
	bl NewMsgDataFromNarc
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x30
	bl MI_CpuFill8
	lsl r0, r4, #0x10
	ldr r2, [sp, #0]
	lsr r0, r0, #0x10
	add r1, r6, #0
	bl ov80_02229EE0
	add r6, r0, #0
	ldr r0, =0x0000FFFF
	str r4, [r5, #0]
	strh r0, [r5, #0x18]
	lsl r0, r4, #1
	add r0, r4, r0
	strh r0, [r5, #0x1a]
	ldrh r0, [r6, #0]
	add r1, r4, #0
	strh r0, [r5, #4]
	add r0, r7, #0
	bl NewString_ReadMsgData
	add r5, #8
	add r4, r0, #0
	add r1, r5, #0
	mov r2, #8
	bl CopyStringToU16Array
	add r0, r4, #0
	bl String_Delete
	add r0, r7, #0
	bl DestroyMsgData
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on
#endif

#ifdef NONMATCHING
static void ov80_02229F6C(void *dst, u16 trainerId, u32 otId, u32 personality, u32 a4, u8 slotIdx, int natureFlag, enum HeapID heapId2, NarcId narcId) {
    u32 friendship;
    u32 a4copy;
    u8 td[0x10];
    u32 pid2;
    u32 ivWord;
    u32 lslTmp;
    int evCount;
    int evVal;
    int i;
    u16 species;

    a4copy = a4;
    MI_CpuFill8(dst, 0, 0x38);
    ov80_02229EF4(td, trainerId, narcId);

    *(u16 *)dst = (*(u16 *)dst & 0xF800u) | (((u16 *)td)[0] & 0x7FFu);
    *(u16 *)dst = (*(u16 *)dst & 0xF7FFu) | (u16)(((u16 *)td)[7] << 11);

    if (natureFlag != 0) {
        if (slotIdx >= 4) {
            slotIdx = slotIdx & 3;
        }
        ((u16 *)dst)[1] = sRodata.natureTable[slotIdx];
    } else {
        ((u16 *)dst)[1] = ((u16 *)td)[6];
    }

    friendship = 0xFF;
    for (i = 0; i < 4; i++) {
        ((u16 *)dst)[i + 2] = ((u16 *)td)[i + 1];
        if (((u16 *)td)[i + 1] == 0xDA) {
            friendship = 0;
        }
    }

    *(u32 *)((u8 *)dst + 0xc) = otId;

    if (personality != 0) {
        *(u32 *)((u8 *)dst + 0x10) = personality;
    } else {
        do {
            u32 lo = LCRandom();
            u32 hi = LCRandom();
            pid2 = lo | (hi << 16);
        } while (GetNatureFromPersonality(pid2) != td[0xb] || CalcShininessByOtIdAndPersonality(otId, pid2) == 1);
        *(u32 *)((u8 *)dst + 0x10) = pid2;
    }

    {
        u8 iv = (u8)a4copy;
        lslTmp = (u32)iv << 27;
        ivWord = *(u32 *)((u8 *)dst + 0x14);
        ivWord = (ivWord & 0xFFFFFFE0u) | (iv & 0x1fu);
        ivWord = (ivWord & 0xFFFFFC1Fu) | (lslTmp >> 22);
        ivWord = (ivWord & 0xFFFF83FFu) | (lslTmp >> 17);
        ivWord = (ivWord & 0xFFF07FFFu) | (lslTmp >> 12);
        ivWord = (ivWord & 0xFE0FFFFFu) | (lslTmp >> 7);
        ivWord = (ivWord & 0xC1FFFFFFu) | (lslTmp >> 2);
        *(u32 *)((u8 *)dst + 0x14) = ivWord;
    }

    evCount = 0;
    for (i = 0; i < 6; i++) {
        if (MaskOfFlagNo(i) & td[0xa]) {
            evCount++;
        }
    }
    evVal = 0x1FE / evCount;
    if (evVal > 0xFF) {
        evVal = 0xFF;
    }
    for (i = 0; i < 6; i++) {
        if (MaskOfFlagNo(i) & td[0xa]) {
            ((u8 *)dst)[0x18 + i] = (u8)evVal;
        }
    }

    ((u8 *)dst)[0x1e] = 0;
    ((u8 *)dst)[0x1f] = gGameLanguage;

    species = *(u16 *)dst & 0x7FFu;
    {
        int abil2 = GetMonBaseStat(species, BASE_ABILITY_2);
        if (abil2 == 0) {
            ((u8 *)dst)[0x20] = GetMonBaseStat(species, BASE_ABILITY_1);
        } else if (*(u32 *)((u8 *)dst + 0x10) & 1) {
            ((u8 *)dst)[0x20] = abil2;
        } else {
            ((u8 *)dst)[0x20] = GetMonBaseStat(species, BASE_ABILITY_1);
        }
    }

    ((u8 *)dst)[0x21] = (u8)friendship;
    GetSpeciesNameIntoArray(*(u16 *)dst & 0x7FFu, heapId2, (u16 *)((u8 *)dst + 0x22));
}
#else
// clang-format off
// NONMATCHING: MWCC scheduling/regalloc tie; transcribed asm.
static asm void ov80_02229F6C(void *dst, u16 trainerId, u32 otId, u32 personality, u32 a4, u8 slotIdx, int natureFlag, enum HeapID heapId2, NarcId narcId) {
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp, #0]
	add r7, r2, #0
	mov r1, #0
	mov r2, #0x38
	add r4, r0, #0
	add r6, r3, #0
	ldr r5, [sp, #0x34]
	bl MI_CpuFill8
	ldr r1, [sp, #0]
	ldr r2, [sp, #0x40]
	add r0, sp, #8
	bl ov80_02229EF4
	ldrh r1, [r4, #0]
	add r3, sp, #8
	ldr r0, =0xFFFFF800
	add r2, r1, #0
	and r2, r0
	ldrh r1, [r3, #0]
	lsr r0, r0, #0x15
	and r0, r1
	orr r0, r2
	strh r0, [r4, #0]
	ldrh r1, [r4, #0]
	ldr r0, =0xFFFF07FF
	and r0, r1
	ldrh r1, [r3, #0xe]
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x10
	orr r0, r1
	strh r0, [r4, #0]
	ldr r0, [sp, #0x38]
	cmp r0, #0
	beq _02229FCC
	cmp r5, #4
	blo _02229FC2
	mov r0, #3
	and r0, r5
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_02229FC2:
	ldr r0, =sRodata
	lsl r1, r5, #1
	ldrh r0, [r0, r1]
	strh r0, [r4, #2]
	b _02229FD0
_02229FCC:
	ldrh r0, [r3, #0xc]
	strh r0, [r4, #2]
_02229FD0:
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	add r1, sp, #8
	add r2, r4, #0
	add r5, r0, #0
_02229FDC:
	ldrh r3, [r1, #2]
	strh r3, [r2, #4]
	ldrh r3, [r1, #2]
	cmp r3, #0xda
	bne _02229FE8
	str r5, [sp, #4]
_02229FE8:
	add r0, r0, #1
	add r1, r1, #2
	add r2, r2, #2
	cmp r0, #4
	blt _02229FDC
	str r7, [r4, #0xc]
	cmp r6, #0
	bne _0222A026
_02229FF8:
	bl LCRandom
	add r5, r0, #0
	bl LCRandom
	lsl r0, r0, #0x10
	add r6, r5, #0
	orr r6, r0
	add r0, r6, #0
	bl GetNatureFromPersonality
	add r1, sp, #8
	ldrb r1, [r1, #0xb]
	cmp r1, r0
	bne _02229FF8
	add r0, r7, #0
	add r1, r6, #0
	bl CalcShininessByOtIdAndPersonality
	cmp r0, #1
	beq _02229FF8
	str r6, [r4, #0x10]
	b _0222A028
_0222A026:
	str r6, [r4, #0x10]
_0222A028:
	add r0, sp, #0x20
	ldrb r1, [r0, #0x10]
	ldr r2, [r4, #0x14]
	mov r0, #0x1f
	bic r2, r0
	mov r0, #0x1f
	and r0, r1
	orr r2, r0
	ldr r0, =0xFFFFFC1F
	mov r7, #0
	and r2, r0
	lsl r0, r1, #0x1b
	lsr r1, r0, #0x16
	orr r2, r1
	ldr r1, =0xFFFF83FF
	add r5, r7, #0
	and r2, r1
	lsr r1, r0, #0x11
	orr r2, r1
	ldr r1, =0xFFF07FFF
	and r2, r1
	lsr r1, r0, #0xc
	orr r2, r1
	ldr r1, =0xFE0FFFFF
	and r2, r1
	lsr r1, r0, #7
	orr r2, r1
	ldr r1, =0xC1FFFFFF
	lsr r0, r0, #2
	and r1, r2
	orr r0, r1
	str r0, [r4, #0x14]
_0222A068:
	add r0, r5, #0
	bl MaskOfFlagNo
	add r1, sp, #8
	ldrb r1, [r1, #0xa]
	tst r0, r1
	beq _0222A078
	add r7, r7, #1
_0222A078:
	add r5, r5, #1
	cmp r5, #6
	blt _0222A068
	ldr r0, =0x000001FE
	add r1, r7, #0
	bl _s32_div_f
	cmp r0, #0xff
	ble _0222A08C
	mov r0, #0xff
_0222A08C:
	lsl r0, r0, #0x18
	mov r5, #0
	lsr r7, r0, #0x18
_0222A092:
	add r0, r5, #0
	bl MaskOfFlagNo
	add r1, sp, #8
	ldrb r1, [r1, #0xa]
	tst r0, r1
	beq _0222A0A4
	add r0, r4, r5
	strb r7, [r0, #0x18]
_0222A0A4:
	add r5, r5, #1
	cmp r5, #6
	blt _0222A092
	mov r0, #0
	strb r0, [r4, #0x1e]
	ldr r0, =gGameLanguage
	mov r1, #0x19
	ldrb r0, [r0, #0]
	strb r0, [r4, #0x1f]
	ldrh r0, [r4, #0]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x15
	bl GetMonBaseStat
	cmp r0, #0
	beq _0222A0E8
	ldr r2, [r4, #0x10]
	mov r1, #1
	tst r1, r2
	beq _0222A0D4
	add r1, r4, #0
	add r1, #0x20
	strb r0, [r1, #0]
	b _0222A0FA
_0222A0D4:
	ldrh r0, [r4, #0]
	mov r1, #0x18
	lsl r0, r0, #0x15
	lsr r0, r0, #0x15
	bl GetMonBaseStat
	add r1, r4, #0
	add r1, #0x20
	strb r0, [r1, #0]
	b _0222A0FA
_0222A0E8:
	ldrh r0, [r4, #0]
	mov r1, #0x18
	lsl r0, r0, #0x15
	lsr r0, r0, #0x15
	bl GetMonBaseStat
	add r1, r4, #0
	add r1, #0x20
	strb r0, [r1, #0]
_0222A0FA:
	add r1, r4, #0
	ldr r0, [sp, #4]
	add r1, #0x21
	strb r0, [r1, #0]
	ldrh r0, [r4, #0]
	add r4, #0x22
	ldr r1, [sp, #0x3c]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x15
	add r2, r4, #0
	bl GetSpeciesNameIntoArray
	add r0, r6, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on
#endif

#ifdef NONMATCHING
void ov80_0222A140(void *src, Pokemon *mon, int level) {
    u32 sp1c;
    u8 sp14[4];
    u32 otId;
    u32 personality;
    int i;
    int ppShift;
    u8 ppUpVal;
    u32 maxPP;
    u8 *s = (u8 *)src;

    ZeroMonData(mon);
    if (level == 0x78) {
        level = 50;
    } else if (level == 0x79) {
        level = 100;
    }

    sp1c = *(u32 *)(s + 0x14) & 0x3FFFFFFFu;
    personality = *(u32 *)(s + 0x10);
    otId = 0;

    CreateMon(mon,
        *(u16 *)s & 0x7FFu,
        level,
        sp1c,
        1,
        personality,
        2,
        otId);

    SetMonData(mon, MON_DATA_COMBINED_IVS, &sp1c);
    CalcMonLevelAndStats(mon);

    sp14[1] = (u8)(*(u16 *)s >> 11);
    SetMonData(mon, MON_DATA_FORM, &sp14[1]);

    SetMonData(mon, MON_DATA_HELD_ITEM, s + 2);

    ppShift = 0;
    for (i = 0; i < 4; i++) {
        SetMonData(mon, MON_DATA_MOVE1 + i, s + 4 + i * 2);

        ppUpVal = (s[0x1e] >> ppShift) & 3;
        sp14[1] = ppUpVal;
        SetMonData(mon, MON_DATA_MOVE1_PP_UPS + i, &sp14[1]);

        maxPP = GetMonData(mon, MON_DATA_MOVE1_MAX_PP + i, 0);
        sp14[0] = (u8)maxPP;
        SetMonData(mon, MON_DATA_MOVE1_PP + i, &sp14[0]);

        ppShift += 2;
    }

    otId = *(u32 *)(s + 0xc);
    SetMonData(mon, MON_DATA_OT_ID, &otId);

    SetMonData(mon, MON_DATA_HP_EV, s + 0x18);
    SetMonData(mon, MON_DATA_ATK_EV, s + 0x19);
    SetMonData(mon, MON_DATA_DEF_EV, s + 0x1a);
    SetMonData(mon, MON_DATA_SPEED_EV, s + 0x1b);
    SetMonData(mon, MON_DATA_SPATK_EV, s + 0x1c);
    SetMonData(mon, MON_DATA_SPDEF_EV, s + 0x1d);

    SetMonData(mon, MON_DATA_ABILITY, s + 0x20);
    SetMonData(mon, MON_DATA_FRIENDSHIP, s + 0x21);

    if (*(u32 *)(s + 0x14) & (1 << 30)) {
        MsgData *msgData;
        String *nameStr;
        msgData = NewMsgDataFromNarc(MSGDATA_LOAD_LAZY, NARC_msgdata_msg, 0xed, HEAP_ID_FIELD1);
        nameStr = NewString_ReadMsgData(msgData, *(u16 *)s & 0x7FFu);
        SetMonData(mon, MON_DATA_NICKNAME_STRING, nameStr);
        String_Delete(nameStr);
        DestroyMsgData(msgData);
    } else {
        SetMonData(mon, MON_DATA_NICKNAME, s + 0x22);
    }

    SetMonData(mon, MON_DATA_LANGUAGE, s + 0x1f);
    CalcMonLevelAndStats(mon);
}
#else
// clang-format off
// NONMATCHING: MWCC scheduling/regalloc tie; transcribed asm.
asm void ov80_0222A140(void *src, Pokemon *mon, int level) {
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	add r4, r2, #0
	bl ZeroMonData
	cmp r4, #0x78
	bne _0222A158
	mov r4, #0x32
	b _0222A15E
_0222A158:
	cmp r4, #0x79
	bne _0222A15E
	mov r4, #0x64
_0222A15E:
	ldr r1, [r6, #0x14]
	ldr r0, =0x3FFFFFFF
	add r2, r4, #0
	and r0, r1
	str r0, [sp, #0x1c]
	mov r0, #1
	str r0, [sp, #0]
	ldr r0, [r6, #0x10]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldrh r1, [r6, #0]
	ldr r3, [sp, #0x1c]
	add r0, r5, #0
	lsl r1, r1, #0x15
	lsr r1, r1, #0x15
	bl CreateMon
	add r0, r5, #0
	mov r1, #0xaf
	add r2, sp, #0x1c
	bl SetMonData
	add r0, r5, #0
	bl CalcMonLevelAndStats
	ldrh r0, [r6, #0]
	add r2, sp, #0x14
	add r2, #1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x1b
	add r0, sp, #0x14
	strb r1, [r0, #1]
	add r0, r5, #0
	mov r1, #0x70
	bl SetMonData
	add r0, r5, #0
	mov r1, #6
	add r2, r6, #2
	bl SetMonData
	mov r4, #0
	str r6, [sp, #0x10]
	add r7, r4, #0
_0222A1BC:
	ldr r0, [sp, #0x10]
	add r2, sp, #0x14
	ldrh r1, [r0, #4]
	add r0, sp, #0x14
	add r2, #2
	strh r1, [r0, #2]
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x36
	bl SetMonData
	ldrb r0, [r6, #0x1e]
	add r2, sp, #0x14
	add r2, #1
	add r1, r0, #0
	asr r1, r7
	mov r0, #3
	and r1, r0
	add r0, sp, #0x14
	strb r1, [r0, #1]
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x3e
	bl SetMonData
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x42
	mov r2, #0
	bl GetMonData
	add r1, sp, #0x14
	strb r0, [r1, #0]
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x3a
	add r2, sp, #0x14
	bl SetMonData
	ldr r0, [sp, #0x10]
	add r4, r4, #1
	add r0, r0, #2
	add r7, r7, #2
	str r0, [sp, #0x10]
	cmp r4, #4
	blt _0222A1BC
	ldr r0, [r6, #0xc]
	mov r1, #7
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r2, sp, #0x18
	bl SetMonData
	add r2, sp, #0x14
	ldrb r1, [r6, #0x18]
	add r0, sp, #0x14
	add r2, #1
	strb r1, [r0, #1]
	add r0, r5, #0
	mov r1, #0xd
	bl SetMonData
	add r2, sp, #0x14
	ldrb r1, [r6, #0x19]
	add r0, sp, #0x14
	add r2, #1
	strb r1, [r0, #1]
	add r0, r5, #0
	mov r1, #0xe
	bl SetMonData
	add r2, sp, #0x14
	ldrb r1, [r6, #0x1a]
	add r0, sp, #0x14
	add r2, #1
	strb r1, [r0, #1]
	add r0, r5, #0
	mov r1, #0xf
	bl SetMonData
	add r2, sp, #0x14
	ldrb r1, [r6, #0x1b]
	add r0, sp, #0x14
	add r2, #1
	strb r1, [r0, #1]
	add r0, r5, #0
	mov r1, #0x10
	bl SetMonData
	add r2, sp, #0x14
	ldrb r1, [r6, #0x1c]
	add r0, sp, #0x14
	add r2, #1
	strb r1, [r0, #1]
	add r0, r5, #0
	mov r1, #0x11
	bl SetMonData
	add r2, sp, #0x14
	ldrb r1, [r6, #0x1d]
	add r0, sp, #0x14
	add r2, #1
	strb r1, [r0, #1]
	add r0, r5, #0
	mov r1, #0x12
	bl SetMonData
	add r2, r6, #0
	add r0, r5, #0
	mov r1, #0xa
	add r2, #0x20
	bl SetMonData
	add r2, r6, #0
	add r0, r5, #0
	mov r1, #9
	add r2, #0x21
	bl SetMonData
	ldr r0, [r6, #0x14]
	lsl r0, r0, #1
	lsr r0, r0, #0x1f
	beq _0222A2E4
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0xed
	mov r3, #4
	bl NewMsgDataFromNarc
	ldrh r1, [r6, #0]
	add r4, r0, #0
	lsl r1, r1, #0x15
	lsr r1, r1, #0x15
	bl NewString_ReadMsgData
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0x77
	add r2, r7, #0
	bl SetMonData
	add r0, r7, #0
	bl String_Delete
	add r0, r4, #0
	bl DestroyMsgData
	b _0222A2F0
_0222A2E4:
	add r2, r6, #0
	add r0, r5, #0
	mov r1, #0x75
	add r2, #0x22
	bl SetMonData
_0222A2F0:
	add r6, #0x1f
	add r0, r5, #0
	mov r1, #0xc
	add r2, r6, #0
	bl SetMonData
	add r0, r5, #0
	bl CalcMonLevelAndStats
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
}
// clang-format on
#endif

u16 ov80_0222A30C(u16 abilityId) {
    u32 i = 0;
    const u16 *key = &sRodata.abilityKey0;

    do {
        if (abilityId == *key) {
            return sRodata.abilityRest[i * 2];
        }
        i++;
        key += 2;
    } while (i < 0x3f);

    return 3;
}

static void ov80_0222A334(SaveData *saveData, Pokemon *mon) {
    PlayerProfile *profile;
    u32 otId;
    u32 mapsec;
    MsgData *msgData;
    String *nameStr;

    profile = Save_PlayerData_GetProfile(saveData);
    otId = GetMonData(mon, MON_DATA_OT_ID, 0);
    {
        PlayerProfile *profile2 = Save_PlayerData_GetProfile(saveData);
        sub_0207217C(mon, profile2, 4, 0, 0, HEAP_ID_FIELD2);
    }
    mapsec = MapHeader_GetMapSec(0x113);
    MonSetTrainerMemo(mon, profile, 0, mapsec, HEAP_ID_FIELD2);

    msgData = NewMsgDataFromNarc(MSGDATA_LOAD_DIRECT, NARC_msgdata_msg, 0xc1, HEAP_ID_FIELD2);
    nameStr = NewString_ReadMsgData(msgData, 0);
    SetMonData(mon, MON_DATA_OT_NAME_STRING, nameStr);
    SetMonData(mon, MON_DATA_OT_ID, &otId);
    String_Delete(nameStr);
    DestroyMsgData(msgData);
}

void ov80_0222A3BC(SaveData *saveData, Party *party, Pokemon *mon) {
    ov80_0222A334(saveData, mon);
    Party_AddMon(party, mon);
}

void ov80_0222A3D4(Sprite *sprite, int seq) {
    if (Sprite_GetAnimationNumber(sprite) != seq) {
        Sprite_SetAnimationFrame(sprite, 0);
        Sprite_SetAnimCtrlSeq(sprite, seq);
        Sprite_UpdateAnim(sprite, 1 << 12);
    }
}

void ov80_0222A400(Sprite *sprite, int x, int y, int flag) {
    VecFx32 vec;
    vec.x = x << 12;
    vec.y = y << 12;
    vec.z = 0;
    if (flag == 1) {
        if (Sprite_GetAnimationFrame(sprite) == 0) {
            vec.y = (y - 3) << 12;
        } else {
            vec.y = (y + 1) << 12;
        }
    }
    Sprite_SetMatrix(sprite, &vec);
}

u32 ov80_0222A43C(u16 hp, u16 maxHp) {
    u32 color = CalculateHpBarColor(hp, maxHp, 0x30);
    switch (color) {
    case 4:
        return 1;
    case 3:
        return 2;
    case 2:
        return 3;
    case 1:
        return 4;
    case 0:
    default:
        return 1;
    }
}

void ov80_0222A474(FrontierTrainerData *a0, u16 a1, enum HeapID a2, NarcId a3) {
    void *raw = ov80_02229F04(a0, a1, a2, a3);
    Heap_Free(raw);
}

#ifdef NONMATCHING
void ov80_0222A480(void *battleSetup, FrontierTrainerData *ftd, u32 a2, int slotIdx) {
    u8 *bs = (u8 *)battleSetup;
    u32 trainerOffset = slotIdx * 0x34;

    *(u32 *)(bs + 0x18 + slotIdx * 4) = *(u32 *)ftd->unk0;
    *(u8 *)(bs + trainerOffset + 0x29) = (u8)ftd->unk18[2];
    CopyU16StringArray((u16 *)(bs + trainerOffset + 0x3c), (u16 *)(ftd->unk0 + 8));
    *(u16 *)(bs + trainerOffset + 0x4c) = ftd->unk18[4 - 4];
    *(u16 *)(bs + trainerOffset + 0x4e) = ftd->unk18[5 - 4];
    *(u16 *)(bs + trainerOffset + 0x50) = ftd->unk18[6 - 4];
    *(u16 *)(bs + trainerOffset + 0x52) = ftd->unk18[7 - 4];
    *(u16 *)(bs + trainerOffset + 0x54) = ftd->unk18[8 - 4];
    *(u16 *)(bs + trainerOffset + 0x56) = ftd->unk18[9 - 4];
    *(u16 *)(bs + trainerOffset + 0x58) = ftd->unk18[10 - 4];
    *(u16 *)(bs + trainerOffset + 0x5a) = ftd->unk18[11 - 4];
}
#else
// clang-format off
// NONMATCHING: MWCC scheduling/regalloc tie; transcribed asm.
asm void ov80_0222A480(void *battleSetup, FrontierTrainerData *ftd, u32 a2, int slotIdx) {
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	lsl r0, r3, #2
	ldr r1, [r4, #0]
	add r0, r5, r0
	str r1, [r0, #0x18]
	mov r0, #0x34
	add r6, r3, #0
	mul r6, r0
	add r0, r5, r6
	ldrh r1, [r4, #4]
	add r0, #0x29
	strb r1, [r0, #0]
	add r0, r5, #0
	add r0, #0x3c
	add r1, r4, #0
	add r0, r0, r6
	add r1, #8
	bl CopyU16StringArray
	add r0, r5, r6
	ldrh r1, [r4, #0x20]
	add r0, #0x4c
	strh r1, [r0, #0]
	add r0, r5, r6
	ldrh r1, [r4, #0x22]
	add r0, #0x4e
	strh r1, [r0, #0]
	add r0, r5, r6
	ldrh r1, [r4, #0x24]
	add r0, #0x50
	strh r1, [r0, #0]
	add r0, r5, r6
	ldrh r1, [r4, #0x26]
	add r0, #0x52
	strh r1, [r0, #0]
	add r0, r5, r6
	ldrh r1, [r4, #0x28]
	add r0, #0x54
	strh r1, [r0, #0]
	add r0, r5, r6
	ldrh r1, [r4, #0x2a]
	add r0, #0x56
	strh r1, [r0, #0]
	add r0, r5, r6
	ldrh r1, [r4, #0x2c]
	add r0, #0x58
	strh r1, [r0, #0]
	add r0, r5, r6
	ldrh r1, [r4, #0x2e]
	add r0, #0x5a
	strh r1, [r0, #0]
	pop {r4, r5, r6, pc}
}
// clang-format on
#endif

#ifdef NONMATCHING
void ov80_0222A4EC(void *dst, u16 trainerId, u8 slotIdx, u32 a3, u32 a4, enum HeapID a5, NarcId narcId) {
    u32 lo = LCRandom();
    u32 hi = LCRandom();
    u32 otId = lo | (hi << 16);
    ov80_02229F6C(dst, trainerId, otId, a4, a3, slotIdx, 0, a5, narcId);
}
#else
// clang-format off
// NONMATCHING: MWCC scheduling/regalloc tie; transcribed asm.
asm void ov80_0222A4EC(void *dst, u16 trainerId, u8 slotIdx, u32 a3, u32 a4, enum HeapID a5, NarcId narcId) {
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	str r1, [sp, #0x14]
	add r5, r2, #0
	add r4, r3, #0
	bl LCRandom
	add r6, r0, #0
	bl LCRandom
	lsl r0, r0, #0x10
	add r2, r6, #0
	orr r2, r0
	lsl r0, r5, #0x18
	str r4, [sp, #0]
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x34]
	ldr r3, [sp, #0x30]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x38]
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	add r0, r7, #0
	bl ov80_02229F6C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on
#endif

#ifdef NONMATCHING
void ov80_0222A52C(void *a0, u16 *a1, u8 *a2, u32 *a3, void *a4, u32 a5, u32 a6, u32 a7) {
    u16 *trainers = a1;
    u32 *otIds = a3;
    void *dst = a0;
    u32 *results = (u32 *)a4;
    u32 i = 0;

    if ((s32)a6 <= 0) {
        return;
    }

    do {
        u32 otId = otIds ? *otIds : 0;
        u32 slotByte = a2 ? a2[i] : 0;

        ov80_0222A4EC(dst, *trainers, (u8)slotByte, otId, 0, (enum HeapID)a5, (NarcId)a7);

        if (results) {
            *results = 0;
        }

        i++;
        dst = (u8 *)dst + 0x38;
        if (otIds) {
            otIds++;
        }
        trainers++;
        if (results) {
            results++;
        }
    } while (i < a6);
}
#else
// clang-format off
// NONMATCHING: MWCC scheduling/regalloc tie; transcribed asm.
asm void ov80_0222A52C(void *a0, u16 *a1, u8 *a2, u32 *a3, void *a4, u32 a5, u32 a6, u32 a7) {
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x30]
	add r7, r1, #0
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	str r2, [sp, #0x10]
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x38]
	str r3, [sp, #0x14]
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x3c]
	mov r4, #0
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x34]
	cmp r0, #0
	ble _0222A5A0
	ldr r5, [sp, #0x30]
	add r6, r3, #0
_0222A554:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _0222A55E
	mov r0, #0
	b _0222A560
_0222A55E:
	ldrb r0, [r0, r4]
_0222A560:
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _0222A56E
	mov r0, #0
	b _0222A570
_0222A56E:
	ldr r0, [r6, #0]
_0222A570:
	str r0, [sp, #0]
	ldr r0, [sp, #0x38]
	add r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #8]
	ldrh r1, [r7, #0]
	ldr r0, [sp, #0xc]
	bl ov80_0222A4EC
	ldr r1, [sp, #0x30]
	cmp r1, #0
	beq _0222A58C
	str r0, [r5, #0]
_0222A58C:
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	add r0, #0x38
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x34]
	add r6, r6, #4
	add r7, r7, #2
	add r5, r5, #4
	cmp r4, r0
	blt _0222A554
_0222A5A0:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on
#endif

static u8 ov80_0222A5A4(u32 a0) {
    if (a0 < 0x64) {
        return 3;
    }
    if (a0 < 0x78) {
        return 6;
    }
    if (a0 < 0x8c) {
        return 9;
    }
    if (a0 < 0xa0) {
        return 0xc;
    }
    if (a0 < 0xb4) {
        return 0xf;
    }
    if (a0 < 0xc8) {
        return 0x12;
    }
    if (a0 < 0xdc) {
        return 0x15;
    }
    return 0x1f;
}

#ifdef NONMATCHING
static BOOL ov80_0222A5E0(void *a0, void *a1, void *a2, int a3, void *a4, u32 a5, enum HeapID heapId) {
    u8 workBuf[0x10 * 4];
    u16 selected[0x10];
    u16 species2[0x10];
    int count = 0;
    int retries = 0;
    u16 *outIds = (u16 *)a4;
    void *cursor = workBuf;
    u8 *outCursor = (u8 *)a1;

    if (a5 > 6) {
        GF_AssertFail();
    }

    if (a5 == 0) {
        return FALSE;
    }

    do {
        u16 tableSize = ((u16 *)a0)[1];
        u32 rnd = LCRandom();
        u32 idx = rnd % tableSize;
        u16 trainerId = ((u16 *)a0)[2 + idx];

        ov80_02229EF4(cursor, trainerId, (NarcId)heapId);

        {
            u16 sp = ((u16 *)cursor)[0];
            u16 sp2 = ((u16 *)cursor)[6];
            BOOL dup = FALSE;
            int j;
            for (j = 0; j < count; j++) {
                if (selected[j] == sp || species2[j] == sp2) {
                    dup = TRUE;
                    break;
                }
            }

            if (!dup) {
                if (retries < 0x32) {
                    BOOL extDup = FALSE;
                    if (a3 > 0) {
                        u16 *extIds = (u16 *)a1;
                        u16 *extSp2 = (u16 *)a2;
                        int k;
                        for (k = 0; k < a3; k++) {
                            if (sp == extIds[k] || sp2 == extSp2[k]) {
                                extDup = TRUE;
                                break;
                            }
                        }
                    }
                    if (!extDup) {
                        selected[count] = sp;
                        species2[count] = sp2;
                        if (outIds) {
                            *outIds = trainerId;
                            outIds++;
                        }
                        cursor = (u8 *)cursor + 0x10;
                        count++;
                        retries = 0;
                    } else {
                        retries++;
                    }
                } else {
                    selected[count] = sp;
                    species2[count] = sp2;
                    if (outIds) {
                        *outIds = trainerId;
                        outIds++;
                    }
                    cursor = (u8 *)cursor + 0x10;
                    count++;
                }
            }
        }
    } while ((u32)count < a5);

    return retries >= 0x32 ? TRUE : FALSE;
}
#else
// clang-format off
// NONMATCHING: MWCC scheduling/regalloc tie; transcribed asm.
static asm BOOL ov80_0222A5E0(void *a0, void *a1, void *a2, int a3, void *a4, u32 a5, enum HeapID heapId) {
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	str r0, [sp, #0]
	ldr r0, [sp, #0x90]
	add r7, r3, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r0, [sp, #0x90]
	cmp r0, #6
	ble _0222A5F8
	bl GF_AssertFail
_0222A5F8:
	ldr r0, [sp, #0x90]
	mov r4, #0
	str r4, [sp, #0x14]
	cmp r0, #0
	beq _0222A6A6
	add r0, sp, #0x1c
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x94]
	str r0, [sp, #0xc]
_0222A60A:
	bl LCRandom
	ldr r1, [sp, #0]
	ldrh r1, [r1, #2]
	bl _s32_div_f
	ldr r0, [sp, #0]
	lsl r1, r1, #1
	add r0, r0, r1
	ldrh r0, [r0, #4]
	mov r2, #0xcd
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x18]
	bl ov80_02229EF4
	mov r0, #0
	cmp r4, #0
	ble _0222A64E
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x10]
	ldrh r2, [r2, #0]
	ldrh r3, [r3, #0xc]
	add r1, sp, #0x1c
_0222A63A:
	ldrh r5, [r1, #0]
	cmp r5, r2
	beq _0222A64E
	ldrh r5, [r1, #0xc]
	cmp r5, r3
	beq _0222A64E
	add r0, r0, #1
	add r1, #0x10
	cmp r0, r4
	blt _0222A63A
_0222A64E:
	cmp r0, r4
	bne _0222A6A0
	ldr r0, [sp, #0x14]
	cmp r0, #0x32
	bge _0222A68C
	mov r3, #0
	cmp r7, #0
	ble _0222A680
	ldr r2, [sp, #0x10]
	ldr r5, [sp, #0x10]
	ldrh r2, [r2, #0]
	ldrh r6, [r5, #0xc]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
_0222A66A:
	ldrh r5, [r0, #0]
	cmp r2, r5
	beq _0222A680
	ldrh r5, [r1, #0]
	cmp r6, r5
	beq _0222A680
	add r3, r3, #1
	add r0, r0, #2
	add r1, r1, #2
	cmp r3, r7
	blt _0222A66A
_0222A680:
	cmp r3, r7
	beq _0222A68C
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	b _0222A6A0
_0222A68C:
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	strh r1, [r0, #0]
	ldr r0, [sp, #0x10]
	add r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r0, r0, #2
	str r0, [sp, #0xc]
_0222A6A0:
	ldr r0, [sp, #0x90]
	cmp r4, r0
	bne _0222A60A
_0222A6A6:
	ldr r0, [sp, #0x14]
	cmp r0, #0x32
	blt _0222A6B2
	add sp, #0x7c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0222A6B2:
	mov r0, #0
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
}
// clang-format on
#endif

#ifdef NONMATCHING
void ov80_0222A6B8(int count, int level, int a2, void *a3, u8 *levelBuf, int a5, void *trainerTable, void *a7, enum HeapID heapId) {
    FrontierTrainerData ftd;
    u16 ids[0x20];
    u16 ids2[0x10];
    u16 female[0x10];
    void *raw;
    int i;
    int half;

    raw = ov80_02229F04(&ftd, (u16)level, HEAP_ID_FIELD2, NARC_a_2_0_2);

    for (i = 0; i < count; i++) {
        levelBuf[i] = ov80_0222A5A4(level);
    }

    if (!ftd.unk1C[0x60]) {
        ov80_0222A5E0(raw, ids, ids2, 0, a3, count, HEAP_ID_FIELD2);
        Heap_Free(raw);
    } else {
        half = count >> 1;
        ov80_0222A5E0(raw, ids, ids2, 0, a3, half, HEAP_ID_FIELD2);

        {
            u16 *femaleTrainers = (u16 *)a5;
            u16 *femaleSpecies = (u16 *)a5;
            for (i = 0; i < half; i++) {
                u8 buf[0x38];
                ov80_02229EF4(buf, femaleTrainers[i], NARC_a_2_0_3);
                female[i] = ((u16 *)buf)[8];
                ids2[i] = ((u16 *)buf)[0xe];
            }
        }

        Heap_Free(raw);
        raw = ov80_02229F04(&ftd, (u16)a2, HEAP_ID_FIELD2, NARC_a_2_0_2);

        ov80_0222A5E0(raw, &ids[half], ids2, half, (u16 *)a3 + half * 2, half, HEAP_ID_FIELD2);

        for (i = 0; i < half; i++) {
            levelBuf[half + i] = ov80_0222A5A4(a2);
        }
    }

    Heap_Free(raw);

    ov80_0222A52C(trainerTable, ids, levelBuf, 0, a3, count, 11, NARC_a_2_0_3);
}
#else
// clang-format off
// NONMATCHING: MWCC scheduling/regalloc tie; transcribed asm.
asm void ov80_0222A6B8(int count, int level, int a2, void *a3, u8 *levelBuf, int a5, void *trainerTable, void *a7, enum HeapID heapId) {
	push {r4, r5, r6, r7, lr}
	sub sp, #0x74
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x8c]
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	str r0, [sp, #0x8c]
	add r0, sp, #0x44
	mov r2, #0xb
	mov r3, #0xcc
	add r5, r1, #0
	bl ov80_02229F04
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x10]
	mov r4, #0
	cmp r0, #0
	ble _0222A6EE
_0222A6DC:
	add r0, r5, #0
	bl ov80_0222A5A4
	ldr r1, [sp, #0x8c]
	strb r0, [r1, r4]
	ldr r0, [sp, #0x10]
	add r4, r4, #1
	cmp r4, r0
	blt _0222A6DC
_0222A6EE:
	add r0, sp, #0x78
	ldrb r0, [r0, #0x1c]
	add r1, sp, #0x2c
	cmp r0, #0
	bne _0222A710
	ldr r0, [sp, #0x10]
	add r2, sp, #0x24
	str r0, [sp, #0]
	ldr r0, [sp, #0x18]
	mov r3, #0
	str r0, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	ldr r0, [sp, #0x20]
	bl ov80_0222A5E0
	b _0222A7A6
_0222A710:
	ldr r0, [sp, #0x10]
	add r2, sp, #0x24
	lsr r0, r0, #1
	str r0, [sp, #0x1c]
	str r0, [sp, #0]
	ldr r0, [sp, #0x18]
	mov r3, #0
	str r0, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	ldr r0, [sp, #0x20]
	bl ov80_0222A5E0
	ldr r0, [sp, #0x1c]
	mov r7, #0
	cmp r0, #0
	ble _0222A75C
	ldr r6, [sp, #0x18]
	add r4, sp, #0x2c
	add r5, sp, #0x24
_0222A738:
	ldrh r1, [r6, #0]
	add r0, sp, #0x34
	mov r2, #0xcd
	bl ov80_02229EF4
	add r0, sp, #0x24
	ldrh r0, [r0, #0x10]
	add r7, r7, #1
	add r6, r6, #2
	strh r0, [r4, #0]
	add r0, sp, #0x24
	ldrh r0, [r0, #0x1c]
	add r4, r4, #2
	strh r0, [r5, #0]
	ldr r0, [sp, #0x1c]
	add r5, r5, #2
	cmp r7, r0
	blt _0222A738
_0222A75C:
	ldr r0, [sp, #0x20]
	bl Heap_Free
	ldr r1, [sp, #0x14]
	add r0, sp, #0x44
	mov r2, #0xb
	mov r3, #0xcc
	bl ov80_02229F04
	ldr r1, [sp, #0x10]
	str r0, [sp, #0x20]
	lsr r6, r1, #1
	ldr r1, [sp, #0x18]
	lsl r2, r6, #1
	add r1, r1, r2
	str r6, [sp, #0]
	str r1, [sp, #4]
	mov r1, #0xb
	str r1, [sp, #8]
	add r1, sp, #0x2c
	add r2, sp, #0x24
	add r3, r6, #0
	bl ov80_0222A5E0
	mov r5, #0
	cmp r6, #0
	ble _0222A7A6
	ldr r0, [sp, #0x8c]
	add r4, r0, r6
_0222A796:
	ldr r0, [sp, #0x14]
	bl ov80_0222A5A4
	strb r0, [r4, #0]
	add r5, r5, #1
	add r4, r4, #1
	cmp r5, r6
	blt _0222A796
_0222A7A6:
	ldr r0, [sp, #0x20]
	bl Heap_Free
	ldr r0, [sp, #0x90]
	ldr r1, [sp, #0x18]
	str r0, [sp, #0]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x8c]
	str r0, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	mov r0, #0xcd
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x88]
	mov r3, #0
	bl ov80_0222A52C
	add sp, #0x74
	pop {r4, r5, r6, r7, pc}
}
// clang-format on
#endif

void ov80_0222A7CC(MessageFormat *fmt, u32 idx) {
    PlayerProfile *profile = sub_02034818(sub_0203769C() ^ 1);
    BufferPlayersName(fmt, idx, profile);
}

#ifdef NONMATCHING
u16 ov80_0222A7EC(PlayerProfile *profile) {
    u32 gender = PlayerProfile_GetTrainerGender(profile);
    u8 ver = PlayerProfile_GetVersion(profile);

    if (ver > 0) {
        if (ver >= 7 && ver <= 0xc) {
            if (ver == 7 || ver == 8) {
                goto generic;
            }
            if (ver == 0xc) {
                goto plat;
            }
        }
        goto generic;
    } else if (ver == 0) {
        if (gender == 0) {
            return 0xEE;
        }
        return 0xEF;
    } else {
        goto generic;
    }

generic:
    if (gender == 0) {
        return 0;
    }
    return 0x61;

plat:
    if (gender == 0) {
        return 0x127;
    }
    return 0x12A;
}
#else
// clang-format off
// NONMATCHING: MWCC scheduling/regalloc tie; transcribed asm.
asm u16 ov80_0222A7EC(PlayerProfile *profile) {
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl PlayerProfile_GetTrainerGender
	add r4, r0, #0
	add r0, r5, #0
	bl PlayerProfile_GetVersion
	cmp r0, #0
	bgt _0222A804
	beq _0222A822
	b _0222A816
_0222A804:
	cmp r0, #0xc
	bgt _0222A816
	cmp r0, #7
	blt _0222A816
	beq _0222A816
	cmp r0, #8
	beq _0222A816
	cmp r0, #0xc
	beq _0222A82E
_0222A816:
	cmp r4, #0
	bne _0222A81E
	mov r0, #0
	pop {r3, r4, r5, pc}
_0222A81E:
	mov r0, #0x61
	pop {r3, r4, r5, pc}
_0222A822:
	cmp r4, #0
	bne _0222A82A
	mov r0, #0xee
	pop {r3, r4, r5, pc}
_0222A82A:
	mov r0, #0xef
	pop {r3, r4, r5, pc}
_0222A82E:
	cmp r4, #0
	bne _0222A836
	ldr r0, =0x00000127
	pop {r3, r4, r5, pc}
_0222A836:
	mov r0, #0x4a
	lsl r0, r0, #2
	pop {r3, r4, r5, pc}
}
// clang-format on
#endif

void ov80_0222A840(SaveData *saveData) {
    SaveWiFiHistory *wifiHistory = Save_WiFiHistory_Get(saveData);
    sub_02039F68(wifiHistory);
}
