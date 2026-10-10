#include "global.h"
#include "heap.h"

extern void *ov102_021EA268(void *a);
extern void *ov102_021EA26C(void *a);

void *ov102_021EC20C(void *param0, void *param1, void *param2) {
    u32 *v0 = Heap_Alloc((enum HeapID)0x23, 0x30);

    v0[0] = (u32)param0;
    v0[1] = (u32)param1;
    v0[2] = (u32)param2;
    v0[3] = (u32)ov102_021EA268(param0);
    v0[4] = (u32)ov102_021EA26C(param0);
    v0[5] = 0;
    v0[6] = 0;
    v0[11] = 0;
    return v0;
}
