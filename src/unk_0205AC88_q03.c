#include "global.h"

#include "heap.h"
#include "sys_task.h"

typedef struct UnkStruct_0205AC88 {
    void *unk000;
    SysTask *task;
    u8 filler_008[0x4D4];
    void *mailMgr;
} UnkStruct_0205AC88;

void sub_0205B3CC(void *mailMgr);

void sub_0205AD3C(UnkStruct_0205AC88 *work) {
    SysTask_Destroy(work->task);
    sub_0205B3CC(work->mailMgr);
    Heap_Destroy((enum HeapID)0x57);
    Heap_Free(work);
}
