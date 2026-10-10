#include "global.h"

typedef struct UnkStruct_PhotoAlbum_Init {
    u32 heapId;
    u8 unk4[0xC];
    void *args;
} UnkStruct_PhotoAlbum_Init;

extern void ov109_021E5A20(void);
extern BOOL Heap_Create(u32 parent, u32 child, u32 size);
extern void *OverlayManager_CreateAndGetData(void *man, u32 size, u32 heapId);
extern void MI_CpuFill8(void *dest, u8 value, u32 size);
extern void *OverlayManager_GetArgs(void *man);
extern void *OverlayManager_GetData(void *man);
extern void ov109_021E5A70(UnkStruct_PhotoAlbum_Init *data);
extern BOOL ov109_021E5B60(UnkStruct_PhotoAlbum_Init *data);

s32 PhotoAlbum_Init(void *man, int *state) {
    UnkStruct_PhotoAlbum_Init *data;

    switch (*state) {
    case 0:
        ov109_021E5A20();
        Heap_Create(3, 0x60, 0x20000);
        data = OverlayManager_CreateAndGetData(man, 500, 0x60);
        MI_CpuFill8(data, 0, 500);
        data->heapId = 0x60;
        data->args = OverlayManager_GetArgs(man);
        ov109_021E5A70(data);
        (*state)++;
        break;
    case 1:
        if (ov109_021E5B60(OverlayManager_GetData(man))) {
            return 1;
        }
        break;
    }
    return 0;
}
