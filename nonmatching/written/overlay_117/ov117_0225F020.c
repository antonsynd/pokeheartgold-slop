#include "global.h"
#include "gf_gfx_planes.h"
#include "heap.h"
#include "screen_fade.h"
#include "sprite.h"
#include "overlay_01_021FB4C0_internal.h"

extern void *memset(void *dst, int c, unsigned int n);
extern void ov01_021F05C4(void *a0, int a1, int a2);
extern void ov01_021F05F4(void *a0);
extern void ov01_021F0614(u32 a0, void *a1, void *a2, u32 a3, u32 a4, u32 a5, u32 a6, u32 a7, u32 a8);
extern Sprite *ov01_021F0718(void *a0, void *a1, u32 a2, u32 a3, u32 a4, u32 a5);
extern void ov01_021F06EC(void *a0, void *a1);
extern void ov01_021F074C(VecFx32 *out, fx32 x, fx32 y, fx32 z);
extern void ov01_021EFCF8(int a0, int a1, int a2, void *a3, int a4);
extern void ov01_021EFCDC(void *a0, void *a1);
extern void ov01_021EFEC8(void *a0, s32 a1, s32 a2, s32 a3, s32 a4);
extern void ov01_021EFE34(void *a0, s32 a1, s32 a2, s32 a3);
extern BOOL ov01_021EFF28(void *a0);
extern BOOL ov01_021EFE44(void *a0);

typedef struct UnkStruct_ov117_0225FAF4 {
    s32 x0, x1, x2;
    s32 y0, y1, y2;
    s32 delay;
    s32 rot;
} UnkStruct_ov117_0225FAF4;

extern const UnkStruct_ov117_0225FAF4 ov117_0225FAF4[];

typedef struct UnkStruct_ov117_0225F020_Sub4 {
    u8 filler0[0x1C];
    UnkStruct_Ov01_021FB4C0 *hblank;
} UnkStruct_ov117_0225F020_Sub4;

typedef struct UnkStruct_ov117_0225F020_Sub10 {
    u8 filler0[4];
    UnkStruct_ov117_0225F020_Sub4 *unk4;
} UnkStruct_ov117_0225F020_Sub10;

typedef struct UnkStruct_ov117_0225F020 {
    int state;
    int unk4;
    u8 filler8[4];
    u8 *work;
    UnkStruct_ov117_0225F020_Sub10 *unk10;
    int *unk14;
    u8 filler18[8];
    u32 unk20;
} UnkStruct_ov117_0225F020;

#define WORK_SPRITES(w) ((Sprite **)((w) + 0x170))
#define WORK_SCALE(w, i) ((w) + 0x188 + (i) * 0x18)
#define WORK_X(w, i) ((w) + 0x218 + (i) * 0x18)
#define WORK_Y(w, i) ((w) + 0x2A8 + (i) * 0x18)
#define WORK_ROT(w, i) ((w) + 0x338 + (i) * 0x14)
#define WORK_ACTIVE(w) ((int *)((w) + 0x3B0))
#define WORK_3C4(w) (*(int *)((w) + 0x3C4))
#define WORK_IDX(w) (*(int *)((w) + 0x3C8))
#define WORK_TIMER(w) (*(int *)((w) + 0x3CC))

void ov117_0225F020(void *task, UnkStruct_ov117_0225F020 *p) {
    int state = p->state;
    u8 *work = p->work;
    int i;
    BOOL done;
    VecFx32 pos;
    VecFx32 scale;

    switch (state) {
    case 0:
        p->work = Heap_Alloc(4, 0x3D0);
        memset(p->work, 0, 0x3D0);
        work = p->work;
        ov01_021F05C4(work, 6, 1);
        ov01_021F0614(p->unk20, work, work + 0x13C, 3, 1, 0x9C, 0x9E, 0x9D, 600000);
        for (i = 0; i < 6; i++) {
            WORK_SPRITES(work)[i] = ov01_021F0718(work, work + 0x13C, 0, 0, 0, 0);
            Sprite_SetDrawFlag(WORK_SPRITES(work)[i], FALSE);
        }
        GfGfx_EngineATogglePlanes(0x10, 1);
        p->state++;
        break;
    case 1:
        ov01_021EFCF8(1, -16, -16, &p->unk4, 2);
        p->state++;
        break;
    case 2:
        if (p->unk4 != 0) {
            p->state = state + 1;
            WORK_IDX(work) = 0;
            WORK_TIMER(work) = ov117_0225FAF4[WORK_IDX(work)].delay;
        }
        break;
    case 3:
        WORK_TIMER(work) = WORK_TIMER(work) - 1;
        if (WORK_TIMER(work) < 0) {
            ov01_021EFEC8(WORK_X(work, WORK_IDX(work)), ov117_0225FAF4[WORK_IDX(work)].x0, ov117_0225FAF4[WORK_IDX(work)].x1, ov117_0225FAF4[WORK_IDX(work)].x2, 8);
            ov01_021EFEC8(WORK_Y(work, WORK_IDX(work)), ov117_0225FAF4[WORK_IDX(work)].y0, ov117_0225FAF4[WORK_IDX(work)].y1, ov117_0225FAF4[WORK_IDX(work)].y2, 8);
            ov01_021EFEC8(WORK_SCALE(work, WORK_IDX(work)), 0x2000, 0x29, (s32)0xFFFFF99A, 8);
            ov01_021EFE34(WORK_ROT(work, WORK_IDX(work)), 0, ov117_0225FAF4[WORK_IDX(work)].rot, 8);
            Sprite_SetDrawFlag(WORK_SPRITES(work)[WORK_IDX(work)], TRUE);
            ov01_021F074C(&pos, ov117_0225FAF4[WORK_IDX(work)].x0, ov117_0225FAF4[WORK_IDX(work)].y0, 0);
            Sprite_SetMatrix(WORK_SPRITES(work)[WORK_IDX(work)], &pos);
            ov01_021F074C(&scale, 0x2000, 0x2000, 0);
            Sprite_SetScaleAndAffineType(WORK_SPRITES(work)[WORK_IDX(work)], &scale, 2);
            WORK_ACTIVE(work)[WORK_IDX(work)] = 1;
            WORK_IDX(work)++;
            if (WORK_IDX(work) >= 6) {
                p->state++;
            } else {
                WORK_TIMER(work) = ov117_0225FAF4[WORK_IDX(work)].delay;
            }
        }
        break;
    case 4:
        if (WORK_3C4(work) == 0) {
            p->state = state + 1;
        }
        break;
    case 5:
        HBlankSystem_Stop(p->unk10->unk4->hblank);
        BeginNormalPaletteFade(3, 0x22, 0, 0, 0xC, 1, 4);
        p->state++;
        break;
    case 6:
        if (IsPaletteFadeFinished()) {
            p->state++;
        }
        break;
    case 7:
        sub_0200FBF4(1, 0);
        HBlankSystem_Start(p->unk10->unk4->hblank);
        if (p->unk14 != NULL) {
            *p->unk14 = 1;
        }
        for (i = 0; i < 6; i++) {
            Sprite_Delete(WORK_SPRITES(work)[i]);
        }
        ov01_021F06EC(work, work + 0x13C);
        ov01_021F05F4(work);
        ov01_021EFCDC(p, task);
        break;
    }

    for (i = 0; i < 6; i++) {
        if (WORK_ACTIVE(work)[i] == 1) {
            done = ov01_021EFF28(WORK_X(work, i));
            ov01_021EFF28(WORK_Y(work, i));
            ov01_021EFF28(WORK_SCALE(work, i));
            ov01_021EFE44(WORK_ROT(work, i));
            if (done) {
                WORK_ACTIVE(work)[i] = 0;
                Sprite_SetDrawFlag(WORK_SPRITES(work)[i], FALSE);
            }
            ov01_021F074C(&pos, *(s32 *)WORK_X(work, i), *(s32 *)WORK_Y(work, i), 0);
            Sprite_SetMatrix(WORK_SPRITES(work)[i], &pos);
            ov01_021F074C(&scale, *(s32 *)WORK_SCALE(work, i), *(s32 *)WORK_SCALE(work, i), 0);
            Sprite_SetAffineScale(WORK_SPRITES(work)[i], &scale);
            Sprite_SetAffineZRotation(WORK_SPRITES(work)[i], (u16)*(s32 *)WORK_ROT(work, i));
        }
    }
    if (p->state != 7) {
        SpriteList_RenderAndAnimateSprites(*(SpriteList **)work);
    }
}
