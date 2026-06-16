#include "unk_02014A08.h"

#include "sys_task_api.h"

void MI_HBlankDmaCopy32(u32 dmaNo, const void *src, void *dest, u32 count);
void MI_HBlankDmaCopy16(u32 dmaNo, const void *src, void *dest, u32 count);
extern int _s32_div_f(int numer, int denom);

static void sub_02014C60(s16 *dst, u16 count, int step, fx32 amplitude);
static void sub_02014CBC(SysTask *task, void *data);
static void sub_02014D68(void);
static void sub_02014D70(UnkStruct_02014AD8 *self);

UnkStruct_02014A08 *sub_02014A08(enum HeapID heapId, void *buf0, void *buf1) {
    UnkStruct_02014A08 *self = Heap_Alloc(heapId, sizeof(UnkStruct_02014A08));
    memset(self, 0, sizeof(UnkStruct_02014A08));
    self->enabled = 1;
    self->buffers[0] = buf0;
    self->buffers[1] = buf1;
    return self;
}

void sub_02014A38(UnkStruct_02014A08 *self) {
    GF_ASSERT(self != NULL);
    Heap_Free(self);
}

void *sub_02014A4C(UnkStruct_02014A08 *self) {
    GF_ASSERT(self != NULL);
    return self->buffers[self->curBuffer];
}

void *sub_02014A60(UnkStruct_02014A08 *self) {
    GF_ASSERT(self != NULL);
    return self->buffers[1 ^ self->curBuffer];
}

void sub_02014A78(UnkStruct_02014A08 *self, BOOL enabled) {
    GF_ASSERT(self != NULL);
    self->enabled = enabled;
}

void sub_02014A8C(UnkStruct_02014A08 *self) {
    if (self != NULL && self->enabled) {
        self->curBuffer = 1 ^ self->curBuffer;
    }
}

void sub_02014AA0(void) {
    MI_StopDma(0);
    MI_WaitDma(0);
}

void sub_02014AB0(const void *src, void *dst, u32 size, int mode) {
    if (mode == 1) {
        MI_HBlankDmaCopy32(0, src, dst, size);
    } else {
        MI_HBlankDmaCopy16(0, src, dst, size);
    }
}

UnkStruct_02014AD8 *sub_02014AD8(enum HeapID heapId) {
    UnkStruct_02014AD8 *self = Heap_Alloc(heapId, sizeof(UnkStruct_02014AD8));
    memset(self, 0, sizeof(UnkStruct_02014AD8));
    self->doubleBuf = sub_02014A08(heapId, self->buffers, self->buffers + 0x300);
    return self;
}

void sub_02014B08(UnkStruct_02014AD8 *self, u8 startLine, u8 endLine, int step, fx32 amplitude, s16 speed, void *reg, u32 fillValue, u32 priority) {
    GF_ASSERT(self != NULL);
    GF_ASSERT(self->task == NULL);
    self->startLine = startLine;
    self->endLine = endLine;
    self->phase = 0;
    self->speed = speed;
    self->unk_790 = reg;
    self->fillValue = fillValue;
    sub_02014C60(self->sineTable, 0xC0, step, amplitude);
    self->task = SysTask_CreateOnMainQueue(sub_02014CBC, self, priority);
    MI_CpuFill32(self->buffers, self->fillValue, 0x300);
    MI_CpuFill32(self->buffers + 0x300, self->fillValue, 0x300);
}

void sub_02014B9C(UnkStruct_02014AD8 *self) {
    GF_ASSERT(self != NULL);
    if (self->task != NULL) {
        SysTask_Destroy(self->task);
        self->task = NULL;
        memset(sub_02014A4C(self->doubleBuf), self->fillValue, 0x300);
    }
}

void sub_02014BD8(UnkStruct_02014AD8 *self) {
    sub_02014B9C(self);
    sub_02014D68();
    sub_02014A38(self->doubleBuf);
    Heap_Free(self);
}

void *sub_02014BF8(UnkStruct_02014AD8 *self) {
    return sub_02014A4C(self->doubleBuf);
}

void sub_02014C08(UnkStruct_02014AD8 *self) {
    if (self != NULL && self->task != NULL) {
        void *buffer;
        sub_02014A8C(self->doubleBuf);
        buffer = sub_02014A4C(self->doubleBuf);
        MI_CpuFill32(buffer, self->fillValue, 0x300);
    }
}

void sub_02014C40(UnkStruct_02014AD8 *self) {
    if (self != NULL && self->task != NULL) {
        sub_02014D68();
        sub_02014D70(self);
    }
}

static void sub_02014C60(s16 *dst, u16 count, int step, fx32 amplitude) {
    u16 angle = 0;
    u32 i;
    for (i = 0; i < count; i++) {
        *dst = FX_Mul(FX_SinIdx(angle), amplitude) >> FX32_SHIFT;
        angle += step;
        dst++;
    }
}

#ifdef NONMATCHING
static void sub_02014CBC(SysTask *task, void *data) {
    UnkStruct_02014AD8 *self = data;
    u32 *buffer = sub_02014A4C(self->doubleBuf);
    u8 idx = self->phase / 100;
    int line = self->startLine;

    if (line <= self->endLine) {
        buffer += line;
        do {
            u32 v = *buffer;
            s16 newLow = (s16)v + self->sineTable[idx];
            *buffer++ = (u16)newLow | ((u16)(v >> 16) << 16);
            idx = (idx + 1) % 0xC0;
            line++;
        } while (line <= self->endLine);
    }

    self->phase += self->speed;
    if (self->phase >= 19200) {
        self->phase %= 19200;
    } else if (self->phase < 0) {
        self->phase += 19200;
    }
}
#else
// MWCC schedules the high-halfword extraction into the load-delay slot after the
// sineTable read; the retail build computes newLow first. Same instructions, but
// the order cannot be coerced from C. Kept as asm to match.
// clang-format off
static asm void sub_02014CBC(SysTask *task, void *data) {
    push {r3, r4, r5, r6, r7, lr}
    mov r0, #6
    add r6, r1, #0
    lsl r0, r0, #8
    ldr r0, [r6, r0]
    bl sub_02014A4C
    add r5, r0, #0
    ldr r0, =0x00000798
    mov r1, #100
    ldrsh r0, [r6, r0]
    bl _s32_div_f
    lsl r0, r0, #24
    lsr r3, r0, #24
    ldr r0, =0x0000078C
    ldrb r4, [r6, r0]
    add r0, r0, #1
    ldrb r0, [r6, r0]
    cmp r4, r0
    bgt _02014D24
    lsl r0, r4, #2
    add r5, r5, r0
_02014CEA:
    ldr r2, [r5, #0]
    lsl r0, r2, #16
    asr r7, r0, #16
    lsl r0, r3, #1
    add r1, r6, r0
    ldr r0, =0x0000060C
    ldrsh r0, [r1, r0]
    add r0, r7, r0
    lsl r0, r0, #16
    asr r1, r0, #16
    lsr r0, r2, #16
    lsl r0, r0, #16
    lsr r0, r0, #16
    lsl r1, r1, #16
    lsl r0, r0, #16
    lsr r1, r1, #16
    orr r0, r1
    stmia r5!, {r0}
    add r0, r3, #1
    mov r1, #192
    bl _s32_div_f
    lsl r0, r1, #24
    lsr r3, r0, #24
    ldr r0, =0x0000078D
    add r4, r4, #1
    ldrb r0, [r6, r0]
    cmp r4, r0
    ble _02014CEA
_02014D24:
    ldr r1, =0x00000798
    add r0, r1, #2
    ldrsh r2, [r6, r1]
    ldrsh r0, [r6, r0]
    add r4, r6, r1
    add r0, r2, r0
    strh r0, [r4]
    ldrsh r0, [r6, r1]
    mov r1, #75
    lsl r1, r1, #8
    cmp r0, r1
    blt _02014D48
    mov r0, #0
    ldrsh r0, [r4, r0]
    bl _s32_div_f
    strh r1, [r4]
    pop {r3, r4, r5, r6, r7, pc}
_02014D48:
    cmp r0, #0
    bge _02014D54
    mov r0, #0
    ldrsh r0, [r4, r0]
    add r0, r0, r1
    strh r0, [r4]
_02014D54:
    pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on
#endif

static void sub_02014D68(void) {
    sub_02014AA0();
}

static void sub_02014D70(UnkStruct_02014AD8 *self) {
    void *buffer;
    GF_ASSERT(self != NULL);
    buffer = sub_02014A60(self->doubleBuf);
    DC_FlushRange(buffer, 0x300);
    sub_02014AB0(buffer, self->unk_790, 4, 1);
}
