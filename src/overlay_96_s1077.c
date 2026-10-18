#include "global.h"

#include "pokeathlon/pokeathlon.h"

#include "bg_window.h"
#include "gf_gfx_planes.h"
#include "heap.h"
#include "sprite.h"
#include "sprite_system.h"
#include "system.h"
#include "unk_0203A3B0.h"

typedef struct Ov96CourseResult {
    u8 filler_00[0x1C];
    u32 unk1C_0 : 24;
    u32 time : 6;
    u32 unk1C_30 : 2;
} Ov96CourseResult;

typedef struct Ov96_0220E3F0 {
    enum HeapID heapID;
    PokeathlonCourseData *data;
    BgConfig *bgConfig;
    void *unk0C;
    SpriteManager *spriteManager;
    void *unk14;
    void *unk18;
    void *unk1C;
    void *unk20;
    u8 filler_24[0xA0];
    void *unkC4;
    void *unkC8;
    u8 unkCC[0x90];
    u8 unk15C[0x390];
    u8 unk4EC[0x20];
    int frames;
    u8 unk510[0x198];
    u8 unk6A8[0x14];
} Ov96_0220E3F0;

void ov96_0220E868(void);
void ov96_0220ED9C(Ov96_0220E3F0 *a0);
void ov96_0220EE8C(Ov96_0220E3F0 *a0);
void ov96_0221022C(Ov96_0220E3F0 *a0);
void ov96_0220EA08(Ov96_0220E3F0 *a0);
void ov96_0220F3FC(Ov96_0220E3F0 *a0);
void ov96_0220EB3C(Ov96_0220E3F0 *a0);
void ov96_0220F4A0(Ov96_0220E3F0 *a0);
void ov96_021E6670(PokeathlonCourseData *data, int a1);
BOOL ov96_021EAA00(void *a0);
Sprite **ov96_021E61D8(PokeathlonCourseData *data, int a1, void *a2, SpriteList *spriteList);
void *ov96_02210240(void *a0, SpriteManager *spriteManager, BgConfig *bgConfig, void *a3, void *a4, u8 a5, enum HeapID heapID, PokeathlonCourseData *data);
void ov96_0221007C(void *a0, void *a1, SpriteManager *spriteManager, void *a3);
void *ov96_022107F0(PokeathlonCourseData *data, enum HeapID heapID);
void ov96_021E64B8(PokeathlonCourseData *data);
void ov96_0220D420(void *a0, BgConfig *bgConfig, void *a2);
void ov96_0220FA18(void *a0, PokeathlonCourseData *data);
void ov96_0220FF64(void *a0, void *a1);

BOOL ov96_0220E3F0(PokeathlonCourseData *data) {
    Ov96_0220E3F0 *work = PokeathlonCourse_GetHeapAllocPtr4(data);

    switch (PokeathlonCourse_GetField1ED(data)) {
    case 0:
        Heap_Create(HEAP_ID_POKEATHLON, HEAP_ID_142, 0x60000);
        Main_SetVBlankIntrCB(NULL, NULL);
        Main_SetHBlankIntrCB(NULL, NULL);
        GfGfx_DisableEngineAPlanes();
        GfGfx_DisableEngineBPlanes();
        GX_SetVisiblePlane(0);
        GXS_SetVisiblePlane(0);
        ov96_0220E868();
        gSystem.screensFlipped = TRUE;
        GfGfx_SwapDisplay();
        work = PokeathlonCourse_AllocPtr4FromHeap(data, sizeof(Ov96_0220E3F0));
        MI_CpuFill8(work, 0, sizeof(Ov96_0220E3F0));
        work->heapID = HEAP_ID_142;
        work->data = data;
        work->frames = 1800;
        PokeathlonCourse_IncrementField1ED(data);
        break;
    case 1:
        work->bgConfig = BgConfig_Alloc(work->heapID);
        ov96_021E6670(data, 4);
        ov96_0220ED9C(work);
        ov96_0220EE8C(work);
        ov96_0221022C(work);
        sub_0203A994(2);
        ov96_0220EA08(work);
        ov96_0220F3FC(work);
        PokeathlonCourse_IncrementField1ED(data);
        break;
    case 2:
        if (ov96_021EAA00(work->unk20)) {
            ov96_0220EB3C(work);
            Sprite_SetDrawPriority(*ov96_021E61D8(data, 0, work->unk1C, SpriteManager_GetSpriteList(work->spriteManager)), 0);
            PokeathlonCourse_IncrementField1ED(data);
        }
        break;
    case 3: {
        u8 playerCount = ov96_021E5F24(data);

        work->unkC4 = ov96_02210240(work->unk0C, work->spriteManager, work->bgConfig, work->unk18, work->unk14, playerCount, work->heapID, data);
        ov96_0221007C(work->unk510, work->unk0C, work->spriteManager, work->unkC4);
        work->unkC8 = ov96_022107F0(data, work->heapID);
        ov96_021E64B8(data);
        ov96_0220D420(work->unk6A8, work->bgConfig, work->unk0C);
        PokeathlonCourse_SetVBlankIntrCB((PokeathlonCourseData *)work->bgConfig);
        PokeathlonCourse_SetField1F4(data, 1);
        ov96_0220F4A0(work);
        if (ov96_021E5F24(data) == FALSE) {
            Ov96CourseResult *result = (Ov96CourseResult *)ov96_021E8A20(PokeathlonCourse_GetDataCopyArea(data) + 0x28);

            result->time = (work->frames + 30) / 30;
            ov96_0220FA18(work->unkCC, data);
        }
        ov96_0220FF64(work->unk4EC, work->unk15C);
        GfGfx_EngineATogglePlanes(GX_PLANEMASK_OBJ, GF_PLANE_TOGGLE_ON);
        GfGfx_EngineBTogglePlanes(GX_PLANEMASK_OBJ, GF_PLANE_TOGGLE_ON);
        return TRUE;
    }
    default:
        GF_ASSERT(FALSE);
        break;
    }
    return FALSE;
}
