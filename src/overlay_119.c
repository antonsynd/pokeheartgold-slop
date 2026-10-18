#include "global.h"

#include "bg_window.h"
#include "camera.h"
#include "field_system.h"
#include "gf_gfx_planes.h"
#include "heap.h"
#include "screen_fade.h"
#include "sprite.h"
#include "sys_task.h"

// Trainer encounter transition effects. The helpers they use live in
// overlay_01_021EFB38 (Platinum: overlay005/encounter_effect.c), which has
// no header yet, so they are declared here.

typedef struct EncounterEffect {
    int state;
    BOOL effectComplete;
    u8 filler_08[4];
    void *param;
    FieldSystem *fieldSystem;
    BOOL *done;
    u8 filler_18[8];
    void *narc;
} EncounterEffect;

typedef struct LinearInterpS32 {
    int currentValue;
    u8 filler_04[0x10];
} LinearInterpS32;

typedef struct LinearInterpFX32 {
    fx32 currentValue;
    u8 filler_04[0x10];
} LinearInterpFX32;

typedef struct QuadInterpFX32 {
    fx32 currentValue;
    u8 filler_04[0x14];
} QuadInterpFX32;

typedef struct EncounterEffectSprites {
    SpriteList *spriteList;
    u8 filler_04[0x138];
} EncounterEffectSprites;

typedef struct EncounterEffectSpriteRes {
    u8 filler_00[0x34];
} EncounterEffectSpriteRes;

typedef struct EncounterEffectWave {
    u8 filler_00[0xC];
} EncounterEffectWave;

void ov01_021EFCDC(EncounterEffect *encEffect, SysTask *task);
void ov01_021EFCF8(int screen, int start, int end, BOOL *done, int framesPerStep);
BOOL ov01_021EFE30(EncounterEffect *encEffect);
void ov01_021EFE34(LinearInterpS32 *task, int start, int end, int steps);
BOOL ov01_021EFE44(LinearInterpS32 *task);
void ov01_021EFE70(LinearInterpFX32 *task, fx32 start, fx32 end, int steps);
BOOL ov01_021EFE80(LinearInterpFX32 *task);
void ov01_021EFEC8(QuadInterpFX32 *task, fx32 start, fx32 end, fx32 accel, int steps);
BOOL ov01_021EFF28(QuadInterpFX32 *task);
void *ov01_021EFFEC(void);
void ov01_021F0028(void *screenSlice);
void ov01_021F0050(EncounterEffect *encEffect, void *screenSlice, int a2, int a3, int a4, fx32 a5, fx32 a6);
void *ov01_021F0250(void);
void ov01_021F029C(void *screenSplit);
void ov01_021F02C4(EncounterEffect *encEffect, void *screenSplit, int a2, fx32 a3, fx32 a4);
void ov01_021F05C4(EncounterEffectSprites *sprites, int a1, int a2);
void ov01_021F05F4(EncounterEffectSprites *sprites);
void ov01_021F0614(void *narc, EncounterEffectSprites *sprites, EncounterEffectSpriteRes *res, int a3, int a4, int a5, int a6, int a7, int a8);
void ov01_021F06EC(EncounterEffectSprites *sprites, EncounterEffectSpriteRes *res);
Sprite *ov01_021F0718(EncounterEffectSprites *sprites, EncounterEffectSpriteRes *res, fx32 x, fx32 y, fx32 z, int a5);
VecFx32 ov01_021F074C(fx32 x, fx32 y, fx32 z);
void *ov01_021F0768(enum HeapID heapID);
void ov01_021F0780(void *a0);
void ov01_021F0788(void *a0, int a1, int a2, int a3, int a4, int a5, Window *window, int a7, int a8, int a9);
BOOL ov01_021F07E0(void *a0);
void *ov01_021F09BC(enum HeapID heapID);
void ov01_021F09EC(void *a0);
void ov01_021F0A0C(void *a0, int a1, int a2, Window *window, int a4);
BOOL ov01_021F0A4C(void *a0);
void ov01_021F12B4(EncounterEffectWave *wave, enum HeapID heapID);
void ov01_021F12D0(EncounterEffectWave *wave);
void ov01_021F12E8(EncounterEffectWave *wave, int a1, int a2, int a3, fx32 a4, int a5, u32 reg, int a7, int a8);
void ov01_021F1310(EncounterEffectWave *wave, int a1);
void sub_0200FC20(int a0);
void HBlankSystem_Start(HBlankSystem *hBlankSystem);
void HBlankSystem_Stop(HBlankSystem *hBlankSystem);

typedef struct Ov119_0225F020 {
    QuadInterpFX32 scale;
    LinearInterpS32 rotation;
    QuadInterpFX32 spread;
    void *screenSlice;
    EncounterEffectSprites sprites;
    EncounterEffectSpriteRes spriteRes;
    Sprite *pokeballs[2];
    Camera *camera;
    QuadInterpFX32 cameraDistance;
    u8 filler_1DC[4];
} Ov119_0225F020;

typedef struct Ov119_0225F37C {
    LinearInterpFX32 position;
    LinearInterpS32 rotation;
    void *screenSplit;
    EncounterEffectSprites sprites;
    EncounterEffectSpriteRes spriteRes;
    Sprite *pokeballs[2];
    Camera *camera;
    QuadInterpFX32 cameraDistance;
    u8 filler_1C0[4];
} Ov119_0225F37C;

typedef struct Ov119_0225F670 {
    QuadInterpFX32 scale;
    LinearInterpS32 alpha;
    LinearInterpS32 rotation;
    EncounterEffectWave wave;
    BOOL waveActive;
    EncounterEffectSprites sprites;
    EncounterEffectSpriteRes spriteRes;
    Sprite *pokeballs[2];
    Camera *camera;
    QuadInterpFX32 cameraDistance;
    int delay;
} Ov119_0225F670;

typedef struct Ov119_0225FA2C {
    EncounterEffectSprites sprites;
    EncounterEffectSpriteRes spriteRes;
    Sprite *pokeballs[3];
    LinearInterpS32 height[3];
    LinearInterpS32 rotation[3];
    void *trails[3];
    BOOL active[3];
    Window *window;
    EncounterEffectWave wave;
    BOOL waveActive;
    Camera *camera;
    QuadInterpFX32 cameraDistance;
    int timer;
} Ov119_0225FA2C;

typedef struct Ov119_0225FF9C {
    QuadInterpFX32 position;
    QuadInterpFX32 scaleX;
    QuadInterpFX32 scaleY;
    LinearInterpS32 rotation;
    EncounterEffectSprites sprites;
    EncounterEffectSpriteRes spriteRes;
    Sprite *pokeball;
    Camera *camera;
    QuadInterpFX32 cameraDistance;
    u8 filler_1EC[4];
} Ov119_0225FF9C;

typedef struct Ov119_02260258 {
    EncounterEffectSprites sprites;
    EncounterEffectSpriteRes spriteRes;
    Sprite *pokeballs[3];
    LinearInterpS32 height[3];
    LinearInterpS32 rotation[3];
    BOOL active[3];
    Window *window;
    void *fade;
    Camera *camera;
    QuadInterpFX32 cameraDistance;
    s16 timer;
} Ov119_02260258;

void ov119_0225F020(SysTask *task, EncounterEffect *encEffect) {
    Ov119_0225F020 *data = encEffect->param;
    BOOL done;
    VecFx32 scale;
    int i;

    switch (encEffect->state) {
    case 0:
        encEffect->param = Heap_Alloc(HEAP_ID_FIELD1, sizeof(Ov119_0225F020));
        memset(encEffect->param, 0, sizeof(Ov119_0225F020));
        data = encEffect->param;
        data->camera = encEffect->fieldSystem->camera;
        data->screenSlice = ov01_021EFFEC();
        ov01_021F05C4(&data->sprites, 2, 1);
        ov01_021F0614(encEffect->narc, &data->sprites, &data->spriteRes, 0, 1, 7, 9, 8, 600000);
        for (i = 0; i < 2; i++) {
            data->pokeballs[i] = ov01_021F0718(&data->sprites, &data->spriteRes, 128 * FX32_ONE, 96 * FX32_ONE, 0, 0);
            Sprite_SetDrawFlag(data->pokeballs[i], FALSE);
            Sprite_SetDrawPriority(data->pokeballs[i], i * 2);
        }
        GfGfx_EngineATogglePlanes(GX_PLANEMASK_OBJ, GF_PLANE_TOGGLE_ON);
        encEffect->state++;
        break;
    case 1:
        ov01_021EFCF8(1, -16, -16, &encEffect->effectComplete, 2);
        encEffect->state++;
        break;
    case 2:
        if (encEffect->effectComplete) {
            encEffect->state++;
        }
        break;
    case 3:
        ov01_021EFEC8(&data->scale, 0x29, FX32_ONE, 2, 10);
        scale = ov01_021F074C(data->scale.currentValue, data->scale.currentValue, data->scale.currentValue);
        for (i = 0; i < 2; i++) {
            Sprite_SetDrawFlag(data->pokeballs[i], TRUE);
            Sprite_SetAffineOverwriteMode(data->pokeballs[i], 2);
            Sprite_SetAffineScale(data->pokeballs[i], &scale);
        }
        ov01_021EFE34(&data->rotation, 0, 0xFFFF, 10);
        encEffect->state++;
        break;
    case 4:
        done = ov01_021EFF28(&data->scale);
        scale = ov01_021F074C(data->scale.currentValue, data->scale.currentValue, data->scale.currentValue);
        ov01_021EFE44(&data->rotation);
        for (i = 0; i < 2; i++) {
            Sprite_SetAffineScale(data->pokeballs[i], &scale);
        }
        Sprite_SetAffineZRotation(data->pokeballs[0], (u16)data->rotation.currentValue);
        Sprite_SetAffineZRotation(data->pokeballs[1], (u16)(data->rotation.currentValue - 0x100));
        if (done == TRUE) {
            encEffect->state++;
        }
        break;
    case 5:
        ov01_021F0050(encEffect, data->screenSlice, 96, 6, 0, FX32_CONST(255), FX32_CONST(10));
        Sprite_SetAnimCtrlSeq(data->pokeballs[0], 1);
        Sprite_SetAnimCtrlSeq(data->pokeballs[1], 2);
        ov01_021EFEC8(&data->spread, 0, FX32_CONST(255), FX32_CONST(10), 6);
        {
            fx32 distance = Camera_GetDistance(data->camera);
            ov01_021EFEC8(&data->cameraDistance, distance, distance - FX32_CONST(500), -FX32_CONST(10), 6);
        }
        Sprite_SetAffineZRotation(data->pokeballs[0], 0);
        Sprite_SetAffineZRotation(data->pokeballs[1], 0);
        encEffect->state++;
        break;
    case 6:
        ov01_021EFF28(&data->spread);
        {
            VecFx32 left = ov01_021F074C(128 * FX32_ONE - data->spread.currentValue, 96 * FX32_ONE, 0);
            VecFx32 right = ov01_021F074C(data->spread.currentValue + 128 * FX32_ONE, 96 * FX32_ONE, 0);
            Sprite_SetMatrix(data->pokeballs[0], &left);
            Sprite_SetMatrix(data->pokeballs[1], &right);
        }
        ov01_021EFF28(&data->cameraDistance);
        Camera_SetDistance(data->cameraDistance.currentValue, data->camera);
        if (ov01_021EFE30(encEffect)) {
            encEffect->state++;
        }
        break;
    case 7:
        sub_0200FC20(0);
        if (encEffect->done != NULL) {
            *encEffect->done = TRUE;
        }
        for (i = 0; i < 2; i++) {
            Sprite_Delete(data->pokeballs[i]);
        }
        ov01_021F06EC(&data->sprites, &data->spriteRes);
        ov01_021F05F4(&data->sprites);
        ov01_021F0028(data->screenSlice);
        ov01_021EFCDC(encEffect, task);
        break;
    }

    if (encEffect->state != 7) {
        SpriteList_RenderAndAnimateSprites(data->sprites.spriteList);
    }
}

void ov119_0225F37C(SysTask *task, EncounterEffect *encEffect) {
    Ov119_0225F37C *data = encEffect->param;
    BOOL done;
    int i;

    switch (encEffect->state) {
    case 0:
        encEffect->param = Heap_Alloc(HEAP_ID_FIELD1, sizeof(Ov119_0225F37C));
        memset(encEffect->param, 0, sizeof(Ov119_0225F37C));
        data = encEffect->param;
        data->camera = encEffect->fieldSystem->camera;
        data->screenSplit = ov01_021F0250();
        ov01_021F05C4(&data->sprites, 2, 1);
        ov01_021F0614(encEffect->narc, &data->sprites, &data->spriteRes, 0, 1, 4, 6, 5, 600000);
        for (i = 0; i < 2; i++) {
            data->pokeballs[i] = ov01_021F0718(&data->sprites, &data->spriteRes, 128 * FX32_ONE, 0, 0, 0);
            Sprite_SetDrawFlag(data->pokeballs[i], FALSE);
            Sprite_SetAffineOverwriteMode(data->pokeballs[i], 2);
        }
        GfGfx_EngineATogglePlanes(GX_PLANEMASK_OBJ, GF_PLANE_TOGGLE_ON);
        encEffect->state++;
        break;
    case 1:
        ov01_021EFCF8(1, 16, -16, &encEffect->effectComplete, 2);
        encEffect->state++;
        break;
    case 2:
        if (encEffect->effectComplete) {
            encEffect->state++;
        }
        break;
    case 3:
        ov01_021EFE70(&data->position, -192 * FX32_ONE, 192 * FX32_ONE, 8);
        Sprite_SetDrawFlag(data->pokeballs[0], TRUE);
        Sprite_SetDrawFlag(data->pokeballs[1], TRUE);
        {
            VecFx32 left = ov01_021F074C(128 * FX32_ONE - data->position.currentValue, 64 * FX32_ONE, 0);
            VecFx32 right = ov01_021F074C(data->position.currentValue + 128 * FX32_ONE, 128 * FX32_ONE, 0);
            Sprite_SetMatrix(data->pokeballs[0], &left);
            Sprite_SetMatrix(data->pokeballs[1], &right);
        }
        ov01_021EFE34(&data->rotation, 0, 0xFFFF * 2, 8);
        encEffect->state++;
        break;
    case 4:
        done = ov01_021EFE80(&data->position);
        {
            VecFx32 left = ov01_021F074C(128 * FX32_ONE - data->position.currentValue, 64 * FX32_ONE, 0);
            VecFx32 right = ov01_021F074C(data->position.currentValue + 128 * FX32_ONE, 128 * FX32_ONE, 0);
            Sprite_SetMatrix(data->pokeballs[0], &left);
            Sprite_SetMatrix(data->pokeballs[1], &right);
        }
        ov01_021EFE44(&data->rotation);
        Sprite_SetAffineZRotation(data->pokeballs[0], (u16)data->rotation.currentValue);
        Sprite_SetAffineZRotation(data->pokeballs[1], (u16)-data->rotation.currentValue);
        if (done == TRUE) {
            encEffect->state++;
        }
        break;
    case 5:
        ov01_021F02C4(encEffect, data->screenSplit, 8, FX32_ONE, FX32_ONE);
        {
            fx32 distance = Camera_GetDistance(data->camera);
            ov01_021EFEC8(&data->cameraDistance, distance, distance - FX32_CONST(500), -FX32_CONST(10), 8);
        }
        encEffect->state++;
        break;
    case 6:
        ov01_021EFF28(&data->cameraDistance);
        Camera_SetDistance(data->cameraDistance.currentValue, data->camera);
        if (ov01_021EFE30(encEffect) == TRUE) {
            encEffect->state++;
        }
        break;
    case 7:
        sub_0200FC20(0);
        if (encEffect->done != NULL) {
            *encEffect->done = TRUE;
        }
        for (i = 0; i < 2; i++) {
            Sprite_Delete(data->pokeballs[i]);
        }
        ov01_021F06EC(&data->sprites, &data->spriteRes);
        ov01_021F05F4(&data->sprites);
        ov01_021F029C(data->screenSplit);
        ov01_021EFCDC(encEffect, task);
        break;
    }

    if (encEffect->state != 7) {
        SpriteList_RenderAndAnimateSprites(data->sprites.spriteList);
    }
}

void ov119_0225F670(SysTask *task, EncounterEffect *encEffect) {
    Ov119_0225F670 *data = encEffect->param;
    BOOL done;
    int i;

    switch (encEffect->state) {
    case 0:
        encEffect->param = Heap_Alloc(HEAP_ID_FIELD1, sizeof(Ov119_0225F670));
        memset(encEffect->param, 0, sizeof(Ov119_0225F670));
        data = encEffect->param;
        data->camera = encEffect->fieldSystem->camera;
        ov01_021F12B4(&data->wave, HEAP_ID_FIELD1);
        data->delay = 12;
        ov01_021F05C4(&data->sprites, 2, 1);
        ov01_021F0614(encEffect->narc, &data->sprites, &data->spriteRes, 0, 1, 7, 9, 8, 600000);
        for (i = 0; i < 2; i++) {
            data->pokeballs[i] = ov01_021F0718(&data->sprites, &data->spriteRes, 128 * FX32_ONE, 96 * FX32_ONE, 0, 0);
            Sprite_SetDrawFlag(data->pokeballs[i], FALSE);
            Sprite_SetDrawPriority(data->pokeballs[i], i);
        }
        GfGfx_EngineATogglePlanes(GX_PLANEMASK_OBJ, GF_PLANE_TOGGLE_ON);
        encEffect->state++;
        break;
    case 1:
        ov01_021EFCF8(1, -16, -16, &encEffect->effectComplete, 2);
        encEffect->state++;
        break;
    case 2:
        if (--data->delay == 0) {
            ov01_021F12E8(&data->wave, 0, 191, 0x2AA, 0xC000, 0x320, REG_BG0HOFS_ADDR, 0, 4);
            data->waveActive = TRUE;
        }
        if (encEffect->effectComplete) {
            encEffect->state++;
        }
        break;
    case 3:
        ov01_021EFE34(&data->alpha, 0, 16, 8);
        G2_SetBlendAlpha(0, 0xF, data->alpha.currentValue, 16 - data->alpha.currentValue);
        for (i = 0; i < 2; i++) {
            Sprite_SetDrawFlag(data->pokeballs[i], TRUE);
            Sprite_SetAffineOverwriteMode(data->pokeballs[i], 2);
            Sprite_SetOamMode(data->pokeballs[i], GX_OAM_MODE_XLU);
        }
        ov01_021EFE34(&data->rotation, 0, 0xFFFF, 8);
        encEffect->state++;
        break;
    case 4: {
        int prevRotation;

        done = ov01_021EFE44(&data->alpha);
        reg_G2_BLDALPHA = ((16 - data->alpha.currentValue) << 8) | data->alpha.currentValue;
        prevRotation = (u16)data->rotation.currentValue;
        if (ov01_021EFE44(&data->rotation) == FALSE) {
            Sprite_SetAffineZRotation(data->pokeballs[0], (u16)data->rotation.currentValue);
            Sprite_SetAffineZRotation(data->pokeballs[1], (u16)prevRotation);
        } else {
            Sprite_SetAffineZRotation(data->pokeballs[0], 0);
            Sprite_SetAffineZRotation(data->pokeballs[1], 0);
        }
        if (done == TRUE) {
            reg_G2_BLDCNT = 0;
            for (i = 0; i < 2; i++) {
                Sprite_SetOamMode(data->pokeballs[i], GX_OAM_MODE_NORMAL);
            }
            encEffect->state++;
        }
        break;
    }
    case 5:
        ov01_021EFEC8(&data->scale, FX32_ONE, 0x29, 0x19A, 8);
        {
            VecFx32 scale = ov01_021F074C(data->scale.currentValue, data->scale.currentValue, data->scale.currentValue);
            for (i = 0; i < 2; i++) {
                Sprite_SetAffineScale(data->pokeballs[i], &scale);
            }
        }
        {
            fx32 distance = Camera_GetDistance(data->camera);
            ov01_021EFEC8(&data->cameraDistance, distance, distance - FX32_CONST(500), -FX32_CONST(10), 8);
        }
        BeginNormalPaletteFade(3, 24, 0, 0, 8, 1, HEAP_ID_FIELD1);
        encEffect->state++;
        break;
    case 6:
        done = ov01_021EFF28(&data->scale);
        {
            VecFx32 scale = ov01_021F074C(data->scale.currentValue, data->scale.currentValue, data->scale.currentValue);
            for (i = 0; i < 2; i++) {
                Sprite_SetAffineScale(data->pokeballs[i], &scale);
            }
        }
        ov01_021EFF28(&data->cameraDistance);
        Camera_SetDistance(data->cameraDistance.currentValue, data->camera);
        if (done == TRUE && IsPaletteFadeFinished() == TRUE) {
            encEffect->state++;
        }
        break;
    case 7:
        sub_0200FBF4(1, 0);
        if (encEffect->done != NULL) {
            *encEffect->done = TRUE;
        }
        ov01_021F12D0(&data->wave);
        data->waveActive = FALSE;
        for (i = 0; i < 2; i++) {
            Sprite_Delete(data->pokeballs[i]);
        }
        ov01_021F06EC(&data->sprites, &data->spriteRes);
        ov01_021F05F4(&data->sprites);
        ov01_021EFCDC(encEffect, task);
        return;
    }

    if (data->waveActive == TRUE) {
        ov01_021F1310(&data->wave, 2);
    }
    if (encEffect->state != 7) {
        SpriteList_RenderAndAnimateSprites(data->sprites.spriteList);
    }
}

void ov119_0225FA2C(SysTask *task, EncounterEffect *encEffect) {
    Ov119_0225FA2C *data = encEffect->param;
    VecFx32 pos;
    int i;

    switch (encEffect->state) {
    case 0:
        encEffect->param = Heap_Alloc(HEAP_ID_FIELD1, sizeof(Ov119_0225FA2C));
        memset(encEffect->param, 0, sizeof(Ov119_0225FA2C));
        data = encEffect->param;
        data->camera = encEffect->fieldSystem->camera;
        ov01_021F12B4(&data->wave, HEAP_ID_FIELD1);
        data->timer = 14;
        ov01_021F05C4(&data->sprites, 3, 1);
        ov01_021F0614(encEffect->narc, &data->sprites, &data->spriteRes, 0, 1, 4, 6, 5, 600000);
        for (i = 0; i < 3; i++) {
            data->pokeballs[i] = ov01_021F0718(&data->sprites, &data->spriteRes, 0, 0, 0, 0);
            Sprite_SetDrawFlag(data->pokeballs[i], FALSE);
            Sprite_SetAffineOverwriteMode(data->pokeballs[i], 2);
            data->trails[i] = ov01_021F0768(HEAP_ID_FIELD1);
        }
        GfGfx_EngineATogglePlanes(GX_PLANEMASK_OBJ, GF_PLANE_TOGGLE_ON);
        data->window = AllocWindows(HEAP_ID_FIELD1, 1);
        AddWindowParameterized(encEffect->fieldSystem->bgConfig, data->window, 3, 0, 0, 32, 32, 0, 0);
        {
            u16 color = 0;
            BG_LoadPlttData(3, &color, sizeof(color), 0x1E);
        }
        FillWindowPixelBuffer(data->window, 0);
        ScheduleWindowCopyToVram(data->window);
        encEffect->state++;
        break;
    case 1:
        ov01_021EFCF8(1, 16, -16, &encEffect->effectComplete, 2);
        encEffect->state++;
        break;
    case 2:
        if (--data->timer == 0) {
            ov01_021F12E8(&data->wave, 0, 191, 0x2AA, 0xC000, 0x320, REG_BG0HOFS_ADDR, 0, 4);
            data->waveActive = TRUE;
        }
        if (encEffect->effectComplete) {
            data->timer = 6;
            encEffect->state++;
        }
        break;
    case 3:
        if (--data->timer < 0) {
            fx32 distance = Camera_GetDistance(data->camera);
            ov01_021EFEC8(&data->cameraDistance, distance, distance - FX32_CONST(500), -FX32_CONST(10), 16);
            ov01_021EFE34(&data->rotation[0], 0, 0xFFFF, 6);
            ov01_021EFE34(&data->height[0], 231, -32, 6);
            ov01_021F0788(data->trails[0], 43, 43, 312, 0, 6, data->window, 86, 64, 15);
            pos = ov01_021F074C(FX32_CONST(43), FX32_CONST(231), 0);
            Sprite_SetMatrix(data->pokeballs[0], &pos);
            Sprite_SetDrawFlag(data->pokeballs[0], TRUE);
            data->active[0] = TRUE;
            encEffect->state++;
            data->timer = 4;
        }
        break;
    case 4:
        if (--data->timer < 0) {
            ov01_021EFE34(&data->height[1], 231, -32, 6);
            ov01_021EFE34(&data->rotation[1], 0, -0xFFFF, 6);
            ov01_021F0788(data->trails[1], 215, 215, 312, 0, 6, data->window, 86, 64, 15);
            pos = ov01_021F074C(FX32_CONST(215), FX32_CONST(231), 1);
            Sprite_SetMatrix(data->pokeballs[1], &pos);
            Sprite_SetDrawFlag(data->pokeballs[1], TRUE);
            data->active[1] = TRUE;
            encEffect->state++;
            data->timer = 2;
        }
        break;
    case 5:
        if (--data->timer < 0) {
            ov01_021EFE34(&data->height[2], 231, -32, 6);
            ov01_021EFE34(&data->rotation[2], 0, 0xFFFF, 6);
            ov01_021F0788(data->trails[2], 129, 129, 312, 0, 6, data->window, 86, 64, 15);
            pos = ov01_021F074C(FX32_CONST(129), FX32_CONST(231), 2);
            Sprite_SetMatrix(data->pokeballs[2], &pos);
            Sprite_SetDrawFlag(data->pokeballs[2], TRUE);
            data->active[2] = TRUE;
            encEffect->state++;
        }
        break;
    case 6:
        ov01_021EFF28(&data->cameraDistance);
        Camera_SetDistance(data->cameraDistance.currentValue, data->camera);
        if (data->active[0] == FALSE && data->active[1] == FALSE && data->active[2] == FALSE) {
            encEffect->state++;
        }
        break;
    case 7:
        sub_0200FC20(0);
        if (encEffect->done != NULL) {
            *encEffect->done = TRUE;
        }
        ov01_021F12D0(&data->wave);
        data->waveActive = FALSE;
        for (i = 0; i < 3; i++) {
            Sprite_Delete(data->pokeballs[i]);
            ov01_021F0780(data->trails[i]);
        }
        ov01_021F06EC(&data->sprites, &data->spriteRes);
        ov01_021F05F4(&data->sprites);
        ClearWindowTilemapAndCopyToVram(data->window);
        RemoveWindow(data->window);
        WindowArray_Delete(data->window, 1);
        BG_ClearCharDataRange(3, 0x20, 0, HEAP_ID_FIELD1);
        BgClearTilemapBufferAndCommit(encEffect->fieldSystem->bgConfig, 3);
        ov01_021EFCDC(encEffect, task);
        return;
    }

    if (data->waveActive == TRUE) {
        ov01_021F1310(&data->wave, 2);
    }
    for (i = 0; i < 3; i++) {
        if (data->active[i] == TRUE) {
            if (ov01_021F07E0(data->trails[i])) {
                data->active[i] = FALSE;
            }
            ov01_021EFE44(&data->height[i]);
            ov01_021EFE44(&data->rotation[i]);
            Sprite_SetAffineZRotation(data->pokeballs[i], (u16)data->rotation[i].currentValue);
            {
                VecFx32 matrix = *Sprite_GetMatrixPtr(data->pokeballs[i]);
                matrix.y = data->height[i].currentValue * FX32_ONE;
                Sprite_SetMatrix(data->pokeballs[i], &matrix);
            }
        }
    }
    ScheduleWindowCopyToVram(data->window);
    if (encEffect->state != 7) {
        SpriteList_RenderAndAnimateSprites(data->sprites.spriteList);
    }
}

void ov119_0225FF9C(SysTask *task, EncounterEffect *encEffect) {
    Ov119_0225FF9C *data = encEffect->param;
    BOOL done;
    VecFx32 scale;

    switch (encEffect->state) {
    case 0:
        encEffect->param = Heap_Alloc(HEAP_ID_FIELD1, sizeof(Ov119_0225FF9C));
        memset(encEffect->param, 0, sizeof(Ov119_0225FF9C));
        data = encEffect->param;
        data->camera = encEffect->fieldSystem->camera;
        ov01_021F05C4(&data->sprites, 1, 1);
        ov01_021F0614(encEffect->narc, &data->sprites, &data->spriteRes, 0, 1, 4, 6, 5, 600000);
        data->pokeball = ov01_021F0718(&data->sprites, &data->spriteRes, 128 * FX32_ONE, -32 * FX32_ONE, 0, 0);
        Sprite_SetDrawFlag(data->pokeball, FALSE);
        GfGfx_EngineATogglePlanes(GX_PLANEMASK_OBJ, GF_PLANE_TOGGLE_ON);
        encEffect->state++;
        break;
    case 1:
        ov01_021EFCF8(1, -16, -16, &encEffect->effectComplete, 2);
        encEffect->state++;
        break;
    case 2:
        if (encEffect->effectComplete) {
            encEffect->state++;
        }
        break;
    case 3:
        ov01_021EFEC8(&data->position, 0, 256 * FX32_ONE, 2 * FX32_ONE, 12);
        Sprite_SetDrawFlag(data->pokeball, TRUE);
        ov01_021EFEC8(&data->scaleX, 0x19A, 2 * FX32_ONE, 0, 12);
        ov01_021EFEC8(&data->scaleY, 0x19A, 2 * FX32_ONE, 0, 12);
        scale = ov01_021F074C(data->scaleX.currentValue, data->scaleY.currentValue, 0);
        Sprite_SetScaleAndAffineType(data->pokeball, &scale, 2);
        ov01_021EFE34(&data->rotation, 0, 0xFFFF, 12);
        encEffect->state++;
        break;
    case 4:
        done = ov01_021EFF28(&data->position);
        {
            VecFx32 pos = ov01_021F074C(128 * FX32_ONE, data->position.currentValue - 32 * FX32_ONE, 0);
            Sprite_SetMatrix(data->pokeball, &pos);
        }
        ov01_021EFF28(&data->scaleX);
        ov01_021EFF28(&data->scaleY);
        scale = ov01_021F074C(data->scaleX.currentValue, data->scaleY.currentValue, 0);
        Sprite_SetAffineScale(data->pokeball, &scale);
        ov01_021EFE44(&data->rotation);
        Sprite_SetAffineZRotation(data->pokeball, (u16)data->rotation.currentValue);
        if (done == TRUE) {
            Sprite_SetDrawFlag(data->pokeball, FALSE);
            encEffect->state++;
        }
        break;
    case 5:
        HBlankSystem_Stop(encEffect->fieldSystem->unk4->hBlankSystem);
        {
            fx32 distance = Camera_GetDistance(data->camera);
            ov01_021EFEC8(&data->cameraDistance, distance, distance - FX32_CONST(1000), FX32_CONST(10), 8);
        }
        BeginNormalPaletteFade(3, 18, 0, 0, 8, 1, HEAP_ID_FIELD1);
        encEffect->state++;
        break;
    case 6:
        ov01_021EFF28(&data->cameraDistance);
        Camera_SetDistance(data->cameraDistance.currentValue, data->camera);
        if (IsPaletteFadeFinished()) {
            encEffect->state++;
        }
        break;
    case 7:
        sub_0200FBF4(1, 0);
        HBlankSystem_Start(encEffect->fieldSystem->unk4->hBlankSystem);
        if (encEffect->done != NULL) {
            *encEffect->done = TRUE;
        }
        Sprite_Delete(data->pokeball);
        ov01_021F06EC(&data->sprites, &data->spriteRes);
        ov01_021F05F4(&data->sprites);
        ov01_021EFCDC(encEffect, task);
        break;
    }

    if (encEffect->state != 7) {
        SpriteList_RenderAndAnimateSprites(data->sprites.spriteList);
    }
}

void ov119_02260258(SysTask *task, EncounterEffect *encEffect) {
    Ov119_02260258 *data = encEffect->param;
    BOOL done;
    VecFx32 pos;
    int i;

    switch (encEffect->state) {
    case 0:
        encEffect->param = Heap_Alloc(HEAP_ID_FIELD1, sizeof(Ov119_02260258));
        memset(encEffect->param, 0, sizeof(Ov119_02260258));
        data = encEffect->param;
        data->camera = encEffect->fieldSystem->camera;
        ov01_021F05C4(&data->sprites, 3, 1);
        ov01_021F0614(encEffect->narc, &data->sprites, &data->spriteRes, 0, 1, 4, 6, 5, 600000);
        for (i = 0; i < 3; i++) {
            data->pokeballs[i] = ov01_021F0718(&data->sprites, &data->spriteRes, 0, -32, 0, 0);
            Sprite_SetDrawFlag(data->pokeballs[i], FALSE);
        }
        GfGfx_EngineATogglePlanes(GX_PLANEMASK_OBJ, GF_PLANE_TOGGLE_ON);
        data->window = AllocWindows(HEAP_ID_FIELD1, 1);
        AddWindowParameterized(encEffect->fieldSystem->bgConfig, data->window, 3, 0, 0, 32, 32, 0, 0);
        {
            u16 color = 0;
            BG_LoadPlttData(3, &color, sizeof(color), 0x1E);
        }
        FillWindowPixelBuffer(data->window, 0);
        ScheduleWindowCopyToVram(data->window);
        data->fade = ov01_021F09BC(HEAP_ID_FIELD1);
        encEffect->state++;
        break;
    case 1:
        ov01_021EFCF8(1, 16, -16, &encEffect->effectComplete, 2);
        encEffect->state++;
        break;
    case 2:
        if (encEffect->effectComplete) {
            encEffect->state++;
            data->timer = 0;
        }
        break;
    case 3:
        if (--data->timer <= 0) {
            ov01_021EFE34(&data->height[0], -32, 224, 5);
            pos = ov01_021F074C(128 * FX32_ONE, -32 * FX32_ONE, 0);
            Sprite_SetMatrix(data->pokeballs[0], &pos);
            Sprite_SetDrawFlag(data->pokeballs[0], TRUE);
            ov01_021EFE34(&data->rotation[0], 0, 0xFFFF, 5);
            Sprite_SetAffineOverwriteMode(data->pokeballs[0], 2);
            data->active[0] = TRUE;
            encEffect->state++;
            data->timer = 1;
        }
        break;
    case 4:
        if (--data->timer <= 0) {
            ov01_021EFE34(&data->height[1], -32, 224, 5);
            pos = ov01_021F074C(208 * FX32_ONE, -32 * FX32_ONE, 0);
            Sprite_SetMatrix(data->pokeballs[1], &pos);
            Sprite_SetDrawFlag(data->pokeballs[1], TRUE);
            ov01_021EFE34(&data->rotation[1], 0, -0xFFFF, 5);
            Sprite_SetAffineOverwriteMode(data->pokeballs[1], 2);
            data->active[1] = TRUE;
            encEffect->state++;
            data->timer = 3;
        }
        break;
    case 5:
        if (--data->timer <= 0) {
            ov01_021EFE34(&data->height[2], -32, 224, 5);
            pos = ov01_021F074C(48 * FX32_ONE, -32 * FX32_ONE, 0);
            Sprite_SetMatrix(data->pokeballs[2], &pos);
            Sprite_SetDrawFlag(data->pokeballs[2], TRUE);
            ov01_021EFE34(&data->rotation[2], 0, 0xFFFF, 5);
            Sprite_SetAffineOverwriteMode(data->pokeballs[2], 2);
            data->active[2] = TRUE;
            encEffect->state++;
        }
        break;
    case 6:
        if (data->active[0] == FALSE && data->active[1] == FALSE && data->active[2] == FALSE) {
            for (i = 0; i < 3; i++) {
                Sprite_SetDrawFlag(data->pokeballs[i], FALSE);
            }
            encEffect->state++;
        }
        break;
    case 7:
        ov01_021F0A0C(data->fade, 1, 1, data->window, 15);
        {
            fx32 distance = Camera_GetDistance(data->camera);
            ov01_021EFEC8(&data->cameraDistance, distance, distance - FX32_CONST(1000), FX32_CONST(10), 64);
        }
        encEffect->state++;
        break;
    case 8:
        done = ov01_021F0A4C(data->fade);
        ScheduleWindowCopyToVram(data->window);
        ov01_021EFF28(&data->cameraDistance);
        Camera_SetDistance(data->cameraDistance.currentValue, data->camera);
        if (done == TRUE) {
            encEffect->state++;
        }
        break;
    case 9:
        sub_0200FC20(0);
        if (encEffect->done != NULL) {
            *encEffect->done = TRUE;
        }
        for (i = 0; i < 3; i++) {
            Sprite_Delete(data->pokeballs[i]);
        }
        ov01_021F06EC(&data->sprites, &data->spriteRes);
        ov01_021F05F4(&data->sprites);
        ov01_021F09EC(data->fade);
        ClearWindowTilemapAndCopyToVram(data->window);
        RemoveWindow(data->window);
        WindowArray_Delete(data->window, 1);
        BG_ClearCharDataRange(3, 0x20, 0, HEAP_ID_FIELD1);
        BgClearTilemapBufferAndCommit(encEffect->fieldSystem->bgConfig, 3);
        ov01_021EFCDC(encEffect, task);
        break;
    }

    for (i = 0; i < 3; i++) {
        if (data->active[i] == TRUE) {
            done = ov01_021EFE44(&data->height[i]);
            ov01_021EFE44(&data->rotation[i]);
            if (done) {
                data->active[i] = FALSE;
            }
            {
                VecFx32 matrix = *Sprite_GetMatrixPtr(data->pokeballs[i]);
                matrix.y = data->height[i].currentValue * FX32_ONE;
                Sprite_SetMatrix(data->pokeballs[i], &matrix);
            }
            Sprite_SetAffineZRotation(data->pokeballs[i], (u16)data->rotation[i].currentValue);
        }
    }
    if (encEffect->state != 9) {
        SpriteList_RenderAndAnimateSprites(data->sprites.spriteList);
    }
}
