#include "global.h"
#include "sys_task_api.h"

typedef struct UnkStruct_ov74_02229CB8 {
    u8 filler_00[0x20];
    void (*unk_20)(u32 a0, void *self, u8 *a2, u32 r3);
    u8 filler_24[2];
    u8 unk_26;
} UnkStruct_ov74_02229CB8;

extern UnkStruct_ov74_02229CB8 *ov74_0223D0A4;

void ov74_02229CB8(SysTask *task) {
    u32 callerR3;
    UnkStruct_ov74_02229CB8 *work;

    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    work = ov74_0223D0A4;
    if (work == NULL) {
        SysTask_Destroy(task);
        return;
    }
    if (work->unk_20 != NULL) {
        if (work->unk_26 == 0) {
            work->unk_20(0, work->unk_20, &work->unk_26, callerR3);
        }
    }
}
