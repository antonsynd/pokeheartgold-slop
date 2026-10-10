#include "global.h"
#include "heap.h"
#include "sprite.h"
#include "sys_task_api.h"

typedef struct UnkStruct_ov59_0223BE70 {
    u8 pad_00[0x2E];
    u16 unk_2E;
    u8 unk_30[8];
    u8 unk_38;
    u8 pad_39[0x16];
    u8 unk_4F;
    u8 pad_50[0x230];
    Sprite *unk_280[1];
} UnkStruct_ov59_0223BE70;

typedef struct UnkStruct_ov59_0223BE70_Task {
    UnkStruct_ov59_0223BE70 *unk_00;
    u8 unk_04;
    u8 pad_05;
    u8 unk_06;
    u8 pad_07;
    s32 unk_08;
    s16 unk_0C;
    s16 unk_0E;
    VecFx32 unk_10;
    Sprite *unk_1C;
} UnkStruct_ov59_0223BE70_Task;

void ov59_0223BE44(UnkStruct_ov59_0223BE70 *a0, u8 a1, u8 a2, int a3);
void ov59_0223BFC8(SysTask *task, void *data);

void ov59_0223BE70(UnkStruct_ov59_0223BE70 *a0, int a1, int a2) {
    UnkStruct_ov59_0223BE70_Task *task = Heap_Alloc(*(u32 *)a0, 0x20);
    u8 idx;
    float f;
    int v;

    MI_CpuFill8(task, 0, 0x20);
    task->unk_00 = a0;
    task->unk_04 = a2;
    task->unk_06 = 0x1E;
    idx = (a0->unk_2E >> (a1 * 3)) & 7;
    if (a2 == 0) {
        idx = idx + a0->unk_38 + 1;
        task->unk_10.x = 0x19A;
        task->unk_10.y = 0x19A;
        task->unk_10.z = 0;
        v = task->unk_06 << 12;
        if (task->unk_06 != 0) {
            f = 0.5f + (float)v;
        } else {
            f = (float)v - 0.5f;
        }
        task->unk_08 = FX_Div(0x1000, (int)f);
        task->unk_0E = 0xC;
        task->unk_0C = 0;
    } else {
        idx = idx - a0->unk_38;
        task->unk_10.x = 0x119A;
        task->unk_10.y = 0x119A;
        task->unk_10.z = 0x1000;
        v = task->unk_06 << 12;
        if (task->unk_06 != 0) {
            f = 0.5f + (float)v;
        } else {
            f = (float)v - 0.5f;
        }
        task->unk_08 = -FX_Div(0x1000, (int)f);
        task->unk_0E = task->unk_0E - 0xC;
        task->unk_0C = 0x168;
    }
    idx = a1 * 5 + idx;
    task->unk_1C = a0->unk_280[idx];
    Sprite_SetAffineScale(task->unk_1C, &task->unk_10);
    ov59_0223BE44(a0, idx, a0->unk_30[a1] + 4, 1);
    SysTask_CreateOnMainQueue((SysTaskFunc)ov59_0223BFC8, task, 0);
    a0->unk_4F = a0->unk_4F + 1;
    a0->unk_38 = a0->unk_38 + 1;
}
