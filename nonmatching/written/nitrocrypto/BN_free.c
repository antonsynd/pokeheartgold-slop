#include "global.h"

typedef struct UnkStruct_BN_free {
    u32 *d;
    int top;
    int dmax;
    int neg;
    int flags;
} UnkStruct_BN_free;

extern void CRYPTOi_MyFree(void *ptr);

void BN_free(UnkStruct_BN_free *a) {
    if (a == NULL) {
        return;
    }
    if (a->d != NULL && (a->flags & 2) == 0) {
        CRYPTOi_MyFree(a->d);
    }
    a->flags |= 0x8000;
    if (a->flags & 1) {
        CRYPTOi_MyFree(a);
    }
}
