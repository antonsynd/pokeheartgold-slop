#include "global.h"

#include "heap.h"
#include "sys_task_api.h"

typedef int (*ov85_021E7B8C_Fn)(void *, void *, u32, u32);

extern const ov85_021E7B8C_Fn ov85_021EA51C[];

void ov85_021E7B8C(SysTask *param0, u8 *param1) {
    /* the asm calls the handler with r1 = the handler itself and r2/r3 as the caller (or the previous handler) left them */
    u32 callerR2, callerR3;
    ov85_021E7B8C_Fn fn;
    int v0;

    __asm__ volatile("movs %0, r2" : "=l"(callerR2) : : "cc");
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");

    do {
        fn = ov85_021EA51C[*(int *)param1];
        v0 = fn(param1, (void *)fn, callerR2, callerR3);
        __asm__ volatile("movs %0, r2" : "=l"(callerR2) : : "cc");
        __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    } while (v0 == 1);

    if (v0 == 2) {
        *(int *)(*(u8 **)(param1 + 0x10) + 8) = 1;
        Heap_Free(param1);
        SysTask_Destroy(param0);
    }
}
