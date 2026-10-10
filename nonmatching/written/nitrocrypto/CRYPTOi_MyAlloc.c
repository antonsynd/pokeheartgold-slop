#include "global.h"

typedef void *(*UnkFunc_CRYPTOi_MyAlloc)(u32 size, void *fn, u32 size2, u32 r3);

extern UnkFunc_CRYPTOi_MyAlloc CRYPTOi_MyAllocFunc;

void *CRYPTOi_MyAlloc(u32 size) {
    u32 callerR3;
    UnkFunc_CRYPTOi_MyAlloc fn;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    fn = CRYPTOi_MyAllocFunc;
    if (fn != NULL) {
        return fn(size, (void *)fn, size, callerR3);
    }
    return OS_AllocFromHeap((OSArenaId)0, -1, size);
}
