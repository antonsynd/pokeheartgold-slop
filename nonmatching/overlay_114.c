#include "global.h"

#include "field_system.h"
#include "gf_gfx_planes.h"
#include "heap.h"
#include "screen_fade.h"
#include "sprite.h"

#include "field/hblank_system.h"

typedef struct Ov114_Counter {
    int unk_00;
    u8 filler_04[0x10];
} Ov114_Counter;

typedef struct Ov114_Tween {
    int unk_00;
    u8 filler_04[0x14];
} Ov114_Tween;

typedef struct Ov114_Renderer {
    SpriteList *unk_00;
    u8 filler_04[0x138];
} Ov114_Renderer;

typedef struct Ov114_Single {
    Ov114_Counter unk_00;
    Ov114_Tween unk_14;
    Ov114_Renderer unk_2C;
    u8 unk_168[0x34];
    Sprite *unk_19C;
    u8 filler_1A0[4];
} Ov114_Single;

typedef struct Ov114_Quad {
    Ov114_Renderer unk_00;
    u8 unk_13C[0x34];
    Sprite *unk_170[4];
    Ov114_Tween unk_180;
    Ov114_Tween unk_198;
} Ov114_Quad;

typedef struct Ov114_Work {
    int unk_00;
    int unk_04;
    u8 filler_08[4];
    void *unk_0C;
    FieldSystem *unk_10;
    int *unk_14;
    u8 filler_18[8];
    void *unk_20;
} Ov114_Work;

extern void ov01_021EFCDC(Ov114_Work *work, void *a1);
extern void ov01_021EFCF8(int a0, int a1, int a2, int *a3, int a4);
extern void ov01_021EFE34(Ov114_Counter *counter, int a1, int a2, int a3);
extern BOOL ov01_021EFE44(Ov114_Counter *counter);
extern void ov01_021EFEC8(Ov114_Tween *tween, int a1, int a2, int a3, int a4);
extern BOOL ov01_021EFF28(Ov114_Tween *tween);
extern void ov01_021F05C4(Ov114_Renderer *renderer, int a1, int a2);
extern void ov01_021F05F4(Ov114_Renderer *renderer);
extern void ov01_021F0614(void *a0, Ov114_Renderer *renderer, void *a2, int a3, int a4, int a5, int a6, int a7, int a8);
extern void ov01_021F06EC(Ov114_Renderer *renderer, void *a1);
extern Sprite *ov01_021F0718(Ov114_Renderer *renderer, void *a1, int a2, int a3, int a4, int a5);
extern VecFx32 ov01_021F074C(int x, int y, int z);

void ov114_0225F020(void *a0, Ov114_Work *work);
void ov114_0225F280(void *a0, Ov114_Work *work);

void ov114_0225F020(void *a0, Ov114_Work *work) {
    Ov114_Single *single = work->unk_0C;
    VecFx32 scale;
    BOOL tweenDone;

    switch (work->unk_00) {
    case 0:
        work->unk_0C = Heap_Alloc(HEAP_ID_FIELD1, sizeof(Ov114_Single));
        memset(work->unk_0C, 0, sizeof(Ov114_Single));
        single = work->unk_0C;
        ov01_021F05C4(&single->unk_2C, 1, 1);
        ov01_021F0614(work->unk_20, &single->unk_2C, single->unk_168, 0, 1, 7, 9, 8, 600000);
        single->unk_19C = ov01_021F0718(&single->unk_2C, single->unk_168, 2 << 18, 6 << 16, 0, 0);
        Sprite_SetDrawFlag(single->unk_19C, FALSE);
        Sprite_SetOamMode(single->unk_19C, 1);
        GfGfx_EngineATogglePlanes(0x10, 1);
        work->unk_00++;
        break;
    case 1:
        ov01_021EFCF8(1, 0x10, -0x10, &work->unk_04, 2);
        work->unk_00++;
        break;
    case 2:
        if (work->unk_04 != 0) {
            work->unk_00++;
        }
        break;
    case 3:
        ov01_021EFE34(&single->unk_00, 0, 0x10, 0xC);
        G2_SetBlendAlpha(0, 0xF, single->unk_00.unk_00, 0x10 - single->unk_00.unk_00);
        Sprite_SetDrawFlag(single->unk_19C, TRUE);
        work->unk_00++;
        break;
    case 4:
        tweenDone = ov01_021EFE44(&single->unk_00);
        reg_G2_BLDALPHA = ((0x10 - single->unk_00.unk_00) << 8) | single->unk_00.unk_00;
        if (tweenDone == TRUE) {
            reg_G2_BLDCNT = 0;
            Sprite_SetOamMode(single->unk_19C, 0);
            work->unk_00++;
        }
        break;
    case 5:
        ov01_021EFEC8(&single->unk_14, 1 << 12, 0x19A, 1, 6);
        Sprite_SetAffineOverwriteMode(single->unk_19C, 2);
        scale = ov01_021F074C(single->unk_14.unk_00, single->unk_14.unk_00, single->unk_14.unk_00);
        Sprite_SetAffineScale(single->unk_19C, &scale);
        HBlankSystem_Stop(work->unk_10->unk4->hBlankSystem);
        BeginNormalPaletteFade(3, 0x10, 0, 0, 6, 1, HEAP_ID_FIELD1);
        work->unk_00++;
        break;
    case 6:
        tweenDone = ov01_021EFF28(&single->unk_14);
        scale = ov01_021F074C(single->unk_14.unk_00, single->unk_14.unk_00, single->unk_14.unk_00);
        Sprite_SetAffineScale(single->unk_19C, &scale);
        if (tweenDone == TRUE && IsPaletteFadeFinished() == TRUE) {
            work->unk_00++;
        }
        break;
    case 7:
        sub_0200FBF4(1, 0);
        HBlankSystem_Start(work->unk_10->unk4->hBlankSystem);
        if (work->unk_14 != NULL) {
            *work->unk_14 = 1;
        }
        Sprite_Delete(single->unk_19C);
        ov01_021F06EC(&single->unk_2C, single->unk_168);
        ov01_021F05F4(&single->unk_2C);
        ov01_021EFCDC(work, a0);
        break;
    }
    if (work->unk_00 != 7) {
        SpriteList_RenderAndAnimateSprites(single->unk_2C.unk_00);
    }
}

void ov114_0225F280(void *a0, Ov114_Work *work) {
    Ov114_Quad *quad = work->unk_0C;
    VecFx32 pos;
    BOOL tweenDone;
    int i;

    switch (work->unk_00) {
    case 0:
        work->unk_0C = Heap_Alloc(HEAP_ID_FIELD1, sizeof(Ov114_Quad));
        memset(work->unk_0C, 0, sizeof(Ov114_Quad));
        quad = work->unk_0C;
        ov01_021F05C4(&quad->unk_00, 4, 1);
        ov01_021F0614(work->unk_20, &quad->unk_00, quad->unk_13C, 0, 1, 4, 6, 5, 600000);
        for (i = 0; i < 4; i++) {
            quad->unk_170[i] = ov01_021F0718(&quad->unk_00, quad->unk_13C, 2 << 18, 6 << 16, 0, 0);
            Sprite_SetDrawFlag(quad->unk_170[i], FALSE);
        }
        GfGfx_EngineATogglePlanes(0x10, 1);
        work->unk_00++;
        break;
    case 1:
        ov01_021EFCF8(1, 0x10, -0x10, &work->unk_04, 2);
        work->unk_00++;
        break;
    case 2:
        if (work->unk_04 != 0) {
            work->unk_00++;
        }
        break;
    case 3:
        ov01_021EFEC8(&quad->unk_180, 0, 4 << 17, 0x19A, 4);
        ov01_021EFEC8(&quad->unk_198, 0, 10 << 16, 0x19A, 4);
        for (i = 0; i < 4; i++) {
            Sprite_SetDrawFlag(quad->unk_170[i], TRUE);
        }
        work->unk_00++;
        break;
    case 4:
        tweenDone = FALSE;
        for (i = 0; i < 2; i++) {
            tweenDone = ov01_021EFF28(&(&quad->unk_180)[i]);
        }
        pos = ov01_021F074C(2 << 18, (6 << 16) - quad->unk_180.unk_00, 0);
        Sprite_SetMatrix(quad->unk_170[0], &pos);
        pos = ov01_021F074C(2 << 18, (6 << 16) + quad->unk_180.unk_00, 0);
        Sprite_SetMatrix(quad->unk_170[1], &pos);
        pos = ov01_021F074C((2 << 18) - quad->unk_198.unk_00, 6 << 16, 0);
        Sprite_SetMatrix(quad->unk_170[2], &pos);
        pos = ov01_021F074C(quad->unk_198.unk_00 + (2 << 18), 6 << 16, 0);
        Sprite_SetMatrix(quad->unk_170[3], &pos);
        if (tweenDone == TRUE) {
            work->unk_00++;
        }
        break;
    case 5:
        HBlankSystem_Stop(work->unk_10->unk4->hBlankSystem);
        BeginNormalPaletteFade(3, 0x22, 0, 0, 8, 1, HEAP_ID_FIELD1);
        work->unk_00++;
        break;
    case 6:
        if (IsPaletteFadeFinished() == TRUE) {
            work->unk_00++;
        }
        break;
    case 7:
        sub_0200FBF4(1, 0);
        HBlankSystem_Start(work->unk_10->unk4->hBlankSystem);
        if (work->unk_14 != NULL) {
            *work->unk_14 = 1;
        }
        for (i = 0; i < 4; i++) {
            Sprite_Delete(quad->unk_170[i]);
        }
        ov01_021F06EC(&quad->unk_00, quad->unk_13C);
        ov01_021F05F4(&quad->unk_00);
        ov01_021EFCDC(work, a0);
        break;
    }
    if (work->unk_00 != 7) {
        SpriteList_RenderAndAnimateSprites(quad->unk_00.unk_00);
    }
}
