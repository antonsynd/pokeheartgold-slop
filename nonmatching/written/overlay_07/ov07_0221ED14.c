#include "global.h"

/* At the blx the asm leaves r2 = the function pointer and r3 = mode * 4. */
typedef BOOL (*UnkFunc_ov07_0221ED14)(void *task, void *bgSwitch, void *self, u32 offset);

extern const UnkFunc_ov07_0221ED14 ov07_02234BC0[];
extern void Heap_Free(void *ptr);
extern void SysTask_Destroy(void *task);

void ov07_0221ED14(void *task, u8 *bgSwitch) {
    u32 offset = *(u32 *)(bgSwitch + 0x14) * 4;
    UnkFunc_ov07_0221ED14 fn = *(UnkFunc_ov07_0221ED14 *)((u8 *)ov07_02234BC0 + offset);
    if (fn(task, bgSwitch, fn, offset) == FALSE) {
        (*(u8 **)(bgSwitch + 0x48))[0x17c] = 0;
        Heap_Free(bgSwitch);
        SysTask_Destroy(task);
    }
}
