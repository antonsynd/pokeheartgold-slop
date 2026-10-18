#include "global.h"

#include "heap.h"
#include "sys_task_api.h"

typedef struct UnkStruct_021D41C8 {
    u8 filler_00[0x14];
    void *unk14;
    MATHRandContext32 rand;
    u8 filler_30[4];
    SysTask *task;
    u16 unk38;
    u8 filler_3A[6];
    int unk40;
} UnkStruct_021D41C8;

extern UnkStruct_021D41C8 *_021D41C8;

void sub_02058034(void);
void sub_020582CC(SysTask *task, void *data);
void sub_0203778C(MATHRandContext32 *rand);
void sub_02091574(void *arg0);

void sub_02058038(void *a0) {
    if (_021D41C8 == NULL) {
        sub_02091574(a0);
        _021D41C8 = Heap_Alloc(HEAP_ID_15, sizeof(UnkStruct_021D41C8));
        MI_CpuFill8(_021D41C8, 0, sizeof(UnkStruct_021D41C8));
        _021D41C8->unk38 = 50;
        _021D41C8->task = SysTask_CreateOnMainQueue(sub_020582CC, NULL, 10);
        _021D41C8->unk14 = a0;
        _021D41C8->unk40 = 0;
        sub_02058034();
        sub_0203778C(&_021D41C8->rand);
    }
}
