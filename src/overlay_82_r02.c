#include "global.h"

#include "heap.h"
#include "overlay_manager.h"
#include "poke_overlay.h"
#include "system.h"

typedef struct Ov82_0223DF74 {
    u8 filler_000[0xD];
    u8 unk00D;
    u8 filler_00E[0x202];
    u16 *unk210;
} Ov82_0223DF74;

FS_EXTERN_OVERLAY(OVY_80);

void ov82_0223E8C4(Ov82_0223DF74 *data);

BOOL ov82_0223DF74(OverlayManager *man, int *state) {
    Ov82_0223DF74 *data = OverlayManager_GetData(man);

    *data->unk210 = data->unk00D;
    ov82_0223E8C4(data);
    OverlayManager_FreeData(man);
    GX_SetDispSelect(GX_DISP_SELECT_MAIN_SUB);
    Main_SetVBlankIntrCB(NULL, NULL);
    Heap_Destroy((enum HeapID)0x69);
    UnloadOverlayByID(FS_OVERLAY_ID(OVY_80));
    return TRUE;
}
