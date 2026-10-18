#include "global.h"

#include "bg_window.h"
#include "gf_gfx_loader.h"
#include "gf_gfx_planes.h"
#include "palette.h"
#include "touch_hitbox_controller.h"

typedef struct Ov40Menu {
    int unk000;
    int unk004;
    int unk008;
    u8 filler_00C[0x4B4];
    u16 unk4C0;
    u8 unk4C2;
    u8 unk4C3;
    u8 unk4C4;
    u8 filler_4C5[0x4F];
    int unk514;
    u8 filler_518[0xF0];
    TouchHitboxController *unk608;
    TouchHitboxController *unk60C;
} Ov40Menu;

typedef struct Ov40App {
    u8 filler_000[0x8];
    int unk008;
    u8 filler_00C[0x8];
    NARC *narc;
    u8 filler_018[0xC];
    BgConfig *bgConfig;
    PaletteData *paletteData;
    u8 filler_02C[0x2C];
    int unk058;
    u8 filler_05C[0x804];
    Ov40Menu *menu;
} Ov40App;

extern const TouchscreenHitbox ov40_022456C4[];
extern const TouchscreenHitbox ov40_02245708[];

void ov40_02230738(void);
void ov40_0222D9E8(Ov40Menu *menu, int *a1, int a2);
BOOL ov40_0222DA00(Ov40Menu *menu, int *a1, int a2, int a3);
void ov40_0222DA84(int *a0, int a1);
void ov40_0222DED0(Ov40App *app, int a1);
void ov40_022307DC(Ov40App *app, int a1, int a2);
void ov40_02242110(Ov40App *app);
void ov40_022420B4(Ov40App *app, int a1);
void ov40_02241D10(u32 index, u32 event, void *arg);
void ov40_02241E14(u32 index, u32 event, void *arg);
void ov40_0223DBD4(Ov40App *app, int mode);
void ov40_0223DF1C(Ov40App *app, int a1);
void ov40_0223DD68(Ov40App *app, u16 a1);
void ov40_0223DCF0(Ov40App *app, u8 a1);
void ov40_0223DDE8(Ov40App *app, u8 a1, u8 a2);
void ov40_0222BF80(Ov40App *app, int a1);

BOOL ov40_0223E190(Ov40App *app) {
    Ov40Menu *menu = app->menu;

    switch (app->unk008) {
    case 0:
        ov40_02230738();
        ov40_0222D9E8(menu, &menu->unk004, 0);
        GfGfxLoader_LoadCharDataFromOpenNarc(app->narc, 62, app->bgConfig, GF_BG_LYR_MAIN_3, 0, 0, FALSE, HEAP_ID_109);
        GfGfxLoader_LoadCharDataFromOpenNarc(app->narc, 62, app->bgConfig, GF_BG_LYR_SUB_3, 0, 0, FALSE, HEAP_ID_109);
        ov40_022307DC(app, 56, 3);
        ov40_022307DC(app, 59, 7);
        GfGfx_EngineATogglePlanes(GX_PLANEMASK_BG3, GF_PLANE_TOGGLE_ON);
        GfGfx_EngineBTogglePlanes(GX_PLANEMASK_BG3, GF_PLANE_TOGGLE_ON);
        ov40_02242110(app);
        ov40_022420B4(app, 0);
        menu->unk514 = 500;
        menu->unk608 = TouchHitboxController_Create(ov40_022456C4, 5, ov40_02241D10, app, HEAP_ID_109);
        menu->unk60C = TouchHitboxController_Create(ov40_02245708, 9, ov40_02241E14, app, HEAP_ID_109);
        app->unk008++;
        break;
    case 1:
        ov40_0222DA84(&menu->unk008, 0);
        if (ov40_0222DA00(menu, &menu->unk004, 0, 0)) {
            ov40_0222DED0(app, 124);
            menu->unk4C0 = 0xFFFF;
            menu->unk4C2 = 0xFF;
            menu->unk4C3 = 0xFF;
            menu->unk4C4 = 0xFF;
            ov40_0223DBD4(app, 0);
            ov40_0223DF1C(app, 0);
            ov40_0223DD68(app, menu->unk4C0);
            ov40_0223DCF0(app, menu->unk4C2);
            ov40_0223DDE8(app, menu->unk4C3, menu->unk4C4);
            GfGfx_EngineATogglePlanes(GX_PLANEMASK_BG2, GF_PLANE_TOGGLE_ON);
            GfGfx_EngineBTogglePlanes(GX_PLANEMASK_BG2, GF_PLANE_TOGGLE_ON);
            app->unk008++;
        }
        PaletteData_BlendPalettes(app->paletteData, PLTTBUF_SUB_OBJ, 0xC, menu->unk008, app->unk058);
        break;
    default:
        ov40_0222BF80(app, 3);
        break;
    }
    return FALSE;
}
