#include "global.h"

extern BOOL HandleLoadOverlay(u32 ovyId, u32 loadType);
extern void *OverlayManager_GetArgs(void *man);
extern void GF_AssertFail(void);
extern BOOL Heap_Create(u32 parent, u32 child, u32 size);
extern void *OverlayManager_CreateAndGetData(void *man, u32 size, u32 heapID);
extern void ov99_021E6FD0(u8 *data, void *args);
extern void ov98_0221F090(void);
extern void ov99_021E695C(u8 *data);
extern void ov99_021E69D8(u8 *data);
extern void *ov98_0221EABC(u32 heapId, void *bgConfig, int windowCount, const void *templates, s32 msgBank);
extern void *ov98_0221E5E0(u32 heapId, void *counts, int numSprites);
extern void ov99_021E6A9C(u8 *data);
extern void ov99_021E6D34(u8 *data);
extern void ResetVisibleHardwareWindows(u32 screen);
extern void Main_SetVBlankIntrCB(void (*cb)(void *), void *arg);
extern void ov99_021E6938(void *arg);
extern const u8 ov99_021E9ED0[];
extern const u32 ov99_021E9DEC[6];

BOOL ov99_021E677C(void *man, int *state) {
    void *args;
    u8 *data;
    u32 counts[6];
    int i;

    HandleLoadOverlay(98, 2);
    args = OverlayManager_GetArgs(man);
    if (args == NULL) {
        GF_AssertFail();
    }
    Heap_Create(3, 0x84, 0x30000);
    data = OverlayManager_CreateAndGetData(man, 0x124, 0x84);
    MI_CpuFill8(data, 0, 0x124);
    *(u32 *)(data + 0xc) = 0x84;
    ov99_021E6FD0(data, args);
    ov98_0221F090();
    ov99_021E695C(data);
    ov99_021E69D8(data);
    *(void **)(data + 0x10) = ov98_0221EABC(*(u32 *)(data + 0xc), *(void **)(data + 4), 0xf, ov99_021E9ED0, 0x13a);
    for (i = 0; i < 6; i++) {
        counts[i] = ov99_021E9DEC[i];
    }
    *(void **)(data + 0x14) = ov98_0221E5E0(*(u32 *)(data + 0xc), counts, 0x43);
    ov99_021E6A9C(data);
    ov99_021E6D34(data);
    ResetVisibleHardwareWindows(0);
    ResetVisibleHardwareWindows(1);
    Main_SetVBlankIntrCB(ov99_021E6938, data);
    return TRUE;
}
