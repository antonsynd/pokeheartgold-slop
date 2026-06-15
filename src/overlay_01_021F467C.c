#include "global.h"

#include "gf_gfx_planes.h"
#include "heap.h"
#include "overlay_01_021F467C_internal.h"

typedef struct UnkStruct_Ov01_021F467C {
    u32 unk00;
    u32 unk04;
    u32 unk08;
    u32 unk0C;
    u32 unk10;
    u32 unk14;
    u32 unk18;
    u32 unk1C;
    u32 unk20;
    u32 unk24;
    u32 unk28;
} UnkStruct_Ov01_021F467C;

void *ov01_021F4464(UnkStruct_Ov01_021F467C *template);
void ov01_021F44B4(void *env, int a1, int a2, int a3);

static const UnkStruct_Ov01_021F467C ov01_02206B94 = {
    0x0A,
    0,
    1,
    3,
    2,
    0,
    0,
    2,
    0,
    0,
    4,
};

u32 ov01_021F467C(u32 a0, u32 a1) {
    UnkStruct_Ov01_021F467C template;
    void **holder;
    GfGfx_EngineATogglePlanes(GX_PLANEMASK_BG1, GF_PLANE_TOGGLE_OFF);
    GfGfx_EngineATogglePlanes(GX_PLANEMASK_BG2, GF_PLANE_TOGGLE_OFF);
    GfGfx_EngineATogglePlanes(GX_PLANEMASK_BG3, GF_PLANE_TOGGLE_OFF);
    GX_ResetBankForBG();
    holder = Heap_Alloc(HEAP_ID_FIELD1, sizeof(void *));
    MI_CpuClear32(holder, sizeof(void *));
    template = ov01_02206B94;
    template.unk20 = a0;
    template.unk24 = a1;
    *holder = ov01_021F4464(&template);
    return (u32)holder;
}

void ov01_021F46DC(u32 *a0) {
    ov01_021F44B4((void *)*a0, 1, 0, 1);
    GX_SetBankForBG(GX_VRAM_BG_128_C);
    GfGfx_EngineATogglePlanes(GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3, GF_PLANE_TOGGLE_ON);
    Heap_FreeExplicit(HEAP_ID_FIELD1, (void *)*a0);
}
