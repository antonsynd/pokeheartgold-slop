#include "global.h"

#include "bg_window.h"
#include "gf_gfx_loader.h"
#include "unk_0200B150.h"
#include "vram_transfer_manager.h"

typedef struct Ov65PalFile {
    u16 narcId;
    u8 filler_02[2];
    u16 memberNo;
    u8 filler_06[0xA];
} Ov65PalFile;

typedef struct Ov65_0221CE1C {
    u8 filler_0000[0x180];
    BgConfig *bgConfig;
    u8 filler_0184[0x678];
    u8 charData[2][0xC80];
    Ov65PalFile palFiles[2];
    int pendingIcon;
} Ov65_0221CE1C;

void ov65_0221CE1C(Ov65_0221CE1C *a0) {
    int index;

    DoScheduledBgGpuUpdates(a0->bgConfig);
    if (a0->pendingIcon != 0) {
        index = a0->pendingIcon - 1;
        GXS_LoadOBJ(a0->charData[index], index * 0xC80, 0xC80);
        GfGfxLoader_GXLoadPal((NarcId)a0->palFiles[index].narcId, a0->palFiles[index].memberNo, GF_PAL_LOCATION_SUB_OBJ, (enum GFPalSlotOffset)((index + 2) * 32), 0x20, HEAP_ID_26);
        a0->pendingIcon = 0;
    }
    GF_RunVramTransferTasks();
    OamManager_ApplyAndResetBuffers();
    OS_SetIrqCheckFlag(OS_IE_V_BLANK);
}
