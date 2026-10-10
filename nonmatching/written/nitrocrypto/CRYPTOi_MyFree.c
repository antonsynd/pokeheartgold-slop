#include "global.h"

typedef void (*UnkFunc_CRYPTOi_MyFree)(void *ptr, void *fn, void *ptr2, u32 r3);

extern UnkFunc_CRYPTOi_MyFree CRYPTOi_MyFreeFunc;

void CRYPTOi_MyFree(void *ptr) {
    u32 callerR3;
    UnkFunc_CRYPTOi_MyFree fn;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    fn = CRYPTOi_MyFreeFunc;
    if (fn != NULL) {
        fn(ptr, (void *)fn, ptr, callerR3);
        return;
    }
    OS_FreeToHeap((OSArenaId)0, -1, ptr);
}
