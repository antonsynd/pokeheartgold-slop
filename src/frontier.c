#include "frontier/frontier.h"

#include <nitro/mi/memory.h>

#include "global.h"

#include "frontier/frontier_map.h"
#include "frontier/frontier_system.h"

#include "assert.h"
#include "heap.h"
#include "overlay_manager.h"
#include "poke_overlay.h"

FS_EXTERN_OVERLAY(OVY_80);
FS_EXTERN_OVERLAY(OVY_81);
FS_EXTERN_OVERLAY(OVY_42);

typedef struct FrontierWork {
    /* 0x000 */ FrontierLaunchArgs *launchArgs;
    /* 0x004 */ OverlayManager *childOvy;
    /* 0x008 */ void *childArg;
    /* 0x00C */ UnkFuncPtr_020965A4 *childCallback;
    /* 0x010 */ u8 freeChildArg;
    /* 0x011 */ u8 padding_011[3];
    /* 0x014 */ FrontierSystem *system;
    /* 0x018 */ FrontierMap *map;
    /* 0x01C */ u8 padding_01C;
    /* 0x01D */ u8 mapCreated;
    /* 0x01E */ u8 unk1E;
    /* 0x01F */ u8 padding_01F;
    /* 0x020 */ u16 unk20;
    /* 0x022 */ u8 unk22;
    /* 0x023 */ u8 padding_023;
    /* 0x024 */ u16 unk24[0x18][2];
    /* 0x084 */ struct {
        u8 unk0[0xC];
        u16 unkC;
        u8 unkE[0x2E];
    } unk84[0x20];
    /* 0x804 */ u8 unk804[0x200];
    /* 0xA04 */ u16 unkA04[8];
    /* 0xA14 */ u8 unkA14[0x40];
} FrontierWork; // 0xA54

extern FrontierSystem *FrontierSystem_Create(FrontierWork *data, enum HeapID heapId, int mode);
extern void FrontierSystem_Main(FrontierSystem *system);
extern void FrontierSystem_AddTask(FrontierSystem *system, int a1, int a2);
extern FrontierMap *FrontierMap_Init(FrontierWork *data);
extern void FrontierMap_Free(FrontierMap *map);
extern void ov80_022389C4(FrontierMap *map);
extern void ov80_02238A18(FrontierMap *map);
extern void ov80_0222A920(FrontierSystem *system);
extern void ov80_0222AA7C(FrontierSystem *system, int a1, enum HeapID heapId);
extern void *ov80_0222AAD8(FrontierSystem *system, enum HeapID heapId);
extern void ov80_0222AAF8(FrontierSystem *system, void *a1);

static int Frontier_Init(OverlayManager *man, int *state);
static int Frontier_Main(OverlayManager *man, int *state);
static int Frontier_Exit(OverlayManager *man, int *state);
static void Frontier_CreateMap(FrontierWork *data);
static void Frontier_FreeMap(FrontierWork *data);
static void sub_02096780(FrontierWork *data);
static void Frontier_LoadOverlays(void);
static void Frontier_UnloadOverlays(void);

// Exported (.public) but not declared in frontier.h; declared locally here.
void *sub_0209680C(void *a0);
void sub_0209684C(void *a0);
void sub_02096854(void *a0, u8 a1, u16 a2);
void *sub_02096864(void *a0);
void *sub_02096868(void *a0);
void *sub_0209686C(void *a0, int idx);
void *sub_02096878(void *a0);
void sub_02096884(void *a0);

static int Frontier_Init(OverlayManager *man, int *state) {
    FrontierWork *data;
    Frontier_LoadOverlays();
    data = OverlayManager_CreateAndGetData(man, sizeof(FrontierWork), HEAP_ID_FIELD2);
    MI_CpuFill8(data, 0, sizeof(FrontierWork));
    sub_02096780(data);
    sub_02096884(data);
    data->launchArgs = OverlayManager_GetArgs(man);
    GF_ASSERT(data->launchArgs != NULL);
    data->system = FrontierSystem_Create(data, HEAP_ID_FIELD2, data->launchArgs->unk20);
    FrontierSystem_AddTask(data->system, data->launchArgs->unk20, 0);
    Frontier_CreateMap(data);
    return 1;
}

static int Frontier_Main(OverlayManager *man, int *state) {
    FrontierWork *data = OverlayManager_GetData(man);
    switch (*state) {
    case 0:
        *state = 1;
        break;
    case 1:
        if (data->unk22 == 1) {
            *state = 2;
        } else if (data->mapCreated != 0) {
            if (data->unk1E == 1) {
                *state = 5;
            } else {
                FrontierSystem_Main(data->system);
                if (data->childOvy != NULL) {
                    *state = 3;
                }
            }
        }
        break;
    case 2:
        return 1;
    case 3:
        ov80_022389C4(data->map);
        Frontier_FreeMap(data);
        Frontier_UnloadOverlays();
        *state = 4;
        break;
    case 4:
        if (OverlayManager_Run(data->childOvy) == TRUE) {
            OverlayManager_Delete(data->childOvy);
            Frontier_LoadOverlays();
            if (data->childCallback != NULL) {
                data->childCallback(data->childArg);
            }
            if (data->childArg != NULL && data->freeChildArg == 1) {
                Heap_Free(data->childArg);
            }
            data->childOvy = NULL;
            data->childCallback = NULL;
            data->childArg = NULL;
            Frontier_CreateMap(data);
            ov80_02238A18(data->map);
            *state = 1;
        }
        break;
    case 5:
        Frontier_FreeMap(data);
        sub_02096780(data);
        *state = 6;
        break;
    case 6:
        Frontier_CreateMap(data);
        if (data->unk20 == 0xFFFF) {
            ov80_0222AA7C(data->system, data->launchArgs->unk20, HEAP_ID_FIELD2);
        } else {
            void *r6 = ov80_0222AAD8(data->system, HEAP_ID_FIELD2);
            ov80_0222A920(data->system);
            data->system = FrontierSystem_Create(data, HEAP_ID_FIELD2, data->launchArgs->unk20);
            FrontierSystem_AddTask(data->system, data->launchArgs->unk20, data->unk20);
            ov80_0222AAF8(data->system, r6);
        }
        data->unk1E = 0;
        *state = 1;
        break;
    }
    return 0;
}

static int Frontier_Exit(OverlayManager *man, int *state) {
    FrontierWork *data = OverlayManager_GetData(man);
    ov80_0222A920(data->system);
    Frontier_FreeMap(data);
    OverlayManager_FreeData(man);
    Frontier_UnloadOverlays();
    return 1;
}

static void Frontier_CreateMap(FrontierWork *data) {
    data->map = FrontierMap_Init(data);
    data->mapCreated = 1;
}

static void Frontier_FreeMap(FrontierWork *data) {
    FrontierMap_Free(data->map);
    data->mapCreated = 0;
}

static void sub_02096780(FrontierWork *data) {
    int i;
    for (i = 0; i < 0x18; i++) {
        data->unk24[i][0] = 0xFFFF;
    }
    MI_CpuFill8(data->unk84, 0, sizeof(data->unk84));
    for (i = 0; i < 0x20; i++) {
        data->unk84[i].unkC = 0xFFFF;
    }
}

static void Frontier_LoadOverlays(void) {
    HandleLoadOverlay(FS_OVERLAY_ID(OVY_80), OVY_LOAD_ASYNC);
    HandleLoadOverlay(FS_OVERLAY_ID(OVY_81), OVY_LOAD_ASYNC);
    HandleLoadOverlay(FS_OVERLAY_ID(OVY_42), OVY_LOAD_ASYNC);
}

static void Frontier_UnloadOverlays(void) {
    UnloadOverlayByID(FS_OVERLAY_ID(OVY_80));
    UnloadOverlayByID(FS_OVERLAY_ID(OVY_81));
    UnloadOverlayByID(FS_OVERLAY_ID(OVY_42));
}

FrontierLaunchArgs *Frontier_GetLaunchArgs(void *a0) {
    FrontierWork *data = a0;
    return data->launchArgs;
}

void *sub_0209680C(void *a0) {
    FrontierWork *data = a0;
    return data->map;
}

void *Frontier_GetData(void *a0) {
    FrontierWork *data = a0;
    return data->launchArgs->unk0;
}

void Frontier_SetData(void *a0, u32 a1) {
    FrontierWork *data = a0;
    data->launchArgs->unk0 = (void *)a1;
}

void Frontier_LaunchApplication(void *a0, const OverlayManagerTemplate *ovyTemp, void *args, u32 a3, UnkFuncPtr_020965A4 func) {
    FrontierWork *data = a0;
    GF_ASSERT(data->childOvy == NULL);
    data->childOvy = OverlayManager_New(ovyTemp, args, HEAP_ID_FIELD2);
    data->childArg = args;
    data->freeChildArg = a3;
    data->childCallback = func;
}

void sub_0209684C(void *a0) {
    FrontierWork *data = a0;
    data->unk22 = 1;
}

void sub_02096854(void *a0, u8 a1, u16 a2) {
    FrontierWork *data = a0;
    data->launchArgs->unk20 = a1;
    data->unk1E = 1;
    data->unk20 = a2;
}

void *sub_02096864(void *a0) {
    FrontierWork *data = a0;
    return data->unk24;
}

void *sub_02096868(void *a0) {
    FrontierWork *data = a0;
    return data->unk84;
}

void *sub_0209686C(void *a0, int idx) {
    FrontierWork *data = a0;
    return &data->unk84[idx];
}

void *sub_02096878(void *a0) {
    FrontierWork *data = a0;
    return data->unkA04;
}

void sub_02096884(void *a0) {
    FrontierWork *data = a0;
    int i;
    MI_CpuFill8(data->unkA04, 0, 8);
    for (i = 0; i < 8; i++) {
        data->unkA04[i] = 0xFFFF;
    }
}

const OverlayManagerTemplate gOverlayTemplate_Frontier = {
    Frontier_Init,
    Frontier_Main,
    Frontier_Exit,
    FS_OVERLAY_ID_NONE,
};
