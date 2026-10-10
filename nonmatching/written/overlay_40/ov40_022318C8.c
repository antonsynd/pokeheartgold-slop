#include "global.h"
#include "heap.h"
#include "sys_task_api.h"
#include "unk_02013534.h"

typedef struct UnkStruct_ov40_022318C8 {
    s16 unk_00;
    s16 unk_02;
    s16 unk_04;
    s16 unk_06;
    s16 unk_08;
    s16 unk_0A;
    u8 filler_0C[0x1C - 0x0C];
    u8 unk_1C;
    u8 unk_1D;
    u8 filler_1E[2];
    void *unk_20;
    TextOBJ *unk_24;
    void *unk_28;
    u32 *unk_2C;
    u32 *unk_30;
} UnkStruct_ov40_022318C8;

void ov40_0222D288(void *a0, s16 x, s16 y);
void ov40_0222D294(void *a0, s16 *x, s16 *y);
BOOL sub_020878B8(void *a0, s16 x, s16 y);

void ov40_022318C8(SysTask *task, UnkStruct_ov40_022318C8 *work) {
    // The original's two s16 locals live in the stack slot that holds the saved r3, and the
    // callee that should fill them is only a stub in the check, so they start as r3's halves.
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    s16 y = (s16)callerR3;
    s16 x = (s16)(callerR3 >> 16);

    switch (work->unk_1D) {
    case 0:
        work->unk_08 = (work->unk_04 - work->unk_00) / work->unk_1C;
        work->unk_0A = (work->unk_06 - work->unk_02) / work->unk_1C;
        work->unk_1D++;
    case 1:
        ov40_0222D294(work->unk_20, &x, &y);
        work->unk_1C--;
        if (work->unk_1C == 0) {
            x = work->unk_04;
            y = work->unk_06;
            work->unk_1D++;
        } else {
            x += work->unk_08;
            y += work->unk_0A;
        }
        if (work->unk_28 != NULL) {
            sub_020878B8(work->unk_28, x + 0x10, y);
            if (work->unk_1C == 2) {
                *work->unk_30 = 1;
            }
        }
        ov40_0222D288(work->unk_20, x, y);
        sub_020136B4(work->unk_24, 0x24, -8);
        *work->unk_2C = 1;
        break;
    default:
        Heap_Free(work);
        SysTask_Destroy(task);
        break;
    }
}
