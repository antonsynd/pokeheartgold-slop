#include "global.h"

extern void *OverlayManager_GetData(void *man);
extern void OverlayManager_FreeData(void *man);
extern void ov99_021E9418(void *a);
extern void ov98_0221E684(void *spriteSys, void **sprites, u32 count);
extern void ov98_0221EB84(void *textSys, int windowCount);
extern void ov99_021E875C(u8 *data);
extern void ov98_0221F0EC(void);
extern void Heap_Destroy(u32 heapID);
extern void UnloadOverlayByID(u32 ovyId);

BOOL PokeathlonEventRecord_Exit(void *man, int *state) {
    u8 *data = OverlayManager_GetData(man);

    ov99_021E9418(*(void **)data);
    ov98_0221E684(*(void **)(data + 0x14), (void **)(data + 0x18), 0x25);
    ov98_0221EB84(*(void **)(data + 0x10), 0x13);
    ov99_021E875C(data);
    ov98_0221F0EC();
    OverlayManager_FreeData(man);
    Heap_Destroy(0x84);
    UnloadOverlayByID(98);
    return TRUE;
}
