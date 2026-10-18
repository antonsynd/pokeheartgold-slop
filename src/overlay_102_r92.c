#include "global.h"

#include "heap.h"
#include "sys_task.h"

typedef struct Ov102_021E940C {
    u8 filler_00[8];
    SysTask *tasks[4];
    int unk18;
    int unk1C;
} Ov102_021E940C;

typedef struct Ov102TaskData {
    Ov102_021E940C *parent;
    int unk04;
    int unk08;
    u32 type;
    int slot;
    int unk14;
} Ov102TaskData;

extern const SysTaskFunc ov102_021EC788[];

void ov102_021E940C(Ov102_021E940C *a0, u32 type) {
    Ov102TaskData *data;
    int i;

    if (type < 0x20) {
        data = Heap_Alloc((enum HeapID)0x23, sizeof(Ov102TaskData));
        if (data != NULL) {
            data->unk14 = 0;
            data->type = type;
            data->parent = a0;
            data->unk04 = a0->unk18;
            data->unk08 = a0->unk1C;
            for (i = 0; i < 4; i++) {
                if (a0->tasks[i] == NULL) {
                    data->slot = i;
                    a0->tasks[i] = SysTask_CreateOnMainQueue(ov102_021EC788[type], data, 1);
                    return;
                }
            }
        }
    } else {
        GF_AssertFail();
    }
}
