#include "global.h"

#include "pokeathlon/pokeathlon.h"

#include "bg_window.h"
#include "font.h"
#include "gf_gfx_planes.h"
#include "heap.h"
#include "system.h"
#include "unk_0203A3B0.h"

typedef struct Ov96_021F7C70 {
    u8 filler_00[0xC];
    BgConfig *bgConfig;
    void *unk10;
    void *unk14;
    void *unk18;
    void *unk1C;
    u8 filler_20[0x60];
    void *unk80;
    Window window;
} Ov96_021F7C70;

extern const u8 ov96_0221C290[];

void ov96_021EE5E0(void *a0);
void ov96_021EE808(void *a0);
void ov96_021F8F0C(void *a0);
void ov96_021F8728(void *a0);
void ov96_021EB21C(void *a0);
void ov96_021F84E4(Ov96_021F7C70 *a0);

BOOL ov96_021F7C70(PokeathlonCourseData *data) {
    Ov96_021F7C70 *work = PokeathlonCourse_GetHeapAllocPtr4(data);
    int i;

    Main_SetVBlankIntrCB(NULL, NULL);
    Main_SetHBlankIntrCB(NULL, NULL);
    FontID_Release(4);
    G2_SetBlendBrightness(GX_BLEND_PLANEMASK_BG0 | GX_BLEND_PLANEMASK_BG1 | GX_BLEND_PLANEMASK_BG2 | GX_BLEND_PLANEMASK_BG3 | GX_BLEND_PLANEMASK_OBJ | GX_BLEND_PLANEMASK_BD, 0);
    ov96_021EE5E0(work->unk80);
    RemoveWindow(&work->window);
    ov96_021EE808(work->unk18);
    for (i = 0; i < 6; i++) {
        FreeBgTilemapBuffer(work->bgConfig, ov96_0221C290[i]);
    }
    ov96_021F8F0C(work->unk14);
    ov96_021F8728(work->unk1C);
    ov96_021EB21C(work->unk10);
    ov96_021F84E4(work);
    Heap_Free(work->bgConfig);
    PokeathlonCourse_FreePtr4HeapAlloc(data);
    GfGfx_SetMainDisplay(PM_LCD_TOP);
    Heap_Destroy(HEAP_ID_137);
    sub_0203A914();
    return TRUE;
}
