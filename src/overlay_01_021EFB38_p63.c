#include "global.h"

#include "gf_gfx_planes.h"
#include "heap.h"
#include "sys_task_api.h"

typedef struct Ov01_02209B64 {
    u16 unk0;
    u8 unk2;
    void *unk4;
    u8 filler_08[0x10];
} Ov01_02209B64;

extern Ov01_02209B64 *ov01_02209B64;

void ov01_021F1094(SysTask *task, void *data);
void ov01_021F10C8(SysTask *task, void *data);

void ov01_021F0DDC(void *a0) {
    GF_ASSERT(ov01_02209B64 == NULL);
    ov01_02209B64 = Heap_Alloc(HEAP_ID_FIELD1, sizeof(Ov01_02209B64));
    memset(ov01_02209B64, 0, sizeof(Ov01_02209B64));
    ov01_02209B64->unk0 = 0;
    ov01_02209B64->unk2 = 0;
    ov01_02209B64->unk4 = a0;
    GfGfx_EngineATogglePlanes(GX_PLANEMASK_BG1, GF_PLANE_TOGGLE_OFF);
    GfGfx_EngineATogglePlanes(GX_PLANEMASK_BG2, GF_PLANE_TOGGLE_OFF);
    GfGfx_EngineATogglePlanes(GX_PLANEMASK_BG3, GF_PLANE_TOGGLE_OFF);
    GX_ResetBankForBG();
    MI_CpuClearFast((void *)HW_LCDC_VRAM_C, HW_VRAM_C_SIZE);
    GX_SetCapture(GX_CAPTURE_SIZE_256x192, GX_CAPTURE_MODE_AB, GX_CAPTURE_SRCA_2D3D, GX_CAPTURE_SRCB_VRAM_0x00000, GX_CAPTURE_DEST_VRAM_C_0x00000, 4, 12);
    SysTask_CreateOnVWaitQueue(ov01_021F1094, ov01_02209B64, 0x400);
    SysTask_CreateOnMainQueue(ov01_021F10C8, ov01_02209B64, 0x400);
}
