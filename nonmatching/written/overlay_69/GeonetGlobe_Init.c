#include "global.h"
#include "bg_window.h"
#include "camera.h"
#include "gf_3d_render.h"
#include "gf_gfx_planes.h"
#include "heap.h"
#include "message_format.h"
#include "overlay_manager.h"
#include "player_data.h"
#include "pm_version.h"
#include "render_text.h"
#include "save_wifi_history.h"
#include "system.h"
#include "text.h"

typedef struct UnkStruct_GeonetGlobe {
    /* 0x000 */ u32 heapId;
    /* 0x004 */ SaveWiFiHistory *wiFiHistory;
    /* 0x008 */ Options *options;
    /* 0x00C */ u8 filler_00C[0xC004];
    /* 0xC010 */ BgConfig *bgConfig;
    /* 0xC014 */ u8 filler_C014[0x6C];
    /* 0xC080 */ MessageFormat *msgFmt;
    /* 0xC084 */ u8 filler_C084[0x258];
    /* 0xC2DC */ Camera *camera;
    /* 0xC2E0 */ u8 filler_C2E0[0x18];
    /* 0xC2F8 */ u32 unk_C2F8;
    /* 0xC2FC */ u8 filler_C2FC[0x4];
    /* 0xC300 */ u32 isJapanese;
    /* 0xC304 */ u8 filler_C304[0x20];
    /* 0xC324 */ u32 country;
    /* 0xC328 */ u32 region;
    /* 0xC32C */ u8 filler_C32C[0x8];
    /* 0xC334 */ u32 nonJapaneseFlag;
    /* 0xC338 */ u8 filler_C338[0x4];
} UnkStruct_GeonetGlobe;

void ov69_021E60F8(void);
void ov69_021E6118(void);
void ov69_021E6138(UnkStruct_GeonetGlobe *work);

s32 GeonetGlobe_Init(OverlayManager *man, int *state) {
    UnkStruct_GeonetGlobe *work;
    SaveData *saveData;
    vu32 *dispcntA = (vu32 *)0x04000000;
    vu32 *dispcntB = (vu32 *)0x04001000;

    Main_SetVBlankIntrCB(NULL, NULL);
    Main_SetHBlankIntrCB(NULL, NULL);
    GfGfx_DisableEngineAPlanes();
    GfGfx_DisableEngineBPlanes();
    *dispcntA = *dispcntA & 0xFFFFE0FF;
    *dispcntB = *dispcntB & 0xFFFFE0FF;
    Heap_Create(3, 0x31, 0x80000);
    work = OverlayManager_CreateAndGetData(man, 0xC33C, 0x31);
    memset(work, 0, 0xC33C);
    work->heapId = 0x31;
    if (gGameLanguage == 1) {
        work->isJapanese = 1;
    } else {
        work->isJapanese = 0;
    }
    saveData = OverlayManager_GetArgs(man);
    work->wiFiHistory = Save_WiFiHistory_Get(saveData);
    work->country = WifiHistory_GetPlayerCountry(work->wiFiHistory);
    work->region = WiFiHistory_GetPlayerRegion(work->wiFiHistory);
    work->nonJapaneseFlag = WiFiHistory_GetNonJapaneseFlag(work->wiFiHistory);
    work->options = Save_PlayerData_GetOptionsAddr(saveData);
    ov69_021E60F8();
    ov69_021E6118();
    GF3dRender_InitSimpleManager((u8)work->heapId);
    work->bgConfig = BgConfig_Alloc(work->heapId);
    GfGfx_BothDispOn();
    ResetAllTextPrinters();
    work->msgFmt = MessageFormat_New_Custom(8, 0x40, work->heapId);
    work->camera = Camera_New(work->heapId);
    work->unk_C2F8 = 0;
    gSystem.screensFlipped = 1;
    GfGfx_SwapDisplay();
    SetKeyRepeatTimers(4, 8);
    TextFlags_SetCanABSpeedUpPrint(TRUE);
    TextFlags_SetAutoScrollParam(0);
    TextFlags_SetCanTouchSpeedUpPrint(FALSE);
    ov69_021E6138(work);
    return 1;
}
