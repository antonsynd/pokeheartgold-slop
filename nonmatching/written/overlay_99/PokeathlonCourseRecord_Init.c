#include "global.h"

extern BOOL HandleLoadOverlay(u32 ovyId, u32 loadType);
extern void *OverlayManager_GetArgs(void *man);
extern void GF_AssertFail(void);
extern BOOL Heap_Create(u32 parent, u32 child, u32 size);
extern void *OverlayManager_CreateAndGetData(void *man, u32 size, u32 heapID);
extern void ov99_021E5B54(u8 *data, void *args);
extern void ov98_0221F090(void);
extern void ov99_021E5C88(u8 *data);
extern void ov99_021E5D58(u8 *data);
extern void *ov98_0221EABC(u32 heapId, void *bgConfig, int windowCount, const void *templates, s32 msgBank);
extern void *ov98_0221E5E0(u32 heapId, void *counts, int numSprites);
extern void ov99_021E6274(u8 *data);
extern void ov99_021E6438(u8 *data);
extern void ov99_021E64E0(u8 *data, int a);
extern void ov99_021E5FE8(u8 *data, int a);
extern void ov99_021E6050(u8 *data, int a);
extern void ov99_021E6530(u8 *data, int a);
extern void ov99_021E6018(u8 *data);
extern void SetKeyRepeatTimers(int cont, int start);
extern void ResetVisibleHardwareWindows(u32 screen);
extern void Main_SetVBlankIntrCB(void (*cb)(void *), void *arg);
extern void ov99_021E6250(void *arg);
extern const u8 ov99_021E96D8[];
extern const u32 ov99_021E95A4[6];

BOOL PokeathlonCourseRecord_Init(void *man, int *state) {
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
    data = OverlayManager_CreateAndGetData(man, 0x94, 0x84);
    MI_CpuFill8(data, 0, 0x94);
    *(u32 *)(data + 0xc) = 0x84;
    *(u32 *)(data + 0x8c) = 0;
    *(u32 *)(data + 0x90) = 1;
    *(u32 *)(data + 0x84) = 1;
    ov99_021E5B54(data, args);
    ov98_0221F090();
    ov99_021E5C88(data);
    ov99_021E5D58(data);
    *(void **)(data + 0x10) = ov98_0221EABC(*(u32 *)(data + 0xc), *(void **)(data + 4), 0x11, ov99_021E96D8, 0x13a);
    for (i = 0; i < 6; i++) {
        counts[i] = ov99_021E95A4[i];
    }
    *(void **)(data + 0x14) = ov98_0221E5E0(*(u32 *)(data + 0xc), counts, 0x1a);
    ov99_021E6274(data);
    ov99_021E6438(data);
    ov99_021E64E0(data, 0);
    ov99_021E5FE8(data, 0);
    ov99_021E6050(data, 0);
    ov99_021E6530(data, 0);
    ov99_021E6018(data);
    SetKeyRepeatTimers(2, 4);
    ResetVisibleHardwareWindows(0);
    ResetVisibleHardwareWindows(1);
    Main_SetVBlankIntrCB(ov99_021E6250, data);
    return TRUE;
}
