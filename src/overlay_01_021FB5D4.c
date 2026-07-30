#include "global.h"

#include "constants/heap.h"
#include "constants/sndseq.h"

#include "heap.h"
#include "overlay_01_021FB4C0_internal.h"
#include "sys_task_api.h"
#include "unk_02005D10.h"
#include "unk_02014A08.h"

void G3X_SetHOffset(int offset);

void *ov01_021FB5D4(enum HeapID heapId, void *manager);
void ov01_021FB610(void *work);
void FieldSystem_DoPoisonEffect(void *data);

typedef struct {
    u32 state;
    s32 counter;
    u32 stage;
    u16 tableA[0xC0];
    u16 tableB[0xC0];
    UnkStruct_02014A08 *unk30C;
    UnkStruct_Ov01_021FB4C0 *manager;
    UnkStruct_Ov01_021FB4C0_sub *slot;
    u32 unk318;
    SysTask *unk31C;
    SysTask *unk320;
    SysTask *unk324;
} UnkStruct_Ov01_021FB5D4;

static void ov01_021FB6C4(SysTask *task, void *data);
static void ov01_021FB750(UnkStruct_Ov01_021FB5D4 *work);
static void ov01_021FB788(u16 *table, int num, int denom);
static void ov01_021FB7CC(SysTask *task, void *data);
static void ov01_021FB7DC(void *param0, void *param1);
static void ov01_021FB7E8(void *data);
static void ov01_021FB800(SysTask *task, void *data);
static void ov01_021FB80C(void *data);
static void ov01_021FB82C(UnkStruct_Ov01_021FB5D4 *work);

void *ov01_021FB5D4(enum HeapID heapId, void *manager) {
    UnkStruct_Ov01_021FB5D4 *work = Heap_Alloc(heapId, sizeof(UnkStruct_Ov01_021FB5D4));
    memset(work, 0, sizeof(UnkStruct_Ov01_021FB5D4));
    work->state = 0;
    work->unk30C = sub_02014A08(heapId, work->tableA, work->tableB);
    work->manager = manager;
    return work;
}

void ov01_021FB610(void *data) {
    UnkStruct_Ov01_021FB5D4 *work = data;
    if (work->state == 1) {
        ov01_021FB82C(work);
    }
    sub_02014A38(work->unk30C);
    Heap_Free(work);
}

void FieldSystem_DoPoisonEffect(void *data) {
    UnkStruct_Ov01_021FB5D4 *work = data;
    GF_ASSERT(work->state == 0);
    work->slot = ov01_021FB530(work->manager, ov01_021FB7DC, work);
    work->unk31C = SysTask_CreateOnMainQueue(ov01_021FB6C4, work, 0x400);
    work->unk320 = SysTask_CreateOnVBlankQueue(ov01_021FB7CC, work, 0x400);
    work->unk324 = SysTask_CreateOnVBlankQueue(ov01_021FB800, work, 0x400);
    memset(work->tableA, 0, sizeof(work->tableA));
    memset(work->tableB, 0, sizeof(work->tableB));
    work->state = 1;
    work->stage = 0;
    PlaySE(SEQ_SE_DP_DOKU2);
}

static void ov01_021FB6C4(SysTask *task, void *data) {
    UnkStruct_Ov01_021FB5D4 *work = data;
    switch (work->stage) {
    case 0:
        work->counter = 3;
        work->stage++;
        break;
    case 1:
        work->counter--;
        ov01_021FB788(sub_02014A4C(work->unk30C), 3 - work->counter, 3);
        if (work->counter <= 0) {
            work->counter = 3;
            work->stage++;
        }
        break;
    case 2:
        work->counter--;
        ov01_021FB788(sub_02014A4C(work->unk30C), work->counter, 3);
        if (work->counter <= 0) {
            work->stage++;
        }
        break;
    case 3:
        ov01_021FB82C(work);
        G3X_SetHOffset(0);
        break;
    }
}

static void ov01_021FB750(UnkStruct_Ov01_021FB5D4 *work) {
    int vcount = reg_GX_VCOUNT;
    u16 *table = sub_02014A60(work->unk30C);
    if (vcount >= 0xC0) {
        return;
    }
    int line = vcount + 1;
    if (line >= 0xC0) {
        line -= 0xC0;
    }
    if (reg_GX_DISPSTAT & REG_GX_DISPSTAT_HBLK_MASK) {
        G3X_SetHOffset(table[line]);
    }
}

static void ov01_021FB788(u16 *table, int num, int denom) {
    int toggle = 1;
    int i;
    s32 value = num * 3 / denom;
    for (i = 0; i < 0xC0; i++) {
        if (i % 10 == 0) {
            toggle ^= 1;
        }
        if (toggle != 0) {
            table[i] = value;
        } else {
            table[i] = -value;
        }
    }
}

static void ov01_021FB7CC(SysTask *task, void *data) {
    UnkStruct_Ov01_021FB5D4 *work = data;
    work->unk318 = 0;
    G3X_SetHOffset(0);
}

static void ov01_021FB7DC(void *param0, void *param1) {
    ov01_021FB7E8(param1);
}

static void ov01_021FB7E8(void *data) {
    UnkStruct_Ov01_021FB5D4 *work = data;
    if (work->state == 1 && work->unk318 == 1) {
        ov01_021FB750(work);
    }
}

static void ov01_021FB800(SysTask *task, void *data) {
    ov01_021FB80C(data);
}

static void ov01_021FB80C(void *data) {
    UnkStruct_Ov01_021FB5D4 *work = data;
    if (work->state == 1) {
        sub_02014A8C(work->unk30C);
        work->unk318 = 1;
    }
}

static void ov01_021FB82C(UnkStruct_Ov01_021FB5D4 *work) {
    ov01_021FB554(work->slot);
    work->slot = NULL;
    SysTask_Destroy(work->unk31C);
    work->unk31C = NULL;
    SysTask_Destroy(work->unk320);
    work->unk320 = NULL;
    SysTask_Destroy(work->unk324);
    work->unk324 = NULL;
    work->state = 0;
}
