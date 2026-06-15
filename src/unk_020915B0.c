#include "unk_020915B0.h"

#include "global.h"

#include "heap.h"
#include "main.h"
#include "overlay_13_thumb_1.h"
#include "overlay_manager.h"
#include "poke_overlay.h"

FS_EXTERN_OVERLAY(OVY_0);
FS_EXTERN_OVERLAY(OVY_13);
FS_EXTERN_OVERLAY(OVY_38);

void LoadDwcOverlay(void) {
    HandleLoadOverlay(FS_OVERLAY_ID(OVY_0), OVY_LOAD_ASYNC);
}

void UnloadDwcOverlay(void) {
    UnloadOverlayByID(FS_OVERLAY_ID(OVY_0));
}

void LoadOVY13(void) {
    HandleLoadOverlay(FS_OVERLAY_ID(OVY_13), OVY_LOAD_ASYNC);
}

static void UnloadOVY13(void) {
    UnloadOverlayByID(FS_OVERLAY_ID(OVY_13));
}

static void sub_020915F0(SaveData *saveData, enum HeapID heapId) {
    LoadDwcOverlay();
    LoadOVY13();
    ov13_0221BA00(heapId);
    UnloadOVY13();
    UnloadDwcOverlay();
    OS_ResetSystem(0);
}

void LoadOVY38(void) {
    HandleLoadOverlay(FS_OVERLAY_ID(OVY_38), OVY_LOAD_ASYNC);
}

void UnloadOVY38(void) {
    UnloadOverlayByID(FS_OVERLAY_ID(OVY_38));
}

static int sub_02091634(OverlayManager *man, int *state) {
    UnkStruct_02111868_sub *args;
    Heap_Create(HEAP_ID_3, HEAP_ID_48, 0x41000);
    args = OverlayManager_GetArgs(man);
    sub_020915F0(args->saveData, HEAP_ID_48);
    Heap_Destroy(HEAP_ID_48);
    OS_ResetSystem(0);
    return 1;
}

const OverlayManagerTemplate gApp_MainMenu_SelectOption_NintendoWFCSetup = {
    sub_02091634,
    NULL,
    NULL,
    FS_OVERLAY_ID_NONE,
};
