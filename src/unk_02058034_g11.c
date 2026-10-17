#include "global.h"

#include "sys_task.h"

typedef struct UnkStruct_021D41C8 {
    u8 filler_00[0x30];
    void (*callback)(void);
    u8 filler_34[8];
    u8 unk3C;
} UnkStruct_021D41C8;

extern UnkStruct_021D41C8 *_021D41C8;

void sub_020582CC(SysTask *task, void *data) {
    UnkStruct_021D41C8 *work = _021D41C8;

    if (work == NULL) {
        SysTask_Destroy(task);
        return;
    }
    if (work->callback != NULL && work->unk3C == 0) {
        work->callback();
    }
}
