#include "global.h"

#include "constants/heap.h"

extern BOOL ov115_0225F978(void *work, enum HeapID heapID, const void *config);
extern void ov01_021EFCDC(void *work, void *task);
extern const u8 ov115_022603A8[];

void ov115_02260350(void *task, void *work);

void ov115_02260350(void *task, void *work) {
    if (ov115_0225F978(work, HEAP_ID_FIELD1, ov115_022603A8) == TRUE) {
        ov01_021EFCDC(work, task);
    }
}
