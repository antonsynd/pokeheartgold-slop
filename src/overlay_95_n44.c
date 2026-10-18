#include "global.h"

#include "bg_window.h"
#include "filesystem.h"
#include "heap.h"
#include "options.h"
#include "overlay_95.h"
#include "palette.h"
#include "pokepic.h"
#include "render_text.h"
#include "system.h"
#include "unk_02005D10.h"
#include "vram_transfer_manager.h"

typedef struct HatchEggArgs {
    u8 filler_00[0x10];
    Options *options;
} HatchEggArgs;

typedef struct HatchEggGraphics {
    BgConfig *bgConfig;
    PaletteData *plttData;
    u8 filler_08[4];
    u32 textFrameDelay;
    u32 frame;
    u8 filler_14[0x20];
    void *g3dPipeline;
    PokepicManager *pokepicManager;
    NARC *narc;
    u8 filler_40[0xC];
    void *unk4C;
    void *unk50;
    void *animMan;
    u8 filler_58[0x2C];
    void *unk84;
} HatchEggGraphics;

typedef struct HatchEggApp {
    HatchEggArgs *args;
    HatchEggGraphics graphics;
} HatchEggApp;

void *ov95_021E5954(void);
void *sub_02016EDC(enum HeapID heapId, int a1, BOOL a2);
void ov95_021E5900(void);
void ov95_021E5928(void);
void ov95_021E59F8(void);
void ov95_021E5A38(BgConfig *bgConfig);
void ov95_021E6FC4(BgConfig *bgConfig);
void ov95_021E619C(HatchEggGraphics *graphics);
void *ov95_021E7020(BgConfig *bgConfig, void *a1, void *a2, enum HeapID heapId);
void ov95_021E5B24(void *data);

BOOL HatchEggApp_Init(OverlayManager *manager, int *state) {
    HatchEggApp *app;

    Main_SetVBlankIntrCB(NULL, NULL);
    HBlankInterruptDisable();
    Heap_Create(HEAP_ID_3, HEAP_ID_70, 0x40000);
    app = OverlayManager_CreateAndGetData(manager, sizeof(HatchEggApp), HEAP_ID_70);
    memset(app, 0, sizeof(HatchEggApp));
    app->args = OverlayManager_GetArgs(manager);
    app->graphics.textFrameDelay = Options_GetTextFrameDelay(app->args->options);
    app->graphics.frame = Options_GetFrame(app->args->options);
    app->graphics.g3dPipeline = ov95_021E5954();
    app->graphics.pokepicManager = PokepicManager_Create(HEAP_ID_70);
    app->graphics.narc = NARC_New(NARC_a_1_8_0, HEAP_ID_70);
    app->graphics.bgConfig = BgConfig_Alloc(HEAP_ID_70);
    GF_CreateVramTransferManager(64, HEAP_ID_70);
    app->graphics.animMan = sub_02016EDC(HEAP_ID_70, 1, FALSE);
    PaletteData_SetAutoTransparent(app->graphics.plttData = PaletteData_Init(HEAP_ID_70), TRUE);
    PaletteData_AllocBuffers(app->graphics.plttData, PLTTBUF_MAIN_BG, 0x200, HEAP_ID_70);
    PaletteData_AllocBuffers(app->graphics.plttData, PLTTBUF_MAIN_OBJ, 0x200, HEAP_ID_70);
    PaletteData_AllocBuffers(app->graphics.plttData, PLTTBUF_SUB_BG, 0x200, HEAP_ID_70);
    PaletteData_LoadNarc(app->graphics.plttData, NARC_graphic_font, 9, HEAP_ID_70, PLTTBUF_SUB_BG, 0x20, 0xF0);
    ov95_021E5900();
    ov95_021E5928();
    ov95_021E59F8();
    ov95_021E5A38(app->graphics.bgConfig);
    ov95_021E6FC4(app->graphics.bgConfig);
    ov95_021E619C(&app->graphics);
    TextFlags_SetCanTouchSpeedUpPrint(TRUE);
    app->graphics.unk84 = ov95_021E7020(app->graphics.bgConfig, app->graphics.unk50, app->graphics.unk4C, HEAP_ID_70);
    Sound_Stop();
    Main_SetVBlankIntrCB(ov95_021E5B24, app);
    return TRUE;
}
