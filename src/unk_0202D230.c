#include "unk_0202D230.h"

#include "error_handling.h"
#include "heap.h"
#include "mail_message.h"
#include "msgdata.h"
#include "unk_02030A98.h"

struct FrontierData {
    /* 0x00 */ u8 unk_00;
    /* 0x01 */ u8 unk_01;
    /* 0x02 */ u8 unk_02;
    /* 0x03 */ u8 unk_03;
    /* 0x04 */ u16 unk_04;
    /* 0x06 */ u16 unk_06;
    /* 0x08 */ u16 unk_08;
    /* 0x0A */ u16 unk_0A[6];
    /* 0x16 */ u16 unk_16;
    /* 0x18 */ u8 unk_18[0xA8];
    /* 0xC0 */ u8 unk_C0[0xA8];
}; // size 0x168

typedef union {
    u8 raw;
    struct {
        u8 b0 : 1;
        u8 b1 : 1;
        u8 b2_4 : 3;
        u8 b5_7 : 3;
    } bits;
} FrontierFlags;

int sub_0202D230(void);
void sub_0202D240(FrontierData *a0);
void sub_0202D254(MailMessage *a0);
void sub_0202D274(void *a0);
u8 sub_0202D568(FrontierData *frontierData);
void sub_0202D638(FrontierData *a0, u32 a1);
u32 sub_0202D63C(FrontierData *a0);
void sub_0202D678(void *a0, u32 a1, u32 a2, const u32 *a3);
void sub_0202D6DC(void *a0);
BOOL sub_0202D6F8(const void *a0, const void *a1);
u32 sub_0202D720(void *a0, u32 a1, u32 a2, void *a3);
void sub_0202D7C0(void *a0, const void *a1, u8 a2, u8 a3);
void sub_0202D7F0(void *a0, u8 *a1);
void sub_0202D804(void *a0, void *a1, u32 a2);
void sub_0202D8A4(void *a0, const void *a1, u8 a2, u8 a3);
void *sub_0202D8E4(void *a0, enum HeapID a1);

static const MailMessageTemplate sMailTemplates[4] = {
    { 0, 0, { 4, -1 }, { 0x0007, 0x0000 } },
    { 1, 0, { 4, -1 }, { 0x0021, 0x0000 } },
    { 2, 0, { 8, -1 }, { 0x000A, 0x0000 } },
    { 1, 4, { 4, -1 }, { 0x0001, 0x0000 } },
};

int sub_0202D230(void) {
    return 0xE4;
}

void sub_0202D234(u32 a0) {
    MI_CpuFill8((void *)a0, 0, 0x3C);
}

void sub_0202D240(FrontierData *a0) {
    MI_CpuFill8(a0, 0, 0x168);
    a0->unk_03 = 1;
}

void sub_0202D254(MailMessage *a0) {
    const MailMessageTemplate *t = sMailTemplates;
    int i;
    for (i = 0; i < 4; i++) {
        MailMsg_Init_FromTemplate(a0, t);
        t++;
        a0++;
    }
}

void sub_0202D274(void *a0) {
    MI_CpuFill8(a0, 0, 0xB3C);
}

u32 sub_0202D284(u32 a0, u32 a1, void *a2) {
    u8 *p = (u8 *)a0;
    switch (a1) {
    case 0:
        return ((u32)p[0] << 27) >> 29;
    case 1:
        return p[2];
    case 2:
        return p[3];
    case 3:
        return *(u16 *)(p + 4);
    case 4:
        return *(u16 *)(p + 6);
    case 5:
        MI_CpuCopy8(p + 8, a2, 4);
        return 0;
    case 6:
        MI_CpuCopy8(p + 0x2C, a2, 0x10);
        return 0;
    case 7:
        return ((FrontierFlags *)p)->bits.b0;
    case 8:
        MI_CpuCopy8(p + 0xC, a2, 0x1C);
        return 0;
    case 9:
        return ((u32)p[0] << 24) >> 29;
    case 10:
        return *(u32 *)(p + 0x28);
    }
    return 0;
}

void sub_0202D308(u32 a0, u32 a1, void *a2) {
    u8 *p = (u8 *)a0;
    switch (a1) {
    case 0:
        p[0] = (p[0] & ~0x1C) | (((u32) * (u8 *)a2 << 29) >> 27);
        break;
    case 1:
        p[2] = *(u8 *)a2;
        break;
    case 2:
        p[3] = *(u8 *)a2;
        break;
    case 3:
        *(u16 *)(p + 4) = *(u16 *)a2;
        break;
    case 4:
        *(u16 *)(p + 6) = *(u16 *)a2;
        break;
    case 5:
        MI_CpuCopy8(a2, p + 8, 4);
        break;
    case 6:
        MI_CpuCopy8(a2, p + 0x2C, 0x10);
        break;
    case 7:
        p[0] = (p[0] & ~1) | (*(u8 *)a2 & 1);
        break;
    case 8:
        MI_CpuCopy8(a2, p + 0xC, 0x1C);
        break;
    case 10:
        *(u32 *)(p + 0x28) = *(u32 *)a2;
        break;
    case 9:
        p[0] = (p[0] & ~0xE0) | (((u32) * (u8 *)a2 << 29) >> 24);
        break;
    }
}

void sub_0202D3B0(u32 a0, u8 a1, u32 a2, u32 a3) {
    u8 *p = (u8 *)a0;
    int v;
    v = p[3] + a1;
    if (v < 0xFF) {
        p[3] = v;
    }
    v = *(u16 *)(p + 4) + a2;
    if (v < 0xFFFF) {
        *(u16 *)(p + 4) = v;
    }
    v = *(u16 *)(p + 6) + a3;
    if (v < 0xFFFF) {
        *(u16 *)(p + 6) = v;
    }
}

#ifdef NONMATCHING
u32 sub_0202D3DC(void) {
    // reads the implicit r0 passed through from the caller (declared (void))
    return 0;
}
#else
// clang-format off
asm u32 sub_0202D3DC(void) {
    ldrb r0, [r0, #0]
    lsl r0, r0, #0x1e
    lsr r0, r0, #0x1f
    bx lr
}
// clang-format on
#endif

void sub_0202D3E4(u32 a0, u32 a1) {
    u8 *p = (u8 *)a0;
    p[0] = (p[0] & ~2) | (((u32)(u8)a1 << 31) >> 30);
}

u32 FrontierData_BattlePointAction(FrontierData *frontierData, u32 param, u32 action) {
    u16 *bp = (u16 *)frontierData; // BP counter is a u16 at offset 0
    switch (action) {
    case 1:
        if (param > 0x270F) {
            *bp = 0x270F;
        } else {
            *bp = param;
        }
        break;
    case 5: {
        int v = *bp + param;
        if (v > 0x270F) {
            *bp = 0x270F;
        } else {
            *bp = v;
        }
        break;
    }
    case 6:
        if (*bp < param) {
            *bp = 0;
        } else {
            *bp = *bp - param;
        }
        break;
    case 0:
    case 2:
    case 3:
    case 4:
        break;
    }
    return *bp;
}

u32 sub_0202D450(FrontierData *frontierData, u32 a1) {
    switch (a1) {
    case 2:
        frontierData->unk_02 = 0;
        frontierData->unk_08 &= ~0x10;
        break;
    case 3:
        if (((u32)frontierData->unk_08 << 27) >> 31) {
            frontierData->unk_02++;
        } else {
            frontierData->unk_02 = 1;
            frontierData->unk_08 |= 0x10;
        }
        break;
    }
    return frontierData->unk_02;
}

u32 sub_0202D488(FrontierData *frontierData, u32 a1) {
    switch (a1) {
    case 2:
        frontierData->unk_03 = 1;
        break;
    case 3:
        if (frontierData->unk_03 < 0xA) {
            frontierData->unk_03++;
        }
        break;
    case 4:
        if (frontierData->unk_03 > 1) {
            frontierData->unk_03--;
        }
        break;
    }
    return frontierData->unk_03;
}

void sub_0202D4B8(FrontierData *frontierData, u32 a1, void *a2) {
    if (a1 == 0) {
        MI_CpuCopy8(a2, frontierData->unk_C0, 0xA8);
    } else {
        MI_CpuCopy8(a2, frontierData->unk_18, 0xA8);
    }
}

void sub_0202D4DC(FrontierData *frontierData, s32 a1, UnkStruct_02069528 *a2) {
    if (a1 == 0) {
        MI_CpuCopy8(frontierData->unk_C0, a2, 0xA8);
    } else {
        MI_CpuCopy8(frontierData->unk_18, a2, 0xA8);
    }
}

u16 sub_0202D4FC(FrontierData *frontierData, u32 a1) {
    u8 *q = (u8 *)a1;
    u16 r4 = (q[2] - 1) * 1000;
    u16 r5;
    u16 r1v;
    int sum = (u16)(10 * *(u16 *)(q + 4)) + (u16)(20 * q[3]);
    if (sum > 950) {
        r5 = 0;
    } else {
        r5 = 950 - sum;
    }
    if (*(u16 *)(q + 6) > 0x3CA) {
        r1v = 0;
    } else {
        r1v = (1000 - *(u16 *)(q + 6)) / 30;
    }
    {
        u16 score = r4 + r5 + r1v;
        frontierData->unk_16 = score;
        return score;
    }
}

#ifdef NONMATCHING
s16 sub_0202D564(FrontierData *frontierData) {
    return frontierData->unk_16;
}
#else
// clang-format off
// s16 return makes MWCC sign-extend (ldrsh + register offset); retail returns
// the value zero-extended via a plain ldrh with immediate offset.
asm s16 sub_0202D564(FrontierData *frontierData) {
    ldrh r0, [r0, #0x16]
    bx lr
}
// clang-format on
#endif

u8 sub_0202D568(FrontierData *frontierData) {
    return frontierData->unk_16 / 1000;
}

u32 sub_0202D57C(void *a0, u32 a1, u32 a2) {
    FrontierData *fd = (FrontierData *)a0;
    if (a1 == 5) {
        return 0;
    }
    if (a1 == 6) {
        a1 = 5;
    }
    switch (a2) {
    case 2:
        fd->unk_0A[a1] = 0;
        break;
    case 3:
        if (fd->unk_0A[a1] < 0xFFFE) {
            fd->unk_0A[a1]++;
        }
        break;
    }
    return fd->unk_0A[a1];
}

u32 sub_0202D5C4(FrontierData *frontierData, u32 a1, u16 a2) {
    if (a1 == 5) {
        return 0;
    }
    if (a1 == 6) {
        a1 = 5;
    }
    frontierData->unk_0A[a1] = a2;
    return frontierData->unk_0A[a1];
}

#ifdef NONMATCHING
u32 sub_0202D5DC(FrontierData *frontierData, u16 a1, u32 a2) {
    u32 mask = 1;
    u16 i;
    if (a1 >= 0x10) {
        GF_AssertFail();
        return 0;
    }
    for (i = 0; i < a1; i++) {
        mask = (u16)(mask << 1);
    }
    switch (a2) {
    case 0:
        return (frontierData->unk_08 >> a1) & 1;
    case 1:
        frontierData->unk_08 |= mask;
        break;
    case 2:
        frontierData->unk_08 &= (0xFFFF ^ mask);
        break;
    }
    return 0;
}
#else
// clang-format off
// mode dispatch lays out the clear (fall-through) / set / get bodies in an order
// MWCC won't reproduce from a source-order switch.
asm u32 sub_0202D5DC(FrontierData *frontierData, u16 a1, u32 a2) {
    push {r4, lr}
    mov r3, #1
    cmp r1, #0x10
    blo _0202D5EC
    bl GF_AssertFail
    mov r0, #0
    pop {r4, pc}
_0202D5EC:
    mov r4, #0
    cmp r1, #0
    bls _0202D600
_0202D5F2:
    add r4, r4, #1
    lsl r4, r4, #0x10
    lsl r3, r3, #0x11
    lsr r4, r4, #0x10
    lsr r3, r3, #0x10
    cmp r4, r1
    blo _0202D5F2
_0202D600:
    cmp r2, #0
    beq _0202D624
    cmp r2, #1
    beq _0202D61C
    cmp r2, #2
    bne _0202D630
    ldr r1, =0x0000FFFF
    eor r1, r3
    lsl r1, r1, #0x10
    lsr r2, r1, #0x10
    ldrh r1, [r0, #8]
    and r1, r2
    strh r1, [r0, #8]
    b _0202D630
_0202D61C:
    ldrh r1, [r0, #8]
    orr r1, r3
    strh r1, [r0, #8]
    b _0202D630
_0202D624:
    ldrh r0, [r0, #8]
    add r2, r0, #0
    asr r2, r1
    mov r0, #1
    and r0, r2
    pop {r4, pc}
_0202D630:
    mov r0, #0
    pop {r4, pc}
}
// clang-format on
#endif

void sub_0202D638(FrontierData *a0, u32 a1) {
    *(u32 *)&a0->unk_04 = a1;
}

u32 sub_0202D63C(FrontierData *a0) {
    return *(u32 *)&a0->unk_04;
}

void sub_0202D640(SaveData *saveData, int a1, MailMessage *mailMessage) {
    FrontierSave *fs = Save_Frontier_GetStatic(saveData);
    MailMessage *mail = (MailMessage *)((u8 *)fs + 0xABC);
    MailMsg_Copy(&mail[a1], mailMessage);
}

MailMessage *sub_0202D660(SaveData *saveData, u32 a1) {
    FrontierSave *fs = Save_Frontier_GetStatic(saveData);
    MailMessage *mail = (MailMessage *)((u8 *)fs + 0xABC);
    return &mail[a1];
}

#ifdef NONMATCHING
void sub_0202D678(void *a0, u32 a1, u32 a2, const u32 *a3) {
    u8 *p = (u8 *)a0;
    if (a2 != 0 && a2 <= 0xC8 && a1 != 0 && a1 <= 0xA) {
        u16 idx = (a2 - 1) + (a1 - 1) * 0xC8;
        p[4 + (idx >> 3)] |= 1 << (idx & 7);
        *(u32 *)p = (a3[0] << 24) | ((a3[1] << 24) >> 8) | ((a3[2] << 24) >> 16) | a3[3];
    }
}
#else
// clang-format off
// signed-modulo-by-8 ror idiom on a u16 index + manual byte packing; not
// recoverable from C without MWCC reordering.
asm void sub_0202D678(void *a0, u32 a1, u32 a2, const u32 *a3) {
    push {r3, r4, r5, r6}
    add r4, r3, #0
    mov r3, #1
    cmp r2, #0
    beq _0202D6D8
    cmp r2, #0xc8
    bhi _0202D6D8
    cmp r1, #0
    beq _0202D6D8
    cmp r1, #0xa
    bhi _0202D6D8
    sub r5, r2, #1
    sub r2, r1, #1
    mov r1, #0xc8
    mul r1, r2
    add r1, r5, r1
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    lsr r6, r1, #0x1f
    lsl r5, r1, #0x1d
    sub r5, r5, r6
    mov r2, #0x1d
    ror r5, r2
    add r2, r6, r5
    lsl r2, r2, #0x18
    lsr r2, r2, #0x18
    lsl r3, r2
    lsl r2, r3, #0x18
    lsl r1, r1, #0x15
    lsr r5, r2, #0x18
    add r3, r0, #4
    lsr r2, r1, #0x18
    ldrb r1, [r3, r2]
    orr r1, r5
    strb r1, [r3, r2]
    ldr r3, [r4, #0]
    ldr r1, [r4, #8]
    lsl r5, r3, #0x18
    ldr r3, [r4, #4]
    lsl r1, r1, #0x18
    lsl r3, r3, #0x18
    lsr r3, r3, #8
    ldr r2, [r4, #0xc]
    lsr r1, r1, #0x10
    orr r3, r5
    orr r1, r3
    orr r1, r2
    str r1, [r0, #0]
_0202D6D8:
    pop {r3, r4, r5, r6}
    bx lr
}
// clang-format on
#endif

void sub_0202D6DC(void *a0) {
    u8 *p = (u8 *)a0;
    MI_CpuFill8(p + 4, 0, 0xFA);
    MI_CpuFill8(p, 0, 4);
}

BOOL sub_0202D6F8(const void *a0, const void *a1) {
    const u32 *x = (const u32 *)a0;
    const u32 *y = (const u32 *)a1;
    if (x[0] > y[0]) {
        return TRUE;
    }
    if (x[1] > y[1]) {
        return TRUE;
    }
    if (x[2] > y[2]) {
        return TRUE;
    }
    return FALSE;
}

#ifdef NONMATCHING
u32 sub_0202D720(void *a0, u32 a1, u32 a2, void *a3) {
    u8 *p = (u8 *)a0;
    u32 tmp[4];
    if (a2 > 0xC8 || a1 > 0xA) {
        return 0;
    }
    {
        u32 v = *(u32 *)p;
        tmp[0] = (v >> 0x18) & 0xFF;
        tmp[1] = (v >> 0x10) & 0xFF;
        tmp[2] = (v >> 8) & 0xFF;
        tmp[3] = v & 0xFF;
    }
    if (sub_0202D6F8(a3, tmp)) {
        sub_0202D6DC(p);
        return 0;
    }
    {
        u16 idx = (a2 - 1) + (a1 - 1) * 0xC8;
        if (p[4 + (idx >> 3)] & (1 << (idx & 7))) {
            return 1;
        }
    }
    return 0;
}
#else
// clang-format off
// byte-splat onto stack + signed-modulo-by-8 ror idiom; uses the pushed r3 slot
// as scratch, not source-recoverable.
asm u32 sub_0202D720(void *a0, u32 a1, u32 a2, void *a3) {
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #0x10
    add r6, r2, #0
    add r5, r0, #0
    add r4, r1, #0
    mov r7, #1
    cmp r6, #0xc8
    bhi _0202D734
    cmp r4, #0xa
    bls _0202D73A
_0202D734:
    add sp, #0x10
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
_0202D73A:
    ldr r0, [r5, #0]
    lsr r1, r0, #0x18
    lsl r1, r1, #0x18
    lsr r1, r1, #0x18
    str r1, [sp, #0]
    lsr r1, r0, #0x10
    lsl r1, r1, #0x18
    lsr r1, r1, #0x18
    str r1, [sp, #4]
    lsr r1, r0, #8
    lsl r1, r1, #0x18
    lsl r0, r0, #0x18
    lsr r1, r1, #0x18
    lsr r0, r0, #0x18
    str r1, [sp, #8]
    str r0, [sp, #0xc]
    add r0, r3, #0
    add r1, sp, #0
    bl sub_0202D6F8
    cmp r0, #0
    beq _0202D772
    add r0, r5, #0
    bl sub_0202D6DC
    add sp, #0x10
    mov r0, #0
    pop {r3, r4, r5, r6, r7, pc}
_0202D772:
    sub r1, r4, #1
    mov r0, #0xc8
    mul r0, r1
    sub r2, r6, #1
    add r0, r2, r0
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    lsr r3, r0, #0x1f
    lsl r2, r0, #0x1d
    lsl r0, r0, #0x15
    lsr r0, r0, #0x18
    add r0, r5, r0
    sub r2, r2, r3
    mov r1, #0x1d
    ror r2, r1
    add r1, r3, r2
    lsl r1, r1, #0x18
    lsr r1, r1, #0x18
    add r2, r7, #0
    lsl r2, r1
    lsl r1, r2, #0x18
    ldrb r0, [r0, #4]
    lsr r1, r1, #0x18
    tst r0, r1
    beq _0202D7AA
    add sp, #0x10
    add r0, r7, #0
    pop {r3, r4, r5, r6, r7, pc}
_0202D7AA:
    mov r0, #0
    add sp, #0x10
    pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on
#endif

u32 sub_0202D7B0(u32 a0) {
    return ((u8 *)a0)[0xFE];
}

u32 sub_0202D7B8(u32 a0) {
    return ((u8 *)a0)[0xFF];
}

void sub_0202D7C0(void *a0, const void *a1, u8 a2, u8 a3) {
    u8 *p = (u8 *)a0;
    MI_CpuCopy8(a1, p + 0x104, 0x63C);
    p[0x101] = a2;
    p[0x100] = a3;
    p[0xFE] = 1;
}

void sub_0202D7F0(void *a0, u8 *a1) {
    u8 *p = (u8 *)a0;
    a1[0] = p[0x101];
    a1[1] = p[0x100];
}

#ifdef NONMATCHING
void sub_0202D804(void *a0, void *a1, u32 a2) {
    u8 *base = (u8 *)a0 + 0x104;
    u32 off = a2 * 0xE4;
    u8 *out = (u8 *)a1;
    *(u32 *)out = 0x2710;
    *(u16 *)(out + 4) = base[off + 0xC9];
    if (((u32)base[off + 0xC8] << 31) >> 31) {
        MsgData *msgData = NewMsgDataFromNarc((MsgDataLoadType)0, (NarcId)0x1B, 0x1C, (enum HeapID)0xB);
        ReadMsgDataIntoU16Array(msgData, (((u32)base[off + 0xC8] << 30) >> 31) + 0x21, (u16 *)(out + 8));
        DestroyMsgData(msgData);
    } else {
        MI_CpuCopy8(base + off + 0xA8, out + 8, 0x10);
    }
    MI_CpuCopy8(base + off + 0xCA, out + 0x18, 8);
    MI_CpuCopy8(base + off + 0xD2, out + 0x20, 8);
    MI_CpuCopy8(base + off + 0xDA, out + 0x28, 8);
    MI_CpuCopy8(base + off, out + 0x30, 0xA8);
}
#else
// clang-format off
// retail recomputes the record base (r5+r4) before every field access rather
// than caching it; uses the pushed r3 slot to stash the MsgData handle.
asm void sub_0202D804(void *a0, void *a1, u32 a2) {
    push {r3, r4, r5, r6, r7, lr}
    add r6, r1, #0
    mov r1, #0x41
    lsl r1, r1, #2
    add r5, r0, r1
    mov r0, #0xe4
    add r4, r2, #0
    mul r4, r0
    ldr r0, =0x00002710
    add r7, r6, #0
    str r0, [r6, #0]
    add r0, r5, r4
    add r0, #0xc9
    ldrb r0, [r0, #0]
    add r7, #0x30
    strh r0, [r6, #4]
    add r0, r5, r4
    add r0, #0xc8
    ldrb r0, [r0, #0]
    lsl r0, r0, #0x1f
    lsr r0, r0, #0x1f
    beq _0202D85A
    mov r0, #0
    mov r1, #0x1b
    mov r2, #0x1c
    mov r3, #0xb
    bl NewMsgDataFromNarc
    add r1, r5, r4
    add r1, #0xc8
    ldrb r1, [r1, #0]
    add r2, r6, #0
    str r0, [sp, #0]
    lsl r1, r1, #0x1e
    lsr r1, r1, #0x1f
    add r1, #0x21
    add r2, #8
    bl ReadMsgDataIntoU16Array
    ldr r0, [sp, #0]
    bl DestroyMsgData
    b _0202D868
_0202D85A:
    add r0, r5, r4
    add r1, r6, #0
    add r0, #0xa8
    add r1, #8
    mov r2, #0x10
    bl MI_CpuCopy8
_0202D868:
    add r0, r5, r4
    add r1, r6, #0
    add r0, #0xca
    add r1, #0x18
    mov r2, #8
    bl MI_CpuCopy8
    add r0, r5, r4
    add r1, r6, #0
    add r0, #0xd2
    add r1, #0x20
    mov r2, #8
    bl MI_CpuCopy8
    add r0, r5, r4
    add r6, #0x28
    add r0, #0xda
    add r1, r6, #0
    mov r2, #8
    bl MI_CpuCopy8
    add r0, r5, r4
    add r1, r7, #0
    mov r2, #0xa8
    bl MI_CpuCopy8
    pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on
#endif

void sub_0202D8A4(void *a0, const void *a1, u8 a2, u8 a3) {
    u8 *p = (u8 *)a0;
    MI_CpuCopy8(a1, p + 0x740, 0x3FC);
    p[0x103] = a2;
    p[0x102] = a3;
    p[0xFF] = 1;
}

void sub_0202D8D0(u32 a0, u8 *a1) {
    u8 *p = (u8 *)a0;
    a1[0] = p[0x103];
    a1[1] = p[0x102];
}

void *sub_0202D8E4(void *a0, enum HeapID a1) {
    void *ptr = Heap_Alloc(a1, 0x3FC);
    MI_CpuCopy8((u8 *)a0 + 0x740, ptr, 0x3FC);
    return ptr;
}

u32 sub_0202D908(SaveData *saveData) {
    return (u32)((u8 *)Save_Frontier_GetStatic(saveData) + 0x8E0);
}

FrontierData *Save_FrontierData_Get(SaveData *saveData) {
    return (FrontierData *)((u8 *)Save_Frontier_GetStatic(saveData) + 0x954);
}

u32 sub_0202D928(SaveData *saveData) {
    return (u32)((u8 *)Save_Frontier_GetStatic(saveData) + 0xADC);
}
