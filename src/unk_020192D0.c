#include "unk_020192D0.h"

#include "global.h"

#include "gf_gfx_planes.h"
#include "sound_02004A44.h"
#include "system.h"
#include "unk_02034B0C.h"
#include "unk_02037C94.h"
#include "unk_020915B0.h"

typedef struct {
    void *unk0;
    u8 filler4[8];
    u8 unkC;
} UnkArgs_020192D0;

typedef struct {
    UnkArgs_020192D0 *args;
    u32 unk4;
    OverlayManager *subManager;
    void *unkC;
    NNSFndHeapHandle unk10;
    u8 filler14[0x78 - 0x14];
    u32 unk78;
    u32 unk7C;
} UnkStruct_020192D0;

extern void LoadOVY38(void);
extern void UnloadOVY38(void);
extern void sub_02034DE0(void);
extern void ov00_021EC294(void *(*alloc)(int, u32, int), void (*free)(int, void *));
extern void ov00_021ECB40(void);
extern int ov00_021EC9D4(void);
extern void sub_0203A930(int a0);
extern const OverlayManagerTemplate *sub_02087E10(int a0);
extern BOOL ov39_02228140(OverlayManager *man, int *state);
extern BOOL ov39_02228308(OverlayManager *man, int *state);
extern BOOL ov39_02228370(OverlayManager *man, int *state);

static void sub_020194B4(UnkStruct_020192D0 *work);
static void sub_020194F8(UnkStruct_020192D0 *work);
static void *sub_02019520(int a0, u32 size, int align);
static void sub_02019548(int a0, void *ptr);

static const OverlayManagerTemplate _020F6288 = {
    ov39_02228140, ov39_02228308, ov39_02228370, FS_OVERLAY_ID_NONE
};

static NNSFndHeapHandle _021D1108;

BOOL sub_020192D0(OverlayManager *man, int *state) {
    UnkStruct_020192D0 *work;
    Main_SetVBlankIntrCB(NULL, NULL);
    HBlankInterruptDisable();
    GfGfx_DisableEngineAPlanes();
    GfGfx_DisableEngineBPlanes();
    reg_GX_DISPCNT &= 0xFFFFE0FF;
    reg_GXS_DB_DISPCNT &= 0xFFFFE0FF;
    reg_GX_DISPCNT &= 0xFFFF1FFF;
    reg_GXS_DB_DISPCNT &= 0xFFFF1FFF;
    reg_G2_BLDCNT = 0;
    reg_G2S_DB_BLDCNT = 0;
    Heap_Create(HEAP_ID_3, HEAP_ID_123, 0xA << 14);
    work = OverlayManager_CreateAndGetData(man, sizeof(UnkStruct_020192D0), HEAP_ID_123);
    MI_CpuFill8(work, 0, sizeof(UnkStruct_020192D0));
    work->args = OverlayManager_GetArgs(man);
    Sound_SetSceneAndPlayBGM(0xB, 0x47D, 1);
    return TRUE;
}

BOOL sub_0201935C(OverlayManager *man, int *state) {
    UnkStruct_020192D0 *work = OverlayManager_GetData(man);
    switch (*state) {
    case 0:
        sub_020194B4(work);
        *state = 1;
        break;
    case 1:
        if (sub_02034DB8() == 0) {
            break;
        }
        _021D1108 = work->unk10;
        ov00_021EC294(sub_02019520, sub_02019548);
        work->unk78 = 1;
        (*state)++;
        break;
    case 2:
        work->subManager = OverlayManager_New(&_020F6288, work, HEAP_ID_123);
        (*state)++;
        break;
    case 3:
        if (OverlayManager_Run(work->subManager) == 1) {
            OverlayManager_Delete(work->subManager);
            if (work->unk7C == 1) {
                work->unk4 = 1;
                (*state)++;
            } else {
                *state = 8;
            }
        }
        break;
    case 4: {
        const OverlayManagerTemplate *template = sub_02087E10(work->args->unkC);
        work->subManager = OverlayManager_New(template, work->args->unk0, HEAP_ID_123);
        (*state)++;
        break;
    }
    case 5:
        if (OverlayManager_Run(work->subManager) == 1) {
            OverlayManager_Delete(work->subManager);
            (*state)++;
        }
        break;
    case 6:
        work->subManager = OverlayManager_New(&_020F6288, work, HEAP_ID_123);
        (*state)++;
        break;
    case 7:
        if (OverlayManager_Run(work->subManager) == 1) {
            OverlayManager_Delete(work->subManager);
            work->unk4 = 0;
            (*state)++;
        }
        break;
    case 8:
        return TRUE;
    }
    if (work->unk78 == 1 && work->unk4 == 1 && work->unk7C == 1) {
        ov00_021ECB40();
        sub_0203A930(3 - ov00_021EC9D4());
    }
    return FALSE;
}

BOOL sub_02019490(OverlayManager *man, int *state) {
    UnkStruct_020192D0 *work = OverlayManager_GetData(man);
    sub_020194F8(work);
    Heap_Free(work->args);
    OverlayManager_FreeData(man);
    Heap_Destroy(HEAP_ID_123);
    return TRUE;
}

static void sub_020194B4(UnkStruct_020192D0 *work) {
    if (work->unk78 == 0) {
        LoadDwcOverlay();
        LoadOVY38();
        sub_02039FD8(HEAP_ID_123);
        work->unkC = Heap_Alloc(HEAP_ID_123, 0x20020);
        work->unk10 = NNS_FndCreateExpHeapEx((void *)(((u32)work->unkC + 0x1F) & ~0x1F), 2 << 16, 0);
        sub_02034D8C();
        Sys_ClearSleepDisableFlag(4);
    }
}

static void sub_020194F8(UnkStruct_020192D0 *work) {
    if (work->unk78 == 1) {
        NNS_FndDestroyExpHeap(work->unk10);
        Heap_Free(work->unkC);
        UnloadOVY38();
        UnloadDwcOverlay();
        sub_02034DE0();
        work->unk78 = 0;
    }
}

static void *sub_02019520(int a0, u32 size, int align) {
    OSIntrMode intrMode = OS_DisableInterrupts();
    void *ptr = NNS_FndAllocFromExpHeapEx(_021D1108, size, align);
    OS_RestoreInterrupts(intrMode);
    return ptr;
}

static void sub_02019548(int a0, void *ptr) {
    if (ptr != NULL) {
        OSIntrMode intrMode = OS_DisableInterrupts();
        NNS_FndFreeToExpHeap(_021D1108, ptr);
        OS_RestoreInterrupts(intrMode);
    }
}
