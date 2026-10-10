#include "global.h"
#include "heap.h"
#include "palette.h"
#include "sys_task_api.h"

typedef struct UnkStruct_ov40_02231C78_Entry {
    void *unk_00;
    u8 filler_04[0x10];
    void *unk_14;
    u8 filler_18[0x10];
} UnkStruct_ov40_02231C78_Entry;

typedef struct UnkStruct_ov40_02231C78_Shared {
    int unk_00;
    u32 unk_04;
    u32 filler_08;
    u32 unk_0C;
} UnkStruct_ov40_02231C78_Shared;

typedef struct UnkStruct_ov40_02231C78_Task {
    s16 unk_00;
    s16 unk_02;
    s16 unk_04;
    s16 unk_06;
    u8 filler_08[0x1C - 0x08];
    u8 unk_1C;
    u8 filler_1D[3];
    void *unk_20;
    void *unk_24;
    void *unk_28;
    u32 *unk_2C;
    u32 *unk_30;
} UnkStruct_ov40_02231C78_Task;

typedef struct UnkStruct_ov40_02231C78 {
    u8 filler_000[8];
    int unk_08;
    u8 filler_00C[0x28 - 0x0C];
    PaletteData *unk_28;
    u8 filler_02C[0x58 - 0x2C];
    u32 unk_58;
    u8 filler_05C[0x534 - 0x5C];
    UnkStruct_ov40_02231C78_Entry unk_534[5];
    UnkStruct_ov40_02231C78_Entry unk_5FC[5];
    u8 filler_6C4[0x6D8 - 0x6C4];
    int unk_6D8;
    u8 filler_6DC[4];
    int unk_6E0;
    u8 filler_6E4[0x6F0 - 0x6E4];
    void *unk_6F0;
    u8 filler_6F4[0x860 - 0x6F4];
    UnkStruct_ov40_02231C78_Shared *unk_860;
} UnkStruct_ov40_02231C78;

void ov40_0222D294(void *a0, s16 *x, s16 *y);
void ov40_022318C8(SysTask *task, void *work);
void ov40_0222C018(UnkStruct_ov40_02231C78 *work);
void ov40_0222BF80(UnkStruct_ov40_02231C78 *work, int a1);
void ManagedSprite_SetPaletteOverrideOffset(void *sprite, u8 offset);

// The arrays at 0x534 and 0x5FC are indexed by counts read from the struct, so they are
// addressed by stride from their base rather than as fixed-size arrays.
#define ENTRY(base, i) ((UnkStruct_ov40_02231C78_Entry *)((u8 *)(base) + (i) * sizeof(UnkStruct_ov40_02231C78_Entry)))

BOOL ov40_02231C78(UnkStruct_ov40_02231C78 *work) {
    UnkStruct_ov40_02231C78_Shared *shared;
    UnkStruct_ov40_02231C78_Task *task;
    int i;

    switch (work->unk_08) {
    case 0:
        shared = Heap_Alloc(0x6D, sizeof(UnkStruct_ov40_02231C78_Shared));
        MI_CpuFill8(shared, 0, sizeof(UnkStruct_ov40_02231C78_Shared));
        work->unk_860 = shared;
        i = 0;
        do {
            UnkStruct_ov40_02231C78_Entry *entry = ENTRY(work->unk_534, i);
            task = Heap_Alloc(0x6D, sizeof(UnkStruct_ov40_02231C78_Task));
            memset(task, 0, sizeof(UnkStruct_ov40_02231C78_Task));
            ov40_0222D294(entry->unk_00, &task->unk_00, &task->unk_02);
            task->unk_20 = entry->unk_00;
            task->unk_24 = entry->unk_14;
            task->unk_2C = &shared->unk_04;
            task->unk_30 = &shared->unk_0C;
            task->unk_28 = NULL;
            task->unk_04 = task->unk_00;
            if (work->unk_6D8 - 1 == i) {
                task->unk_28 = work->unk_6F0;
                task->unk_04 = task->unk_00;
                task->unk_06 = 0xD9;
            } else {
                int remaining = work->unk_6D8 - i;
                task->unk_04 = task->unk_00 + 4;
                task->unk_06 = 0x24 * (5 - remaining) + 0x1D + remaining * 16;
            }
            task->unk_1C = 4;
            SysTask_CreateOnMainQueue((SysTaskFunc)ov40_022318C8, task, 0x2000);
            i++;
        } while (i <= work->unk_6D8 - 1);
        work->unk_08++;
        break;
    case 1:
        shared = work->unk_860;
        if (shared->unk_0C == 1) {
            if (work->unk_6E0 > 0) {
                i = 0;
                do {
                    UnkStruct_ov40_02231C78_Entry *entry = ENTRY(work->unk_5FC, i);
                    task = Heap_Alloc(0x6D, sizeof(UnkStruct_ov40_02231C78_Task));
                    memset(task, 0, sizeof(UnkStruct_ov40_02231C78_Task));
                    ov40_0222D294(entry->unk_00, &task->unk_00, &task->unk_02);
                    task->unk_20 = entry->unk_00;
                    task->unk_24 = entry->unk_14;
                    task->unk_2C = &shared->unk_04;
                    task->unk_30 = &shared->unk_0C;
                    task->unk_28 = NULL;
                    task->unk_04 = task->unk_00;
                    task->unk_06 = ((5 - work->unk_6E0) << 4) + 0xCD;
                    if (task->unk_06 >= 0xDD) {
                        task->unk_06 = 0xDD;
                    }
                    task->unk_1C = 8;
                    SysTask_CreateOnMainQueue((SysTaskFunc)ov40_022318C8, task, 0x2000);
                    i++;
                } while (i < work->unk_6E0);
            }
            shared->unk_00 = 0;
            work->unk_08++;
            work->unk_6D8--;
            if (work->unk_6D8 > 0) {
                i = 0;
                do {
                    UnkStruct_ov40_02231C78_Entry *entry = ENTRY(work->unk_534, i);
                    if (i == work->unk_6D8 - 1) {
                        ManagedSprite_SetPaletteOverrideOffset(entry->unk_00, 1);
                    } else {
                        ManagedSprite_SetPaletteOverrideOffset(entry->unk_00, 2);
                    }
                    i++;
                } while (i < work->unk_6D8);
            }
        }
        break;
    case 2:
        shared = work->unk_860;
        if (shared->unk_00 != 0x10) {
            shared->unk_00 += 2;
            PaletteData_BlendPalettes(work->unk_28, PLTTBUF_MAIN_OBJ, 0xC, shared->unk_00, work->unk_58);
        }
        if (shared->unk_04 == 0) {
            work->unk_08++;
        }
        shared->unk_04 = 0;
        break;
    default:
        ov40_0222C018(work);
        Heap_Free(work->unk_860);
        ov40_0222BF80(work, 5);
        break;
    }
    return FALSE;
}
