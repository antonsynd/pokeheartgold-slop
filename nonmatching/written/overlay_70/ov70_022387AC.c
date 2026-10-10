#include "global.h"

extern void DoScheduledBgGpuUpdates(void *bgConfig);
extern void GF_RunVramTransferTasks(void);
extern void OamManager_ApplyAndResetBuffers(void);

// The callbacks are entered with r0 = work and r1 = the callback itself (blx r1);
// r2 and r3 are whatever is in them at that point (the caller's, or the first callback's leftovers).
typedef void (*Ov70Cb)(void *, void *, u32, u32);

void ov70_022387AC(u8 *work) {
    u32 r2v, r3v;
    __asm__ volatile("movs %0, r2" : "=l"(r2v) : : "cc");
    __asm__ volatile("movs %0, r3" : "=l"(r3v) : : "cc");
    Ov70Cb cb = *(Ov70Cb *)(work + 0x1204);
    if (cb != NULL) {
        cb(work, cb, r2v, r3v);
        __asm__ volatile("movs %0, r2" : "=l"(r2v) : : "cc");
        __asm__ volatile("movs %0, r3" : "=l"(r3v) : : "cc");
        *(Ov70Cb *)(work + 0x1204) = NULL;
    }
    Ov70Cb cb2 = *(Ov70Cb *)(work + 0x1208);
    if (cb2 != NULL) {
        cb2(work, cb2, r2v, r3v);
    }
    DoScheduledBgGpuUpdates(*(void **)(work + 4));
    GF_RunVramTransferTasks();
    OamManager_ApplyAndResetBuffers();
    *(vu32 *)0x027E3FF8 |= 1;
}
