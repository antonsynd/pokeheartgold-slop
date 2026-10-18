#include "global.h"

#include "gf_gfx_planes.h"
#include "heap.h"
#include "overlay_01_021F467C.h"
#include "screen_fade.h"
#include "sys_task_api.h"

typedef struct Ov116CameraParams {
    u8 filler_0[10];
    u16 frameDelay;
} Ov116CameraParams;

typedef struct Ov116MythicalEffect {
    u32 motionBlur;
    u8 filler_4[4];
    u32 cameraState;
    int frameDelay;
} Ov116MythicalEffect;

typedef struct Ov116EncounterEffect {
    int state;
    int effectComplete;
    u8 filler_08[4];
    Ov116MythicalEffect *param;
    void *fieldSystem;
    int *done;
} Ov116EncounterEffect;

extern const Ov116CameraParams ov116_0225F3AC[];

void ov01_021EFCF8(int a0, int a1, int a2, int *a3, int a4);
void ov01_021EFCDC(Ov116EncounterEffect *encEffect, SysTask *task);
void ov116_0225F020(void *fieldSystem, const Ov116CameraParams *params);

void ov116_0225F054(SysTask *task, void *param) {
    Ov116EncounterEffect *encEffect = param;
    Ov116MythicalEffect *mythicalEffect = encEffect->param;

    switch (encEffect->state) {
    case 0:
        encEffect->param = Heap_Alloc(HEAP_ID_FIELD1, sizeof(Ov116MythicalEffect));
        memset(encEffect->param, 0, sizeof(Ov116MythicalEffect));
        GfGfx_EngineATogglePlanes(GX_PLANEMASK_BG1, GF_PLANE_TOGGLE_OFF);
        GfGfx_EngineATogglePlanes(GX_PLANEMASK_BG2, GF_PLANE_TOGGLE_OFF);
        GfGfx_EngineATogglePlanes(GX_PLANEMASK_BG3, GF_PLANE_TOGGLE_OFF);
        encEffect->state++;
        break;
    case 1:
        ov01_021EFCF8(1, 16, 16, &encEffect->effectComplete, 1);
        encEffect->state++;
        break;
    case 2:
        if (encEffect->effectComplete) {
            encEffect->state++;
        }
        break;
    case 3:
        mythicalEffect->motionBlur = ov01_021F467C(3, 15);
        mythicalEffect->cameraState = 0;
        mythicalEffect->frameDelay = ov116_0225F3AC[mythicalEffect->cameraState].frameDelay;
        encEffect->state++;
        break;
    case 4:
        mythicalEffect->frameDelay--;
        if (mythicalEffect->frameDelay < 0) {
            ov116_0225F020(encEffect->fieldSystem, &ov116_0225F3AC[mythicalEffect->cameraState]);
            mythicalEffect->cameraState++;
            if (mythicalEffect->cameraState >= 16) {
                encEffect->state++;
            } else {
                mythicalEffect->frameDelay = ov116_0225F3AC[mythicalEffect->cameraState].frameDelay;
            }
        }
        break;
    case 5:
        BeginNormalPaletteFade(3, 0, 0, RGB_WHITE, 10, 1, HEAP_ID_FIELD1);
        encEffect->state++;
        break;
    case 6:
        if (IsPaletteFadeFinished()) {
            encEffect->effectComplete = FALSE;
            encEffect->state++;
        }
        break;
    case 7:
        sub_0200FBF4(PM_LCD_BOTTOM, RGB_WHITE);
        ov01_021F46DC(&mythicalEffect->motionBlur);
        G2_BlendNone();
        if (encEffect->done != NULL) {
            *encEffect->done = TRUE;
        }
        ov01_021EFCDC(encEffect, task);
        sub_0200FBF4(PM_LCD_BOTTOM, RGB_WHITE);
        break;
    }
}
