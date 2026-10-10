#include "global.h"

extern void Sound_SetSceneAndPlayBGM(u8 scene, u16 seqNo, int unused);
extern BOOL Heap_Create(u32 parent, u32 child, u32 size);
extern void *OverlayManager_GetData(void *man);
extern u8 *ov102_021E7888(void *man);
extern void ov102_021E940C(void *a, int b);
extern BOOL ov102_021E9464(void *a);
extern u8 ov102_021EA238(void *a);

BOOL EasyChat_Init(void *man, int *state) {
    u8 *app;
    switch (*state) {
    case 0:
        Sound_SetSceneAndPlayBGM(0x3e, 0, 0);
        Heap_Create(3, 0x22, 0x8000);
        Heap_Create(3, 0x23, 0x28000);
        app = ov102_021E7888(man);
        ov102_021E940C(*(void **)(app + 0x14), 0);
        (*state)++;
        break;
    case 1:
        app = OverlayManager_GetData(man);
        if (ov102_021E9464(*(void **)(app + 0x14))) {
            u8 v;
            if (*(int *)(app + 4) == 2) {
                v = ov102_021EA238(*(void **)(app + 0x14));
            } else {
                v = 0;
            }
            app[0x6a] = v;
            return 1;
        }
        break;
    }
    return 0;
}
