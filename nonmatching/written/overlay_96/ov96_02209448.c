#include "global.h"
#include "heap.h"
#include "screen_fade.h"
#include "system.h"
#include "sprite.h"
#include "sprite_system.h"
#include "bg_window.h"
#include "gf_gfx_planes.h"
#include "unk_0203A3B0.h"
#include "pokeathlon/pokeathlon.h"

void MI_CpuFill8(void *dest, u8 value, u32 size);
void ov96_02209820(void);
void ov96_02209C14(u32 a, u32 b);
void ov96_02209D14(u8 *h);
void ov96_02209840(u8 *h);
void ov96_02209A14(u8 *h);
void ov96_02209B04(u32 a, u32 b);
void *ov96_021E61D8(PokeathlonCourseData *data, u32 a, u32 b, void *c);
void ov96_02209910(u8 *h);
u32 ov96_0220A744(u32 a, u32 b, u32 c, PokeathlonCourseData *data);
u32 ov96_0220B374(u32 a, u32 b, u32 c, PokeathlonCourseData *data);
u32 ov96_0220B7F4(u32 a, u32 b, u32 c, PokeathlonCourseData *data, u32 e);
void ov96_021EB144(u32 a, u32 b);
u32 ov96_0220C93C(PokeathlonCourseData *data, u32 a);
void ov96_0220C9CC(u32 a);
void ov96_02209F14(u8 *h);
void ov96_02209F8C(PokeathlonCourseData *data);
void ov96_0220A424(PokeathlonCourseData *data);
void ov96_0220A4DC(PokeathlonCourseData *data);
u32 ov96_021EAA00(u32 a);
u32 ov96_021EA854(u32 a, u32 b, u32 c, u32 d);
void ov96_021EA8A8(u32 a, u32 b, void *c, void *d);
void ov96_021E6168(PokeathlonCourseData *data, u32 b, u32 c, void *d);
void ov96_021E60C0(PokeathlonCourseData *data, u32 b, u32 c);
u32 ov96_021E6108(void);
void GF_AssertFail(void);

u32 ov96_02209448(PokeathlonCourseData *param_1)
{
    u8 *h;
    u8 st;
    u32 zz[17] = {0};
    u8 arr5c[16 * 12] = {0};
    u32 c;
    u32 k;
    u32 t = 0;
    u8 *blk;
    u32 v;

    h = PokeathlonCourse_GetHeapAllocPtr4(param_1);
    st = PokeathlonCourse_GetField1ED(param_1);
    if (st > 7) {
        GF_AssertFail();
        return 0;
    }
    switch (st) {
    case 0:
        Heap_Create(0x5c, 0x8d, 0x60000);
        Main_SetVBlankIntrCB(0, 0);
        Main_SetHBlankIntrCB(0, 0);
        GfGfx_DisableEngineAPlanes();
        GfGfx_DisableEngineBPlanes();
        *(u32 *)0x04000000 = *(u32 *)0x04000000 & 0xFFFFE0FFu;
        *(u32 *)0x04001000 = *(u32 *)0x04001000 & 0xFFFFE0FFu;
        ov96_02209820();
        *((u8 *)&gSystem + 0x60 + 9) = 1;
        GfGfx_SwapDisplay();
        blk = PokeathlonCourse_AllocPtr4FromHeap(param_1, 0x270);
        MI_CpuFill8(blk, 0, 0x270);
        *(u32 *)blk = 0x8d;
        *(u32 *)(blk + 0x260) = 0x384;
        PokeathlonCourse_IncrementField1ED(param_1);
        return 0;
    case 1:
        *(u32 *)(h + 4) = (u32)BgConfig_Alloc(*(u32 *)h);
        ov96_021E6670(param_1, 4);
        ov96_02209C14(*(u32 *)(h + 4), *(u32 *)h);
        ov96_02209DE4(param_1);
        ov96_02209D14(h);
        ov96_02209840(h);
        SpriteManager_GetSpriteList(*(void **)(h + 0xc));
        *(u32 *)(h + 0x10) = ov96_021EA854(*(u32 *)h, 9, 0x20, *(u32 *)(h + 0x14));
        PokeathlonCourse_IncrementField1ED(param_1);
        return 0;
    case 2:
        c = 0;
        t = 0;
        for (c = 0; c < 4; c++) {
            if (c != ov96_021E5F24(param_1)) {
                for (k = 0; k < 3; k++) {
                    if (t >= 9) {
                        GF_AssertFail();
                    }
                    ov96_021E6168(param_1, c, k, arr5c + 16 * t);
                    ov96_021E60C0(param_1, c, k);
                    zz[5 + t] = ov96_021E6108();
                    t++;
                }
            }
        }
        zz[1] = 1;
        zz[3] = 1;
        zz[4] = 1;
        ov96_021EA8A8(*(u32 *)(h + 0x10), 9, arr5c, zz);
        PokeathlonCourse_IncrementField1ED(param_1);
        return 0;
    case 3:
        if (ov96_021EAA00(*(u32 *)(h + 0x10)) == 0) {
            return 0;
        }
        ov96_02209A14(h);
        ov96_02209B04(*(u32 *)(h + 8), *(u32 *)(h + 0xc));
        {
            void *list = SpriteManager_GetSpriteList(*(void **)(h + 0xc));
            void *ret = ov96_021E61D8(param_1, 0, *(u32 *)(h + 0x14), list);
            Sprite_SetDrawPriority(*(Sprite **)ret, 0);
        }
        PokeathlonCourse_IncrementField1ED(param_1);
        return 0;
    case 4:
        ov96_02209910(h);
        *(u32 *)(h + 0x40) = ov96_0220A744(*(u32 *)h, *(u32 *)(h + 8), *(u32 *)(h + 0xc), param_1);
        PokeathlonCourse_IncrementField1ED(param_1);
        return 0;
    case 5:
        *(u32 *)(h + 0x4c) = ov96_0220B374(*(u32 *)h, *(u32 *)(h + 8), *(u32 *)(h + 0xc), param_1);
        v = ov96_0220B7F4(*(u32 *)h, *(u32 *)(h + 8), *(u32 *)(h + 0xc), param_1, *(u32 *)(h + 0x10));
        *(u32 *)(h + 0x44) = v;
        ov96_021EB144(*(u32 *)(h + 0x10), 1);
        if (ov96_021E5F24(param_1) == 0) {
            *(u32 *)(h + 0x48) = ov96_0220C93C(param_1, *(u32 *)h);
        }
        ov96_02209F14(h);
        ov96_02209F8C(param_1);
        PokeathlonCourse_SetVBlankIntrCB(*(PokeathlonCourseData **)(h + 4));
        sub_0203A994(1);
        PokeathlonCourse_SetField1F4(param_1, 1);
        GfGfx_EngineATogglePlanes(0x10, 1);
        GfGfx_EngineBTogglePlanes(0x10, 1);
        if (ov96_021E5F24(param_1) == 0) {
            ov96_0220C9CC(*(u32 *)(h + 0x48));
        }
        BeginNormalPaletteFade(0, 1, 1, 0x7FFF, 6, 1, *(u32 *)h);
        PokeathlonCourse_IncrementField1ED(param_1);
        return 0;
    case 6:
        if (ov96_021E5F24(param_1) == 0) {
            ov96_0220A424(param_1);
        }
        ov96_0220A4DC(param_1);
        PokeathlonCourse_IncrementField1ED(param_1);
        return 0;
    default:
        if (IsPaletteFadeFinished() == 0) {
            return 0;
        }
        return 1;
    }
}
