#include "global.h"
#include "heap.h"

typedef struct FrontierScriptManager {
    void *frontier;
} FrontierScriptManager;

typedef struct FrontierScriptContext {
    FrontierScriptManager *scriptMan;
} FrontierScriptContext;

typedef struct {
    u8 filler_00[8];
    int state;
    u8 filler_0C[0x14 - 0x0C];
    u32 prevData;
} UnkStruct_ov80_0222DCF0;

typedef int (*UnkFn_ov80_0222DCF0)(void *, void *, u32, u32);

extern void *Frontier_GetData(void *frontier);
extern void Frontier_SetData(void *frontier, u32 data);
extern void sub_0200FBF4(int screen, int color);
extern UnkFn_ov80_0222DCF0 ov80_0223B9EC[];

BOOL ov80_0222DCF0(FrontierScriptContext *ctx) {
    UnkStruct_ov80_0222DCF0 *work = Frontier_GetData(ctx->scriptMan->frontier);
    UnkFn_ov80_0222DCF0 fn;
    int result;
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");

    fn = ov80_0223B9EC[work->state];
    result = fn(work, (void *)fn, (u32)work->state << 2, callerR3);

    if (result == 0) {
        sub_0200FBF4(0, 0);
        sub_0200FBF4(1, 0);
        Frontier_SetData(ctx->scriptMan->frontier, work->prevData);
        Heap_Free(work);
    }

    return result == 0;
}
