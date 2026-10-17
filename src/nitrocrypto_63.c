#include "global.h"

#pragma thumb off

extern void *(*CRYPTOi_MyAllocFunc)(u32);
extern void (*CRYPTOi_MyFreeFunc)(void *);

void CRYPTO_SetAllocator(void *(*alloc)(u32), void (*free)(void *)) {
    CRYPTOi_MyAllocFunc = alloc;
    CRYPTOi_MyFreeFunc = free;
}
