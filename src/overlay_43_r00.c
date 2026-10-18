#include "global.h"

#include "heap.h"
#include "overlay_43.h"
#include "overlay_manager.h"
#include "poke_overlay.h"
#include "system.h"

FS_EXTERN_OVERLAY(OVY_42);

typedef struct PalPadAppData {
    u8 filler_000[4];
    u8 unk004[0x210];
    u8 unk214[0x68];
    PalPadArgs *args;
    u8 unk280[0x40];
    u8 unk2C0[0x100];
    u8 unk3C0[0xC];
    u8 unk3CC[0x3C];
    u8 unk408[0x19C];
} PalPadAppData;

void ov43_0222A148(void *data);
void ov43_0222A290(void *a0, PalPadArgs *args, enum HeapID heapId);
void ov43_0222A48C(void *a0, void *a1, enum HeapID heapId);
void ov43_0222AE5C(void *a0, void *a1, void *a2, enum HeapID heapId);
void ov43_0222B5A8(void *a0, void *a1, void *a2, enum HeapID heapId);
void ov43_0222CBAC(void *a0, void *a1, void *a2, enum HeapID heapId);
void ov43_0222CD90(void *a0, void *a1, void *a2, enum HeapID heapId);
void ov43_0222D134(void *a0, void *a1, void *a2, enum HeapID heapId);

BOOL PalPad_Init(OverlayManager *man, int *state) {
    PalPadAppData *data;

    HandleLoadOverlay(FS_OVERLAY_ID(OVY_42), OVY_LOAD_ASYNC);
    Heap_Create(HEAP_ID_3, HEAP_ID_51, 0x70000);
    data = OverlayManager_CreateAndGetData(man, sizeof(PalPadAppData), HEAP_ID_51);
    memset(data, 0, sizeof(PalPadAppData));
    data->args = OverlayManager_GetArgs(man);
    ov43_0222A290(data->unk214, data->args, HEAP_ID_51);
    ov43_0222A48C(data->unk004, data->unk214, HEAP_ID_51);
    ov43_0222AE5C(data->unk280, data->unk214, data->unk004, HEAP_ID_51);
    ov43_0222B5A8(data->unk2C0, data->unk214, data->unk004, HEAP_ID_51);
    ov43_0222CBAC(data->unk3C0, data->unk214, data->unk004, HEAP_ID_51);
    ov43_0222CD90(data->unk3CC, data->unk214, data->unk004, HEAP_ID_51);
    ov43_0222D134(data->unk408, data->unk214, data->unk004, HEAP_ID_51);
    Main_SetVBlankIntrCB(ov43_0222A148, data);
    HBlankInterruptDisable();
    return TRUE;
}
