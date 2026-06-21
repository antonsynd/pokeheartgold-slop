#include "global.h"

#include "constants/heap.h"

#include "battle/battle_system.h"

#include "heap.h"
#include "party.h"
#include "player_data.h"
#include "sav_chatot.h"
#include "save_palpad.h"
#include "string_util.h"
#include "sys_task_api.h"
#include "unk_02033AE0.h"
#include "unk_02035900.h"
#include "unk_020379A0.h"

extern u32 sub_02037190(void);
extern void sub_02036FD8(int a0, void *a1, int a2);
extern void sub_0203049C(int a0, void *a1);
extern BOOL ov12_02264334(BattleSystem *bs, void *a1);

typedef void (*ProtocolHandler)(int, int, void *, void *);
typedef u32 (*ProtocolSizeGetter)(void);
typedef void *(*ProtocolRecordGetter)(int, void *);

typedef struct ProtocolEntry {
    ProtocolHandler unk0;
    ProtocolSizeGetter unk4;
    ProtocolRecordGetter unk8;
} ProtocolEntry;

typedef struct Work {
    BattleSystem *battleSystem;
    u8 unk4;
    u8 pad5[3];
} Work;

typedef struct {
    u32 unk0[13];
} UnkBuf34;

void sub_02074E5C(BattleSystem *battleSystem);
void sub_02074EC4(void *battleSystem);
u32 sub_02074ED8(void);
u32 sub_02074EDC(void);
u32 sub_02074EE4(void);
u32 sub_02074EEC(void);
u32 sub_02074EF4(void);
void *sub_02074EF8(int a0, void *a1);
void *sub_02074F18(int a0, void *a1);
void *sub_02074F38(int a0, void *a1);
void *sub_02074F54(int a0, void *a1);
void *sub_02074F74(int a0, void *a1);
void *sub_02074F7C(int a0, void *a1);
void *sub_02074F84(int a0, void *a1);
void *sub_02074F8C(int a0, void *a1);
void *sub_02074F94(int a0, void *a1);
void sub_02074F9C(BattleSystem *a0, u8 a1, u8 a2, void *a3, u8 a4);
void sub_02075028(int a0, int a1, void *a2, void *a3);
BOOL sub_02075074(void *a0, void *a1, void *a2, void *a3);
void sub_020750B4(int a0, int a1, void *a2, void *a3);
BOOL sub_020750E0(void *a0);
BOOL sub_02075108(void *a0);
void sub_0207513C(int a0, int a1, void *a2, void *a3);
BOOL sub_0207514C(void *a0);
BOOL sub_02075178(void *a0);
void sub_020751A8(int a0, int a1, void *a2, void *a3);
BOOL sub_020751B8(void *a0);
BOOL sub_020751DC(void *a0);
void sub_02075210(int a0, int a1, void *a2, void *a3);
BOOL sub_02075220(void *a0);
BOOL sub_02075248(void *a0);
BOOL sub_0207527C(void *a0);
BOOL sub_020752D8(void *a0);
void sub_0207530C(int a0, int a1, void *a2, void *a3);
BOOL sub_0207531C(void *a0, int a1);
BOOL sub_02075350(void *a0, int a1, u8 a2);
void sub_02075398(int a0, int a1, void *a2, void *a3);
BOOL sub_020753A8(void *a0, int a1);
BOOL sub_020753D4(void *a0, int a1, u8 a2);
void sub_02075424(int a0, int a1, void *a2, void *a3);
void sub_02075434(SysTask *task, void *data);
void sub_020754C0(SysTask *task, void *data);
void sub_02075534(int a0, int a1, void *a2, void *a3);
void sub_02075554(PlayerProfile *a0, void *a1, void *a2);
void sub_020755B4(int a0, int a1, void *a2, void *a3);
u32 sub_020755E4(void);

static const ProtocolEntry _020FFE30[] = {
    { sub_02075534, sub_020342B8,                     NULL         },
    { sub_02075028, sub_020342B8,                     NULL         },
    { sub_020750B4, (ProtocolSizeGetter)sub_02074ED8, NULL         },
    { sub_0207513C, (ProtocolSizeGetter)sub_02074EDC, sub_02074EF8 },
    { sub_020751A8, (ProtocolSizeGetter)sub_02074EF4, sub_02074F18 },
    { sub_02075210, (ProtocolSizeGetter)sub_02074EE4, sub_02074F38 },
    { sub_0207530C, (ProtocolSizeGetter)sub_02074EEC, sub_02074F54 },
    { sub_02075398, (ProtocolSizeGetter)sub_02074EF4, sub_02074F74 },
    { sub_02075398, (ProtocolSizeGetter)sub_02074EF4, sub_02074F7C },
    { sub_02075424, (ProtocolSizeGetter)sub_02074EE4, sub_02074F84 },
    { sub_02075424, (ProtocolSizeGetter)sub_02074EE4, sub_02074F8C },
    { sub_020755B4, (ProtocolSizeGetter)sub_020755E4, sub_02074F94 },
};

void sub_02074E5C(BattleSystem *battleSystem) {
    Work *work_send;
    Work *work_recv;
    if (BattleSystem_GetBattleSpecial(battleSystem) & 0x10) {
        return;
    }
    work_send = Heap_Alloc(HEAP_ID_BATTLE, 8);
    work_recv = Heap_Alloc(HEAP_ID_BATTLE, 8);
    sub_0203410C((void *)_020FFE30, 0xc, battleSystem);
    work_send->battleSystem = battleSystem;
    work_send->unk4 = 0;
    work_recv->battleSystem = battleSystem;
    work_recv->unk4 = 0;
    ov12_0223BBFC(battleSystem, &work_send->unk4);
    ov12_0223BC08(battleSystem, &work_recv->unk4);
    SysTask_CreateOnMainQueue(sub_02075434, work_send, 0);
    SysTask_CreateOnMainQueue(sub_020754C0, work_recv, 0);
}

void sub_02074EC4(void *battleSystem) {
    sub_0203410C((void *)_020FFE30, 0xc, battleSystem);
}

u32 sub_02074ED8(void) {
    return 4;
}

u32 sub_02074EDC(void) {
    return PlayerProfile_sizeof();
}

u32 sub_02074EE4(void) {
    return PartyCore_sizeof();
}

u32 sub_02074EEC(void) {
    return 0xfa << 2;
}

u32 sub_02074EF4(void) {
    return 0x34;
}

void *sub_02074EF8(int a0, void *a1) {
    void *bs = *(void **)a1;
    if (*(u32 *)bs & 0x80) {
        return *(void **)((u8 *)bs + a0 * 8 + 0xf8);
    }
    return *(void **)((u8 *)bs + a0 * 4 + 0xf8);
}

void *sub_02074F18(int a0, void *a1) {
    u8 *bs = *(u8 **)a1;
    if (*(u32 *)bs & 0x80) {
        return (UnkBuf34 *)(bs + 0x28) + a0 * 2;
    }
    return bs + 0x28 + a0 * 0x34;
}

void *sub_02074F38(int a0, void *a1) {
    void *bs = *(void **)a1;
    if (*(u32 *)bs & 0x80) {
        return *(void **)((u8 *)bs + a0 * 8 + 4);
    }
    return *(void **)((u8 *)bs + a0 * 4 + 4);
}

void *sub_02074F54(int a0, void *a1) {
    u8 *bs = *(u8 **)a1;
    if (*(u32 *)bs & 0x80) {
        return *(void **)((u8 *)bs + a0 * 8 + 0x118);
    }
    return *(void **)((u8 *)bs + a0 * 4 + 0x118);
}

void *sub_02074F74(int a0, void *a1) {
    return (u8 *)(*(void **)a1) + 0x5c;
}

void *sub_02074F7C(int a0, void *a1) {
    return (u8 *)(*(void **)a1) + 0xc4;
}

void *sub_02074F84(int a0, void *a1) {
    return *(void **)((u8 *)(*(void **)a1) + 8);
}

void *sub_02074F8C(int a0, void *a1) {
    return *(void **)((u8 *)(*(void **)a1) + 0x10);
}

void *sub_02074F94(int a0, void *a1) {
    return *(void **)((u8 *)a1 + a0 * 4 + 0x10);
}

#ifdef NONMATCHING
void sub_02074F9C(BattleSystem *a0, u8 a1, u8 a2, void *a3, u8 a4) {
    u8 *hdr = Heap_Alloc(HEAP_ID_BATTLE, 4);
    u8 *sendBuf = BattleSystem_GetSendBufferPtr(a0);
    u16 *writeIdx = ov12_0223A960(a0);
    u16 *checkIdx = ov12_0223A96C(a0);
    u32 i;

    if (*writeIdx + 5 + a4 > 0x1000) {
        *checkIdx = *writeIdx;
        *writeIdx = 0;
    }

    hdr[0] = a1;
    hdr[1] = a2;
    *(u16 *)(hdr + 2) = (u16)a4;

    i = 0;
    do {
        sendBuf[*writeIdx] = hdr[i];
        *writeIdx = *writeIdx + 1;
        i++;
    } while (i < 4);

    i = 0;
    if (a4 > 0) {
        do {
            sendBuf[*writeIdx] = ((u8 *)a3)[i];
            *writeIdx = *writeIdx + 1;
            i++;
        } while (i < a4);
    }

    Heap_Free(hdr);
}
#else
// clang-format off
// NONMATCHING: MWCC scheduling/regalloc/block-order tie; transcribed asm.
asm void sub_02074F9C(BattleSystem *a0, u8 a1, u8 a2, void *a3, u8 a4) {
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #0]
	str r1, [sp, #4]
	mov r0, #5
	mov r1, #4
	str r2, [sp, #8]
	add r7, r3, #0
	bl Heap_Alloc
	add r6, r0, #0
	ldr r0, [sp, #0]
	bl BattleSystem_GetSendBufferPtr
	add r5, r0, #0
	ldr r0, [sp, #0]
	bl ov12_0223A960
	add r4, r0, #0
	ldr r0, [sp, #0]
	bl ov12_0223A96C
	mov ip, r0
	add r0, sp, #0x10
	ldrh r3, [r4, #0]
	ldrb r0, [r0, #0x10]
	add r1, r3, #5
	add r2, r1, r0
	mov r1, #1
	lsl r1, r1, #0xc
	cmp r2, r1
	bls _02074FE4
	mov r1, ip
	strh r3, [r1, #0]
	mov r1, #0
	strh r1, [r4, #0]
_02074FE4:
	ldr r1, [sp, #4]
	mov r3, #0
	strb r1, [r6, #0]
	ldr r1, [sp, #8]
	strb r1, [r6, #1]
	add r1, sp, #0x10
	ldrb r1, [r1, #0x10]
	strh r1, [r6, #2]
_02074FF4:
	ldrb r2, [r6, r3]
	ldrh r1, [r4, #0]
	add r3, r3, #1
	strb r2, [r5, r1]
	ldrh r1, [r4, #0]
	add r1, r1, #1
	strh r1, [r4, #0]
	cmp r3, #4
	blo _02074FF4
	mov r3, #0
	cmp r0, #0
	ble _0207501E
_0207500C:
	ldrb r2, [r7, r3]
	ldrh r1, [r4, #0]
	add r3, r3, #1
	strb r2, [r5, r1]
	ldrh r1, [r4, #0]
	add r1, r1, #1
	strh r1, [r4, #0]
	cmp r3, r0
	blt _0207500C
_0207501E:
	add r0, r6, #0
	bl Heap_Free
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
}
// clang-format on
#endif

#ifdef NONMATCHING
void sub_02075028(int a0, int a1, void *a2, void *a3) {
    u8 *recvBuf = BattleSystem_GetRecvBufferPtr((BattleSystem *)a3);
    u16 *writeIdx = ov12_0223A984((BattleSystem *)a3);
    u16 *checkIdx = ov12_0223A990((BattleSystem *)a3);
    int i;

    if (*writeIdx + a1 + 1 > 0x1000) {
        *checkIdx = *writeIdx;
        *writeIdx = 0;
    }

    i = 0;
    if (a1 > 0) {
        do {
            recvBuf[*writeIdx] = ((u8 *)a2)[i];
            *writeIdx = *writeIdx + 1;
            i++;
        } while (i < a1);
    }
}
#else
// clang-format off
// NONMATCHING: MWCC scheduling/regalloc/block-order tie; transcribed asm.
asm void sub_02075028(int a0, int a1, void *a2, void *a3) {
	push {r3, r4, r5, r6, r7, lr}
	str r3, [sp, #0]
	add r0, r3, #0
	add r5, r1, #0
	add r6, r2, #0
	bl BattleSystem_GetRecvBufferPtr
	add r7, r0, #0
	ldr r0, [sp, #0]
	bl ov12_0223A984
	add r4, r0, #0
	ldr r0, [sp, #0]
	bl ov12_0223A990
	ldrh r1, [r4, #0]
	add r2, r1, r5
	add r3, r2, #1
	mov r2, #1
	lsl r2, r2, #0xc
	cmp r3, r2
	ble _0207505A
	strh r1, [r0, #0]
	mov r0, #0
	strh r0, [r4, #0]
_0207505A:
	mov r0, #0
	cmp r5, #0
	ble _02075072
_02075060:
	ldrb r2, [r6, r0]
	ldrh r1, [r4, #0]
	add r0, r0, #1
	strb r2, [r7, r1]
	ldrh r1, [r4, #0]
	add r1, r1, #1
	strh r1, [r4, #0]
	cmp r0, r5
	blt _02075060
_02075072:
	pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on
#endif

#ifdef NONMATCHING
BOOL sub_02075074(void *a0, void *a1, void *a2, void *a3) {
    if (sub_02037190() != 0x42 << 2) {
        return 0;
    }
    if (!sub_02037B38(0x33)) {
        return 0;
    }
    return sub_02037030(0x18, &a1, 4);
}
#else
// clang-format off
// NONMATCHING: MWCC scheduling/regalloc/block-order tie; transcribed asm.
asm BOOL sub_02075074(void *a0, void *a1, void *a2, void *a3) {
	push {r0, r1, r2, r3}
	push {r3, lr}
	bl sub_02037190
	mov r1, #0x42
	lsl r1, r1, #2
	cmp r0, r1
	beq _0207508E
	mov r0, #0
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
_0207508E:
	mov r0, #0x33
	bl sub_02037B38
	cmp r0, #0
	bne _020750A2
	mov r0, #0
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
_020750A2:
	mov r0, #0x18
	add r1, sp, #0xc
	mov r2, #4
	bl sub_02037030
	pop {r3}
	pop {r3}
	add sp, #0x10
	bx r3
}
// clang-format on
#endif

void sub_020750B4(int a0, int a1, void *a2, void *a3) {
    void *chatot = *(void **)a2;
    *(void **)((u8 *)(*(void **)a3) + a0 * 4 + 0x17c) = chatot;
    sub_0203049C(a0, *(void **)((u8 *)(*(void **)a3) + a0 * 4 + 0x17c));
    *(u8 *)((u8 *)a3 + 0x1020) = *(u8 *)((u8 *)a3 + 0x1020) + 1;
}

BOOL sub_020750E0(void *a0) {
    if (sub_02037190() != 0x42 << 2) {
        return 0;
    }
    PlayerProfile_Copy(*(PlayerProfile **)((u8 *)(*(void **)a0) + 0xf8), (PlayerProfile *)((u8 *)a0 + 0x20));
    return 1;
}

BOOL sub_02075108(void *a0) {
    if (sub_02037190() != 0x42 << 2) {
        return 0;
    }
    if (!sub_02037B38(0x34)) {
        return 0;
    }
    sub_02036FD8(0x19, (u8 *)a0 + 0x20, PlayerProfile_sizeof());
}

void sub_0207513C(int a0, int a1, void *a2, void *a3) {
    *(u8 *)((u8 *)a3 + 0x1020) = *(u8 *)((u8 *)a3 + 0x1020) + 1;
}

BOOL sub_0207514C(void *a0) {
    if (sub_02037190() != 0x42 << 2) {
        return 0;
    }
    *(UnkBuf34 *)((u8 *)a0 + 0x20) = *(UnkBuf34 *)((u8 *)(*(void **)a0) + 0x28);
    return 1;
}

BOOL sub_02075178(void *a0) {
    if (sub_02037190() != 0x42 << 2) {
        return 0;
    }
    if (!sub_02037B38(0x35)) {
        return 0;
    }
    sub_02036FD8(0x1a, (u8 *)a0 + 0x20, 0x34);
}

void sub_020751A8(int a0, int a1, void *a2, void *a3) {
    *(u8 *)((u8 *)a3 + 0x1020) = *(u8 *)((u8 *)a3 + 0x1020) + 1;
}

BOOL sub_020751B8(void *a0) {
    if (sub_02037190() != 0x42 << 2) {
        return 0;
    }
    Party_Copy(*(Party **)((u8 *)(*(void **)a0) + 4), (Party *)((u8 *)a0 + 0x20));
    return 1;
}

BOOL sub_020751DC(void *a0) {
    if (sub_02037190() != 0x42 << 2) {
        return 0;
    }
    if (!sub_02037B38(0x36)) {
        return 0;
    }
    sub_02036FD8(0x1b, (u8 *)a0 + 0x20, PartyCore_sizeof());
}

void sub_02075210(int a0, int a1, void *a2, void *a3) {
    *(u8 *)((u8 *)a3 + 0x1020) = *(u8 *)((u8 *)a3 + 0x1020) + 1;
}

BOOL sub_02075220(void *a0) {
    if (sub_02037190() != 0x42 << 2) {
        return 0;
    }
    Chatot_Copy((SOUND_CHATOT *)((u8 *)a0 + 0x20), *(SOUND_CHATOT **)((u8 *)(*(void **)a0) + (0x42 << 2) + 0x10));
    return 1;
}

BOOL sub_02075248(void *a0) {
    if (sub_02037190() != 0x42 << 2) {
        return 0;
    }
    if (!sub_02037B38(0x37)) {
        return 0;
    }
    sub_02036FD8(0x1c, (u8 *)a0 + 0x20, 0xfa << 2);
}

BOOL sub_0207527C(void *a0) {
    void *bs;
    void *profile;
    void *arr;
    int i;
    if (sub_02037190() != 0x42 << 2) {
        return 0;
    }
    bs = *(void **)a0;
    if (*(u32 *)bs & 0x80) {
        profile = *(void **)((u8 *)bs + sub_0203769C() * 8 + 0xf8);
    } else {
        profile = *(void **)((u8 *)bs + sub_0203769C() * 4 + 0xf8);
    }
    arr = *(void **)((u8 *)bs + 0x148);
    sub_02075554((PlayerProfile *)profile, arr, (u8 *)a0 + 0x20);
    for (i = 0; i < 4; i++) {
        *(void **)((u8 *)a0 + 0x10) = Heap_Alloc(HEAP_ID_BATTLE, 0x88);
        a0 = (u8 *)a0 + 4;
    }
    return 1;
}

BOOL sub_020752D8(void *a0) {
    if (sub_02037190() != 0x42 << 2) {
        return 0;
    }
    if (!sub_02037B38(0x38)) {
        return 0;
    }
    sub_02036FD8(0x21, (u8 *)a0 + 0x20, 0xfa << 2);
}

void sub_0207530C(int a0, int a1, void *a2, void *a3) {
    *(u8 *)((u8 *)a3 + 0x1020) = *(u8 *)((u8 *)a3 + 0x1020) + 1;
}

BOOL sub_0207531C(void *a0, int a1) {
    if (sub_02037190() != 0x42 << 2) {
        return 0;
    }
    *(UnkBuf34 *)((u8 *)a0 + 0x20) = *(UnkBuf34 *)((u8 *)(*(void **)a0) + 0x28 + a1 * 0x34);
    return 1;
}

#ifdef NONMATCHING
BOOL sub_02075350(void *a0, int a1, u8 a2) {
    if (sub_02037190() != 0x42 << 2) {
        return 0;
    }
    if (!sub_02037B38(a2)) {
        return 0;
    }
    if (a1 == 1) {
        sub_02036FD8(0x1d, (u8 *)a0 + 0x20, 0x34);
    } else {
        sub_02036FD8(0x1e, (u8 *)a0 + 0x20, 0x34);
    }
}
#else
// clang-format off
// NONMATCHING: MWCC scheduling/regalloc/block-order tie; transcribed asm.
asm BOOL sub_02075350(void *a0, int a1, u8 a2) {
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02037190
	mov r1, #0x42
	lsl r1, r1, #2
	cmp r0, r1
	beq _02075368
	mov r0, #0
	pop {r4, r5, r6, pc}
_02075368:
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	bl sub_02037B38
	cmp r0, #0
	bne _02075378
	mov r0, #0
	pop {r4, r5, r6, pc}
_02075378:
	cmp r4, #1
	bne _0207538A
	add r5, #0x20
	mov r0, #0x1d
	add r1, r5, #0
	mov r2, #0x34
	bl sub_02036FD8
	pop {r4, r5, r6, pc}
_0207538A:
	add r5, #0x20
	mov r0, #0x1e
	add r1, r5, #0
	mov r2, #0x34
	bl sub_02036FD8
	pop {r4, r5, r6, pc}
}
// clang-format on
#endif

void sub_02075398(int a0, int a1, void *a2, void *a3) {
    *(u8 *)((u8 *)a3 + 0x1020) = *(u8 *)((u8 *)a3 + 0x1020) + 1;
}

BOOL sub_020753A8(void *a0, int a1) {
    if (sub_02037190() != 0x42 << 2) {
        return 0;
    }
    Party_Copy(*(Party **)((u8 *)(*(void **)a0) + a1 * 4 + 4), (Party *)((u8 *)a0 + 0x20));
    return 1;
}

#ifdef NONMATCHING
BOOL sub_020753D4(void *a0, int a1, u8 a2) {
    if (sub_02037190() != 0x42 << 2) {
        return 0;
    }
    if (!sub_02037B38(a2)) {
        return 0;
    }
    if (a1 == 1) {
        sub_02036FD8(0x1f, (u8 *)a0 + 0x20, PartyCore_sizeof());
    } else {
        sub_02036FD8(0x20, (u8 *)a0 + 0x20, PartyCore_sizeof());
    }
}
#else
// clang-format off
// NONMATCHING: MWCC scheduling/regalloc/block-order tie; transcribed asm.
asm BOOL sub_020753D4(void *a0, int a1, u8 a2) {
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02037190
	mov r1, #0x42
	lsl r1, r1, #2
	cmp r0, r1
	beq _020753EC
	mov r0, #0
	pop {r4, r5, r6, pc}
_020753EC:
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	bl sub_02037B38
	cmp r0, #0
	bne _020753FC
	mov r0, #0
	pop {r4, r5, r6, pc}
_020753FC:
	cmp r4, #1
	bne _02075412
	bl PartyCore_sizeof
	add r5, #0x20
	add r2, r0, #0
	mov r0, #0x1f
	add r1, r5, #0
	bl sub_02036FD8
	pop {r4, r5, r6, pc}
_02075412:
	bl PartyCore_sizeof
	add r5, #0x20
	add r2, r0, #0
	mov r0, #0x20
	add r1, r5, #0
	bl sub_02036FD8
	pop {r4, r5, r6, pc}
}
// clang-format on
#endif

void sub_02075424(int a0, int a1, void *a2, void *a3) {
    *(u8 *)((u8 *)a3 + 0x1020) = *(u8 *)((u8 *)a3 + 0x1020) + 1;
}

void sub_02075434(SysTask *task, void *data) {
    Work *work = (Work *)data;
    u8 *sendBuf = BattleSystem_GetSendBufferPtr(work->battleSystem);
    u16 *writeIdx = ov12_0223A954(work->battleSystem);
    u16 *syncIdx = ov12_0223A960(work->battleSystem);
    u16 *checkIdx = ov12_0223A96C(work->battleSystem);
    int pktSize;

    switch (work->unk4) {
    case 0:
        if (sub_02037190() == 0x42 << 2) {
            u16 wi = *writeIdx;
            u16 si = *syncIdx;
            if (wi != si) {
                if (wi == *checkIdx) {
                    *writeIdx = 0;
                    *checkIdx = 0;
                }
                pktSize = (sendBuf[*writeIdx + 2] | (sendBuf[*writeIdx + 3] << 8)) + 4;
                if (sub_02037030(0x17, (u8 *)sendBuf + *writeIdx, pktSize) == 1) {
                    *writeIdx = *writeIdx + pktSize;
                    return;
                }
            }
        }
        break;
    case 0xff:
    default:
        Heap_Free(work);
        SysTask_Destroy(task);
        break;
    }
}

void sub_020754C0(SysTask *task, void *data) {
    Work *work = (Work *)data;
    u8 *recvBuf = BattleSystem_GetRecvBufferPtr(work->battleSystem);
    u16 *readIdx = ov12_0223A978(work->battleSystem);
    u16 *writeIdx = ov12_0223A984(work->battleSystem);
    u16 *checkIdx = ov12_0223A990(work->battleSystem);
    int pktSize;

    switch (work->unk4) {
    case 0: {
        u16 ri = *readIdx;
        u16 wi = *writeIdx;
        if (ri != wi) {
            if (ri == *checkIdx) {
                *readIdx = 0;
                *checkIdx = 0;
            }
            if (ov12_02264334(work->battleSystem, recvBuf + *readIdx) == 1) {
                pktSize = (recvBuf[*readIdx + 2] | (recvBuf[*readIdx + 3] << 8)) + 4;
                *readIdx = *readIdx + pktSize;
                return;
            }
        }
    } break;
    case 0xff:
    default:
        Heap_Free(work);
        SysTask_Destroy(task);
        break;
    }
}

void sub_02075534(int a0, int a1, void *a2, void *a3) {
    ov12_0223BC14((BattleSystem *)a3, 0xff);
    ov12_0223BC20((BattleSystem *)a3, 0xff);
    ov12_0223BC2C((BattleSystem *)a3, 1);
}

#ifdef NONMATCHING
void sub_02075554(PlayerProfile *a0, void *a1, void *a2) {
    u8 *dst = (u8 *)a2;
    u8 *src = (u8 *)a1;
    u32 *p;
    int i;

    CopyU16StringArray((u16 *)dst, PlayerProfile_GetNamePtr(a0));
    *(u32 *)(dst + 0x10) = PlayerProfile_GetTrainerID(a0);
    dst[0x14] = PlayerProfile_GetLanguage(a0);
    dst[0x15] = PlayerProfile_GetVersion(a0);
    dst[0x16] = PlayerProfile_GetTrainerGender(a0);

    i = 0;
    p = (u32 *)dst;
    do {
        p[6] = *(u32 *)(src + 0x10);
        dst[0x58 + i] = src[0x15];
        p++;
        dst[0x68 + i] = src[0x14];
        dst[0x78 + i] = src[0x16];
        i++;
        src += 0x88;
    } while (i < 0x10);
}
#else
// clang-format off
// NONMATCHING: MWCC scheduling/regalloc/block-order tie; transcribed asm.
asm void sub_02075554(PlayerProfile *a0, void *a1, void *a2) {
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r6, r0, #0
	add r5, r1, #0
	bl PlayerProfile_GetNamePtr
	add r1, r0, #0
	add r0, r4, #0
	bl CopyU16StringArray
	add r0, r6, #0
	bl PlayerProfile_GetTrainerID
	str r0, [r4, #0x10]
	add r0, r6, #0
	bl PlayerProfile_GetLanguage
	strb r0, [r4, #0x14]
	add r0, r6, #0
	bl PlayerProfile_GetVersion
	strb r0, [r4, #0x15]
	add r0, r6, #0
	bl PlayerProfile_GetTrainerGender
	strb r0, [r4, #0x16]
	mov r0, #0
	add r1, r4, #0
_0207558C:
	ldr r2, [r5, #0x10]
	str r2, [r1, #0x18]
	ldrb r3, [r5, #0x15]
	add r2, r4, r0
	add r2, #0x58
	strb r3, [r2, #0]
	add r2, r4, r0
	ldrb r3, [r5, #0x14]
	add r2, #0x68
	add r1, r1, #4
	strb r3, [r2, #0]
	add r2, r4, r0
	ldrb r3, [r5, #0x16]
	add r2, #0x78
	add r0, r0, #1
	add r5, #0x88
	strb r3, [r2, #0]
	cmp r0, #0x10
	blt _0207558C
	pop {r4, r5, r6, pc}
}
// clang-format on
#endif

void sub_020755B4(int a0, int a1, void *a2, void *a3) {
    if (a0 != (int)sub_0203769C()) {
        SavePalPad_Merge(*(SavePalPad **)((u8 *)(*(void **)a3) + 0x148), (SavePalPad *)a2, 1, HEAP_ID_BATTLE);
    }
    *(u8 *)((u8 *)a3 + 0x1020) = *(u8 *)((u8 *)a3 + 0x1020) + 1;
}

u32 sub_020755E4(void) {
    return 0x88;
}
