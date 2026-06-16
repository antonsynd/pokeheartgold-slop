#include "global.h"

#include "camera.h"
#include "heap.h"
#include "overlay_01_021FCD2C_internal.h"
#include "string.h"
#include "sys_task_api.h"

static void ov01_021FCDA8(SysTask *task, void *data);
static void ov01_021FCDBC(UnkStruct_Ov01_021FCD2C *work);
static void ov01_021FCDC4(UnkStruct_Ov01_021FCD2C *work);
static void ov01_021FCDFC(UnkStruct_Ov01_021FCD2C *work);
static void ov01_021FCE34(UnkStruct_Ov01_021FCD2C *work);
static void ov01_021FCE44(UnkStruct_Ov01_021FCD2C *work);
static void ov01_021FCE5C(UnkStruct_Ov01_021FCD2C *work);
static BOOL ov01_021FCE74(UnkStruct_Ov01_021FCD2C *work);

static void (*const sStateFuncs[])(UnkStruct_Ov01_021FCD2C *work) = {
    ov01_021FCDBC,
    ov01_021FCDC4,
    ov01_021FCDFC,
    NULL,
};

SysTask *ov01_021FCD2C(FieldSystem *fieldSystem, enum HeapID heapId) {
    UnkStruct_Ov01_021FCD2C *work = Heap_AllocAtEnd(heapId, sizeof(UnkStruct_Ov01_021FCD2C));
    Camera *camera;
    memset(work, 0, sizeof(UnkStruct_Ov01_021FCD2C));
    work->heapId = heapId;
    work->unkC = 0;
    work->unk2C = fieldSystem;
    camera = fieldSystem->camera;
    work->unk30 = camera;
    work->unk20 = work->unk10 = Camera_GetDistance(camera);
    return SysTask_CreateOnMainQueue(ov01_021FCDA8, work, 0xFFFF);
}

BOOL ov01_021FCD6C(SysTask *task) {
    UnkStruct_Ov01_021FCD2C *work = SysTask_GetData(task);
    return work->unk8;
}

void ov01_021FCD78(SysTask *task) {
    Heap_Free(SysTask_GetData(task));
    SysTask_Destroy(task);
}

void ov01_021FCD8C(SysTask *task, int a1, fx32 a2, int a3) {
    UnkStruct_Ov01_021FCD2C *work = SysTask_GetData(task);
    work->unk4 = 0;
    work->unk8 = 0;
    work->unkC = a1;
    work->unk14 = a2;
    work->unk1C = a3;
    work->unk24 = 0;
}

static void ov01_021FCDA8(SysTask *task, void *data) {
    UnkStruct_Ov01_021FCD2C *work = data;
    sStateFuncs[work->unkC](work);
}

static void ov01_021FCDBC(UnkStruct_Ov01_021FCD2C *work) {
    work->unk8 = 1;
}

static void ov01_021FCDC4(UnkStruct_Ov01_021FCD2C *work) {
    switch (work->unk4) {
    case 0:
        ov01_021FCE44(work);
        work->unk4++;
        // fallthrough
    case 1:
        if (ov01_021FCE74(work) == 1) {
            work->unk4++;
            work->unk8 = 1;
        }
        ov01_021FCE34(work);
        break;
    }
}

static void ov01_021FCDFC(UnkStruct_Ov01_021FCD2C *work) {
    switch (work->unk4) {
    case 0:
        ov01_021FCE5C(work);
        work->unk4++;
        // fallthrough
    case 1:
        if (ov01_021FCE74(work) == 1) {
            work->unk4++;
            work->unk8 = 1;
        }
        ov01_021FCE34(work);
        break;
    }
}

static void ov01_021FCE34(UnkStruct_Ov01_021FCD2C *work) {
    Camera_SetDistance(work->unk20, work->unk30);
}

static void ov01_021FCE44(UnkStruct_Ov01_021FCD2C *work) {
    work->unk28 = work->unk14 / work->unk1C;
    work->unk18 = work->unk20 + work->unk14;
}

static void ov01_021FCE5C(UnkStruct_Ov01_021FCD2C *work) {
    work->unk28 = (work->unk10 - work->unk20) / work->unk1C;
    work->unk18 = work->unk10;
}

static BOOL ov01_021FCE74(UnkStruct_Ov01_021FCD2C *work) {
    work->unk20 += work->unk28;
    work->unk24++;
    if (work->unk24 >= work->unk1C) {
        work->unk24 = work->unk1C;
        work->unk20 = work->unk18;
        return TRUE;
    }
    return FALSE;
}
