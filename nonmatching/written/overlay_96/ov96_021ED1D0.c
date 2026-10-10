#include "global.h"
#include "assert.h"
#include "bg_window.h"
#include "gf_gfx_planes.h"
#include "heap.h"
#include "poke_overlay.h"
#include "sprite.h"
#include "sprite_system.h"
#include "system.h"
#include "unk_0203A3B0.h"
#include "pokeathlon/pokeathlon.h"

void ov96_021EB6A8(void);
u32 ov96_021EE740(u32 heapId);
void ov96_021EC490(u8 *work);
void *ov96_021E9A78(u32 heapId, u32 flags, u32 param2);
void *ov96_021EA854(u32 heapId, u32 param1, u32 param2, void *param3, SpriteList *list);
void ov96_021E6168(PokeathlonCourseData *course, int quot, int rem, u32 *out);
void ov96_021E60C0(PokeathlonCourseData *course, int quot, int rem);
u32 ov96_021E6108(void);
void ov96_021EA8A8(void *param0, u32 param1, u32 *param2, u32 *param3, u32 param4, u32 param5);
int ov96_021EAA00(void *param0);
void ov96_021EC550(u8 *work);
void ov96_021EC5C0(u8 *work);
void ov96_021EC68C(u8 *work);
void ov96_021EC70C(u8 *work);
void ov96_021EC82C(PokeathlonCourseData *course);
void *ov96_021ECBB8(u32 heapId, u8 *param1);
void *ov96_021ED054(u32 heapId, void *param1, void *param2);
void ov96_021ECAC4(PokeathlonCourseData *course);
void *ov96_021EAA04(void *param0, u32 param1);
void ov96_021EAB38(void *param0, u32 param1);
u32 ov96_021EAA20(void *param0);
Sprite *ov96_021E8BAC(u32 param0);
void ov96_021EAC0C(void *param0, u32 param1);
void ov96_021EAF94(void *param0, u32 param1, u32 param2);
void ov96_021EC2E8(void *param0);
void ov96_021EC3D8(void *param0, u32 param1);
void ov96_021EE75C(u32 param0, void *param1, u32 param2, u32 param3, SaveData *param4);

#define A8(off)  (*(u8 *)(work + (off)))
#define A32(off) (*(u32 *)(work + (off)))

BOOL ov96_021ED1D0(PokeathlonCourseData *param0) {
    u8 *work = (u8 *)PokeathlonCourse_GetHeapAllocPtr4(param0);
    u32 listA[17];
    u32 listB[12][4];
    int i;
    int quot;
    int rem;
    void *obj;
    u32 *cell;

    switch (PokeathlonCourse_GetField1ED(param0)) {
    case 0:
        Heap_Create((enum HeapID)0x5c, (enum HeapID)0x87, 0x60000);
        HandleLoadOverlay((FSOverlayID)98, (PMOverlayLoadType)2);
        Main_SetVBlankIntrCB(NULL, NULL);
        Main_SetHBlankIntrCB(NULL, NULL);
        GfGfx_DisableEngineAPlanes();
        GfGfx_DisableEngineBPlanes();
        *(vu32 *)0x04000000 = *(vu32 *)0x04000000 & 0xFFFFE0FF;
        *(vu32 *)0x04001000 = *(vu32 *)0x04001000 & 0xFFFFE0FF;
        ov96_021EB6A8();
        work = (u8 *)PokeathlonCourse_AllocPtr4FromHeap(param0, 0xbc);
        MI_CpuFill8(work, 0, 0xbc);
        A32(0) = 0x87;
        A8(0xb1) = ov96_021E5E7C(param0);
        A32(4) = (u32)BgConfig_Alloc((enum HeapID)A32(0));
        A32(0xc) = ov96_021EE740(A32(0));
        ov96_021EC490(work);
        A32(0x10) = (u32)ov96_021E9A78(A32(0), 6, 1);
        gSystem.screensFlipped = 1;
        GfGfx_SwapDisplay();
        PokeathlonCourse_IncrementField1ED(param0);
        break;
    case 1:
        for (i = 0; i < 17; i++) {
            listA[i] = 0;
        }
        A32(0x14) = (u32)ov96_021EA854(A32(0), 0xc, 3, (void *)A32(0x10), SpriteManager_GetSpriteList((SpriteManager *)A32(0x1c)));
        for (i = 0; i < 12; i++) {
            rem = i % 3;
            quot = i / 3;
            ov96_021E6168(param0, quot, rem, listB[i]);
            ov96_021E60C0(param0, quot, rem);
            listA[5 + i] = ov96_021E6108();
        }
        listA[1] = 3;
        listA[0] = 0;
        listA[2] = 0;
        listA[3] = 1;
        listA[4] = 1;
        ov96_021EA8A8((void *)A32(0x14), 0xc, &listB[0][0], listA, 1, 0);
        PokeathlonCourse_IncrementField1ED(param0);
        break;
    case 2:
        if (ov96_021EAA00((void *)A32(0x14)) == 0) {
            return FALSE;
        }
        ov96_021EC82C(param0);
        ov96_021EC550(work);
        ov96_021EC5C0(work);
        ov96_021EC68C(work);
        ov96_021EC70C(work);
        A32(0x8c) = (u32)ov96_021ECBB8(A32(0), work + 0x20);
        A32(0x90) = (u32)ov96_021ED054(A32(0), (void *)A32(0x18), (void *)A32(0x1c));
        ov96_021ECAC4(param0);
        PokeathlonCourse_IncrementField1ED(param0);
        break;
    case 3:
        PokeathlonCourse_SetVBlankIntrCB((PokeathlonCourseData *)A32(4));
        PokeathlonCourse_SetField1F4(param0, 1);
        for (i = 0; i < 12; i++) {
            obj = ov96_021EAA04((void *)A32(0x14), (u8)i);
            ov96_021EAB38(obj, 1);
            cell = (u32 *)Sprite_GetCellAnim(ov96_021E8BAC(ov96_021EAA20(obj)));
            cell[4] = (i * 3) << 12;
            ov96_021EAC0C(obj, 1);
            quot = i / 3;
            rem = i % 3;
            ov96_021EAF94(obj, (quot << 6) + 0x20, 0x30 * (rem + 1));
        }
        ov96_021EC2E8((void *)A32(4));
        ov96_021EC3D8((void *)A32(4), A32(0));
        ov96_021EE75C(A32(0xc), (void *)A32(4), 4, PokeathlonCourse_GetMode(param0), PokeathlonCourse_GetSaveData(param0));
        sub_0203A994(2);
        GfGfx_EngineBTogglePlanes(0x10, 1);
        GfGfx_EngineATogglePlanes(0x10, 1);
        A8(0xb5) = 0;
        return TRUE;
    default:
        GF_AssertFail();
        break;
    }
    return FALSE;
}
