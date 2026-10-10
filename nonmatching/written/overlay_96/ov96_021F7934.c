#include "global.h"
#include "bg_window.h"
#include "font.h"
#include "gf_gfx_planes.h"
#include "heap.h"
#include "math_util.h"
#include "screen_fade.h"
#include "sound.h"
#include "system.h"
#include "unk_0203A3B0.h"
#include "pokeathlon/pokeathlon.h"

extern u32 ov96_0221C2A8[3];

void sub_0203A9C8(void);
void sub_0203A86C(void);
void ov96_021F7D10(void);
void *ov96_021F7D30(void *bg, u32 heapId);
void ov96_021F7DA8(u8 *alloc);
void ov96_021F7878(void *p, void *bg, u32 heapId);
void ov96_021F78C4(void *p, u32 heapId);
void ov96_021F8094(void *p, u32 heapId, void *bg, PokeathlonCourseData *data);
void ov96_021F80A8(void *p, PokeathlonCourseData *data, u8 a, u32 b);
void ov96_021F8448(u8 *alloc);
void ov96_021F8528(u8 *alloc);
void ov96_021F85A0(u8 *alloc);
void *ov96_021F8EB0(u32 heapId, void *bg, void *obj);
void ov96_021F8F44(void *obj, u32 a);
void ov96_021F8F94(void *obj, PokeathlonCourseData *data, u32 a);
void *ov96_021EE740(u32 heapId);
void *ov96_021EE5B4(u32 a, u32 heapId);
void ov96_021EE60C(void *obj, void *bg);
void ov96_021EE644(void *obj);
void ov96_021EE6A0(void *obj);
void ov96_021EE75C(void *a, void *bg, u32 c, u32 mode, SaveData *saveData);
void *ov96_021EEBC8(u32 a);
void ov96_021EEA88(void *obj, void *a, u32 b, u32 heapId);
void *ov96_021EB180(u32 heapId, void *vec);
void ov96_021EB5C8(void *obj, u32 a1, u32 a2, u32 a3, u32 a4);
void ov96_021EB3A4(void *obj);
u32 ov96_021E9524(void);
u32 ov96_021E9528(void *gfx);
int ov96_021E5F24(PokeathlonCourseData *data);

BOOL ov96_021F7934(PokeathlonCourseData *data) {
    u8 *alloc;
    u8 *newAlloc;
    u32 a;
    void *gfx;
    MtxFx22 mtx;
    u32 vec[3];
    u8 *q;
    u32 mode;
    void *saveData;

    alloc = PokeathlonCourse_GetHeapAllocPtr4(data);
    switch (PokeathlonCourse_GetField1ED(data)) {
    case 0:
        Heap_Create(0x5c, 0x89, 0x40000);
        Main_SetVBlankIntrCB(NULL, NULL);
        Main_SetHBlankIntrCB(NULL, NULL);
        GfGfx_DisableEngineAPlanes();
        GfGfx_DisableEngineBPlanes();
        *(vu32 *)0x04000000 = *(vu32 *)0x04000000 & 0xFFFFE0FF;
        *(vu32 *)0x04001000 = *(vu32 *)0x04001000 & 0xFFFFE0FF;
        ov96_021F7D10();
        newAlloc = PokeathlonCourse_AllocPtr4FromHeap(data, 0xac);
        MI_CpuFill8(newAlloc, 0, 0xac);
        *(u32 *)newAlloc = 0x89;
        FontID_Alloc(4, 0x89);
        *(void **)(newAlloc + 0xc) = BgConfig_Alloc(0x89);
        *(void **)(newAlloc + 0x18) = ov96_021EE740(*(u32 *)newAlloc);
        ov96_021F8094(newAlloc + 0x1c, 0x89, *(void **)(newAlloc + 0xc), data);
        *(void **)(newAlloc + 0x80) = ov96_021EE5B4(PokeathlonCourse_GetField3D8_ForCurrentParticipant(data), *(u32 *)newAlloc);
        ov96_021F8448(newAlloc);
        gSystem.screensFlipped = TRUE;
        GfGfx_SwapDisplay();
        PokeathlonCourse_IncrementField1ED(data);
        break;
    case 1:
        vec[0] = ov96_0221C2A8[0];
        vec[1] = ov96_0221C2A8[1];
        vec[2] = ov96_0221C2A8[2];
        *(void **)(alloc + 0x10) = ov96_021EB180(*(u32 *)alloc, vec);
        ov96_021EB5C8(*(void **)(alloc + 0x10), 0, 0, 0, 0x12c000);
        gfx = PokeathlonCourse_GetGraphicsSystem(data);
        a = ov96_021E9524();
        ov96_021F80A8(alloc + 0x1c, data, (u8)a, ov96_021E9528(gfx));
        *(void **)(alloc + 0x14) = ov96_021F8EB0(*(u32 *)alloc, *(void **)(alloc + 0xc), *(void **)(alloc + 0x10));
        ov96_021F8F44(*(void **)(alloc + 0x14), 2);
        ov96_021EB3A4(*(void **)(alloc + 0x10));
        ov96_021F8F94(*(void **)(alloc + 0x14), data, 300);
        ov96_021F8528(alloc);
        ov96_021F85A0(alloc);
        ov96_021EEA88(*(void **)(alloc + 0x9c), ov96_021EEBC8(2), 0xb, *(u32 *)alloc);
        PokeathlonCourse_IncrementField1ED(data);
        break;
    case 2:
        PokeathlonCourse_SetVBlankIntrCB(*(void **)(alloc + 0xc));
        ov96_021F7D30(*(void **)(alloc + 0xc), *(u32 *)alloc);
        ov96_021EE60C(*(void **)(alloc + 0x80), *(void **)(alloc + 0xc));
        ov96_021F7DA8(alloc);
        ov96_021EE644(*(void **)(alloc + 0x80));
        GfGfx_EngineBTogglePlanes(4, 0);
        GfGfx_EngineBTogglePlanes(8, 0);
        mode = PokeathlonCourse_GetMode(data);
        saveData = PokeathlonCourse_GetSaveData(data);
        ov96_021EE75C(*(void **)(alloc + 0x18), *(void **)(alloc + 0xc), 5, mode, saveData);
        ov96_021EE6A0(*(void **)(alloc + 0x80));
        mtx.a[0] = 0x1000;
        mtx.a[1] = 0;
        mtx.a[2] = 0;
        mtx.a[3] = 0x1000;
        OS_WaitVBlankIntr();
        Bg_SetTextDimAndAffineParams(*(void **)(alloc + 0xc), 7, 1, 0, &mtx, 0x80, 0x60);
        Bg_SetTextDimAndAffineParams(*(void **)(alloc + 0xc), 7, 5, 0x10, &mtx, 0x80, 0x60);
        Bg_SetTextDimAndAffineParams(*(void **)(alloc + 0xc), 6, 1, 0, &mtx, 0x80, 0x60);
        Bg_SetTextDimAndAffineParams(*(void **)(alloc + 0xc), 6, 5, 0x10, &mtx, 0x80, 0x60);
        ov96_021F7878(alloc + 0x84, *(void **)(alloc + 0xc), *(u32 *)alloc);
        ov96_021F78C4(alloc + 0x84, *(u32 *)alloc);
        PokeathlonCourse_IncrementField1ED(data);
        break;
    case 3:
        if (ov96_021E5F24(data) == 0) {
            q = ov96_021E8A20(PokeathlonCourse_GetDataCopyArea(data) + 0x28);
            *q = MTRandom() % 5;
        }
        if (PokeathlonCourse_GetMode(data) == 1) {
            sub_0203A994(1);
            sub_0203A9C8();
            sub_0203A86C();
        }
        GfGfx_EngineATogglePlanes(0x10, 1);
        GfGfx_EngineBTogglePlanes(0x10, 1);
        GfGfx_EngineBTogglePlanes(4, 1);
        GfGfx_EngineBTogglePlanes(8, 1);
        PokeathlonCourse_SetField1F4(data, 1);
        PokeathlonCourse_IncrementField1ED(data);
        break;
    case 4:
        PlayBGM(0x473);
        BeginNormalPaletteFade(0, 1, 1, 0, 6, 1, *(u32 *)alloc);
        PokeathlonCourse_IncrementField1ED(data);
        break;
    case 5:
        if (IsPaletteFadeFinished()) {
            return TRUE;
        }
        break;
    default:
        GF_AssertFail();
        break;
    }
    return FALSE;
}
