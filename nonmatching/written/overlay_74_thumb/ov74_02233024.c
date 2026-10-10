#include "global.h"

extern void GF_RunVramTransferTasks(void);
extern void OamManager_ApplyAndResetBuffers(void);
extern void DoScheduledBgGpuUpdates(void *bgConfig);

typedef void (*UnkFn_ov74_02233024)(void *, u32, u32, u32);

typedef struct {
    u8 filler_00[0x20];
    void *bgConfig;
    u8 filler_24[0x12604 - 0x24];
    UnkFn_ov74_02233024 callback;
} UnkStruct_ov74_02233024;

void ov74_02233024(UnkStruct_ov74_02233024 *work) {
    u32 callerR1, callerR2, callerR3;
    __asm__ volatile("movs %0, r1" : "=l"(callerR1) : : "cc");
    __asm__ volatile("movs %0, r2" : "=l"(callerR2) : : "cc");
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");

    if (work->callback != NULL) {
        work->callback((void *)work->callback, callerR1, callerR2, callerR3);
        work->callback = NULL;
    }
    GF_RunVramTransferTasks();
    OamManager_ApplyAndResetBuffers();
    DoScheduledBgGpuUpdates(work->bgConfig);
    *(vu32 *)0x027E3FF8 |= 1;
}
