#include "global.h"

#include "heap.h"
#include "sys_task.h"

typedef struct Ov12_0225A818_Ctx {
    u8 filler_000[0x14];
    SysTaskFunc taskFunc;
    u8 filler_018[0x10];
    u8 unk028[0x16C];
    u8 unk194;
} Ov12_0225A818_Ctx;

typedef struct Ov12_0225A818_Data {
    u8 unk0;
    u8 unk1;
    u16 unk2;
    int unk4;
    int unk8;
} Ov12_0225A818_Data;

typedef struct Ov12_0225A818 {
    void *battleSystem;
    void *unk04;
    u8 filler_08[4];
    u8 unk0C;
    u8 unk0D;
    u8 unk0E;
    u8 unk0F;
    int unk10;
    int unk14;
    u16 unk18;
} Ov12_0225A818;

void ov12_0225A818(void *battleSystem, Ov12_0225A818_Ctx *ctx, Ov12_0225A818_Data *data) {
    Ov12_0225A818 *work = Heap_Alloc((enum HeapID)5, sizeof(Ov12_0225A818));

    work->unk0E = 0;
    work->battleSystem = battleSystem;
    work->unk0C = data->unk0;
    work->unk0D = ctx->unk194;
    work->unk04 = ctx->unk028;
    work->unk10 = data->unk2;
    work->unk0F = data->unk1;
    work->unk18 = data->unk4;
    work->unk14 = data->unk8;
    SysTask_CreateOnMainQueue(ctx->taskFunc, work, 0);
}
