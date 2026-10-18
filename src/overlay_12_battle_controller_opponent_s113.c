#include "global.h"

#include "heap.h"
#include "sys_task.h"

typedef struct Ov12_0225B0A0_Ctx {
    u8 filler_000[0x194];
    u8 unk194;
    u8 unk195;
} Ov12_0225B0A0_Ctx;

typedef struct Ov12_0225B0A0 {
    void *battleSystem;
    u8 unk4;
    u8 unk5;
    u8 unk6;
    u8 unk7;
    u8 unk8[6];
    u8 unkE;
    u8 unkF;
} Ov12_0225B0A0;

void ov12_02260BA0(SysTask *task, void *data);

void ov12_0225B0A0(void *battleSystem, Ov12_0225B0A0_Ctx *ctx, u8 *data) {
    Ov12_0225B0A0 *work = Heap_Alloc((enum HeapID)5, sizeof(Ov12_0225B0A0));
    int i;

    work->unk7 = 0;
    work->battleSystem = battleSystem;
    work->unk4 = data[0];
    work->unk5 = ctx->unk194;
    work->unk6 = ctx->unk195;
    for (i = 0; i < 6; i++) {
        work->unk8[i] = data[2 + i];
    }
    work->unkE = 0;
    SysTask_CreateOnMainQueue(ov12_02260BA0, work, 0);
}
