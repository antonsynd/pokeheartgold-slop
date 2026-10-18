#include "global.h"

#include "bg_window.h"
#include "palette.h"
#include "pokepic.h"
#include "unk_0200B150.h"
#include "vram_transfer_manager.h"

typedef struct Ov81_022401C8 {
    u8 filler_000[4];
    int unk004;
    u8 filler_008[0x44];
    BgConfig *bgConfig;
    u8 filler_050[0x150];
    PaletteData *paletteData;
    u8 filler_1A4[4];
    PokepicManager *pokepicManager;
} Ov81_022401C8;

void ov81_022401C8(Ov81_022401C8 *a0) {
    if (a0->unk004 == 0) {
        PokepicManager_HandleLoadImgAndOrPltt(a0->pokepicManager);
        if (a0->paletteData != NULL) {
            PaletteData_PushTransparentBuffers(a0->paletteData);
        }
        DoScheduledBgGpuUpdates(a0->bgConfig);
        GF_RunVramTransferTasks();
        OamManager_ApplyAndResetBuffers();
        OS_SetIrqCheckFlag(OS_IE_V_BLANK);
    }
}
