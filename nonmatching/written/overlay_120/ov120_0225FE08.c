#include "global.h"
#include "gf_gfx_loader.h"
#include "heap.h"
#include "sys_task_api.h"

typedef struct UnkStruct_ov120_0225FE08_Sub10 {
    u8 filler0[8];
    void *unk8;
} UnkStruct_ov120_0225FE08_Sub10;

typedef struct UnkStruct_ov120_0225FE08_Sub {
    u8 filler0[0x10];
    UnkStruct_ov120_0225FE08_Sub10 *unk10;
    u8 filler14[0xC];
    NARC *unk20;
} UnkStruct_ov120_0225FE08_Sub;

typedef struct UnkStruct_ov120_0225FE08 {
    UnkStruct_ov120_0225FE08_Sub *unk0;
    void *unk4;
    void *unk8;
    NNSG2dCharacterData *unkC;
    NNSG2dCharacterData *unk10;
    u32 unk14;
    SysTask *unk18;
    u16 unk1C;
    u16 unk1E;
} UnkStruct_ov120_0225FE08;

extern void *ov120_0225FD14(NARC *narc, s32 fileId, NNSG2dCharacterData **ppCharData, enum HeapID heapID);
extern void ov120_0225FD2C(void *a0, NARC *narc, int fileId, int a3);
extern void ov120_0225FDA0(SysTask *task, void *data);

void ov120_0225FE08(SysTask *task, UnkStruct_ov120_0225FE08 *data) {
    UnkStruct_ov120_0225FE08_Sub *sub = data->unk0;
    GF_ASSERT(sub->unk20 != NULL);
    switch (data->unk1C) {
    case 0:
        GfGfxLoader_GXLoadPalFromOpenNarc(sub->unk20, 0xA0, 0, 0, 0x20, 4);
        data->unk4 = ov120_0225FD14(sub->unk20, 0xA1, &data->unkC, 4);
        data->unk8 = ov120_0225FD14(sub->unk20, 0xA4, &data->unk10, 4);
        data->unk1E = 0;
        data->unk18 = SysTask_CreateOnVBlankQueue(ov120_0225FDA0, data, 0);
        data->unk1C++;
        break;
    case 1:
        if (data->unk18 == NULL) {
            ov120_0225FD2C(sub->unk10->unk8, sub->unk20, 0xA2, 1);
            ov120_0225FD2C(sub->unk10->unk8, sub->unk20, 0xA5, 3);
            data->unk1C++;
        }
        break;
    case 2:
        Heap_Free(data->unk4);
        Heap_Free(data->unk8);
        data->unk14 = 0;
        SysTask_Destroy(task);
        break;
    default:
        GF_ASSERT(FALSE);
        break;
    }
}
