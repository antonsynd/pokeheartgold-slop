#include "global.h"
#include "heap.h"
#include "overlay_manager.h"

extern void ov113_021E59F8(void);
extern void ov113_021E5A7C(void *data);
extern BOOL ov113_021E5B70(void *data);

typedef struct UnkStruct_UnownReport_Init {
    u32 heapId;
    void *args;
} UnkStruct_UnownReport_Init;

BOOL UnownReport_Init(OverlayManager *man, int *state) {
    UnkStruct_UnownReport_Init *data;
    switch (*state) {
    case 0:
        ov113_021E59F8();
        Heap_Create(3, 0x98, 0x20000);
        data = OverlayManager_CreateAndGetData(man, 0x160, 0x98);
        MI_CpuFill8(data, 0, 0x160);
        data->heapId = 0x98;
        data->args = OverlayManager_GetArgs(man);
        ov113_021E5A7C(data);
        (*state)++;
        break;
    case 1:
        if (ov113_021E5B70(OverlayManager_GetData(man))) {
            return TRUE;
        }
        break;
    }
    return FALSE;
}
