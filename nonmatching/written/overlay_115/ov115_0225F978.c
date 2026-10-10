#include "global.h"
#include "bg_window.h"
#include "gf_gfx_loader.h"
#include "gf_gfx_planes.h"
#include "heap.h"
#include "pm_string.h"
#include "screen_fade.h"
#include "sprite.h"
#include "text.h"
#include "unk_02026E30.h"

extern void *memset(void *dst, int c, unsigned int n);
extern void G2x_SetBlendAlpha_(u32 addr, int plane1, int plane2, int ev1, int ev2);

extern void ov01_021F05C4(void *a0, int a1, int a2);
extern void ov01_021F05F4(void *a0);
extern void ov01_021F0614(NARC *a0, void *a1, void *a2, u32 a3, u32 a4, u32 a5, u32 a6, u32 a7, u32 a8);
extern Sprite *ov01_021F0718(void *a0, void *a1, u32 a2, u32 a3, u32 a4, u32 a5);
extern void ov01_021F06EC(void *a0, void *a1);
extern void ov01_021F074C(VecFx32 *out, fx32 x, fx32 y, fx32 z);
extern void ov01_021EFCF8(int a0, int a1, int a2, void *a3, int a4);
extern void ov01_021EFEC8(void *a0, s32 a1, s32 a2, s32 a3, s32 a4);
extern void ov01_021EFE34(void *a0, s32 a1, s32 a2, s32 a3);
extern BOOL ov01_021EFE44(void *a0);
extern BOOL ov01_021EFF28(void *a0);
extern void ov01_021F0DC8(void *a0);
extern void ov01_021F0DDC(void *fieldSystem);
extern void ov01_021F0E74(void);
extern int ov01_021F0E90(void);
extern void ov01_021F0EAC(void);
extern void ov01_021F0EC0(void);
extern void ov01_021F0F08(NARC *narc, int a1);
extern void ov01_021F0FB8(int a0);
extern void ov01_021F1008(void);
extern BOOL ov01_021F1044(void);
extern void ov01_021F1060(void);

extern void ov115_0225F020(void *a0, void *a1, void *a2, fx32 x, fx32 y, enum HeapID heapID);
extern void ov115_0225F09C(void *a0);
extern BOOL ov115_0225F0B4(void *a0);
extern String *ov115_0225F158(u16 trainerId, enum HeapID heapID);
extern int ov115_0225F968(void *fieldSystem);
extern void ov115_02260254(Sprite *sprite, enum HeapID heapID, int a2, int a3, int a4);

typedef struct UnkStruct_ov115_0225F978_FieldSystem {
    u8 filler0[8];
    BgConfig *bgConfig;
} UnkStruct_ov115_0225F978_FieldSystem;

typedef struct UnkStruct_ov115_0225F978_Param {
    u16 unk0;
    u8 unk2;
    u8 unk3;
    u8 filler4[2];
    u16 unk6;
} UnkStruct_ov115_0225F978_Param;

typedef struct UnkStruct_ov115_0225F978 {
    int state;
    int effectComplete;
    int unk8;
    u8 *work;
    UnkStruct_ov115_0225F978_FieldSystem *fieldSystem;
    int *done;
    u8 filler18[8];
    NARC *narc;
} UnkStruct_ov115_0225F978;

#define W_CUR(w, o) (*(fx32 *)((w) + (o)))
#define W_SPRITES(w) ((Sprite **)((w) + 0x268))
#define W_RES(w, i) ((w) + 0x198 + (i) * 0x34)
#define W_POS0(w) (*(VecFx32 *)((w) + 0x278))
#define W_POS1(w) (*(VecFx32 *)((w) + 0x284))
#define W_WINDOW(w) ((Window *)((w) + 0x2F4))
#define W_GENDER(w) (*(int *)((w) + 0x304))
#define W_CLASS(w) (*(int *)((w) + 0x308))

BOOL ov115_0225F978(UnkStruct_ov115_0225F978 *encEffect, enum HeapID heapID, const UnkStruct_ov115_0225F978_Param *param) {
    u8 *work = encEffect->work;
    VecFx32 scale;
    VecFx32 pos;
    void *res;
    int seq;
    int i;
    int v;
    BOOL r5;
    BOOL r7;
    String *str;

    switch (encEffect->state) {
    case 0:
        encEffect->work = Heap_Alloc(heapID, 0x314);
        memset(encEffect->work, 0, 0x314);
        work = encEffect->work;
        ov01_021F05C4(work + 0x5C, 10, 4);
        if (ov115_0225F968(encEffect->fieldSystem) == 0) {
            ov01_021F0614(encEffect->narc, work + 0x5C, W_RES(work, 0), 0xCF, 1, 0xD0, 0xD1, 0xD2, 600000);
            W_GENDER(work) = 0;
            v = 0xCF;
        } else {
            ov01_021F0614(encEffect->narc, work + 0x5C, W_RES(work, 0), 0xD3, 1, 0xD4, 0xD5, 0xD6, 600000);
            W_GENDER(work) = 1;
            v = 0xD3;
        }
        W_CLASS(work) = v;
        v = param->unk0;
        ov01_021F0614(encEffect->narc, work + 0x5C, W_RES(work, 1), v, 1, v + 1, v + 2, v + 3, 600001);
        ov01_021F0614(encEffect->narc, work + 0x5C, W_RES(work, 2), param->unk2, 0xC, 0x30, 0x31, 0x32, 600002);
        ov01_021F0614(encEffect->narc, work + 0x5C, W_RES(work, 3), 0x3B, 1, 0x3C, 0x3D, 0x3E, 600003);
        encEffect->state++;
        break;
    case 1:
        ov01_021F074C(&scale, 0x2000, 0x2000, 0);
        for (i = 0; i < 4; i++) {
            if (i < 3) {
                res = W_RES(work, i);
                seq = 0;
            } else {
                res = W_RES(work, i - 1);
                seq = 1;
            }
            W_SPRITES(work)[i] = ov01_021F0718(work + 0x5C, res, 0, 0, 0, 0);
            Sprite_SetDrawFlag(W_SPRITES(work)[i], FALSE);
            Sprite_SetAnimCtrlSeq(W_SPRITES(work)[i], seq);
            Sprite_SetPriority(W_SPRITES(work)[i], 1);
        }
        ov115_02260254(W_SPRITES(work)[0], heapID, W_CLASS(work), 0xE, 0);
        ov115_02260254(W_SPRITES(work)[1], heapID, param->unk0, 0xE, 0);
        GfGfx_EngineATogglePlanes(0x10, 1);
        ov115_0225F020(work + 0x290, work + 0x5C, W_RES(work, 3), 0x80000, 0x60000, heapID);
        ov01_021F0DDC(encEffect->fieldSystem);
        encEffect->state++;
        break;
    case 2:
        ov01_021EFCF8(1, 0x10, 0x10, &encEffect->effectComplete, 1);
        encEffect->unk8 = 0;
        encEffect->state++;
        break;
    case 3:
        encEffect->unk8++;
        if (encEffect->unk8 == 8) {
            ov01_021F0E74();
        }
        if (encEffect->effectComplete != 0) {
            encEffect->state++;
        }
        break;
    case 4:
        if (ov01_021F0E90() == 1) {
            ov01_021F0F08(encEffect->narc, 0x97);
            G2x_SetBlendAlpha_(0x04000050, 1, 0x1E, 0, 8);
            encEffect->state++;
        }
        break;
    case 5:
        ov01_021EFEC8(work, (s32)0xFFF80000, 0x38000, 0x50000, 6);
        ov01_021F074C(&pos, W_CUR(work, 0), 0x5C000, 0);
        Sprite_SetMatrix(W_SPRITES(work)[0], &pos);
        pos.y += 0x4000;
        pos.x += 0x10000;
        Sprite_SetMatrix(W_SPRITES(work)[2], &pos);
        Sprite_SetDrawFlag(W_SPRITES(work)[0], TRUE);
        Sprite_SetDrawFlag(W_SPRITES(work)[2], TRUE);
        ov01_021EFEC8(work + 0x30, 0x180000, 0xC8000, (s32)0xFFFB0000, 6);
        ov01_021F074C(&pos, W_CUR(work, 0x30), 0x5C000, 0);
        Sprite_SetMatrix(W_SPRITES(work)[1], &pos);
        pos.y += 0x4000;
        pos.x -= 0x10000;
        Sprite_SetMatrix(W_SPRITES(work)[3], &pos);
        Sprite_SetDrawFlag(W_SPRITES(work)[1], TRUE);
        Sprite_SetDrawFlag(W_SPRITES(work)[3], TRUE);
        GfGfxLoader_GXLoadPalFromOpenNarc(encEffect->narc, 0x10, 0, 0x40, 0x20, heapID);
        GfGfx_EngineATogglePlanes(4, 0);
        AddWindowParameterized(encEffect->fieldSystem->bgConfig, W_WINDOW(work), 2, 0x15, 0xD, 0xB, 2, 2, 1);
        FillWindowPixelBuffer(W_WINDOW(work), 0);
        str = ov115_0225F158(param->unk6, heapID);
        AddTextPrinterParameterizedWithColor(W_WINDOW(work), 0, str, 0, 0, 0, 0x10200, NULL);
        String_Delete(str);
        encEffect->effectComplete = 3;
        encEffect->state++;
        break;
    case 6:
        if (encEffect->effectComplete > 0) {
            encEffect->effectComplete--;
            if (encEffect->effectComplete == 0) {
                ov01_021F0FB8(3);
                GfGfx_EngineATogglePlanes(1, 1);
                GfGfx_EngineATogglePlanes(4, 1);
            }
        } else {
            ov115_0225F0B4(work + 0x290);
        }
        ov01_021EFF28(work);
        ov01_021F074C(&pos, W_CUR(work, 0), 0x5C000, 0);
        W_POS0(work) = pos;
        Sprite_SetMatrix(W_SPRITES(work)[0], &pos);
        pos.y += 0x4000;
        pos.x += 0x10000;
        Sprite_SetMatrix(W_SPRITES(work)[2], &pos);
        r7 = ov01_021EFF28(work + 0x30);
        ov01_021F074C(&pos, W_CUR(work, 0x30), 0x5C000, 0);
        W_POS1(work) = pos;
        Sprite_SetMatrix(W_SPRITES(work)[1], &pos);
        pos.y += 0x4000;
        pos.x -= 0x10000;
        Sprite_SetMatrix(W_SPRITES(work)[3], &pos);
        if (r7 == 1) {
            encEffect->state++;
        }
        break;
    case 7:
        r5 = ov115_0225F0B4(work + 0x290);
        r7 = ov01_021F1044();
        if (r5 == 0 || r7 == 0) {
            break;
        }
        ov01_021EFE34(work + 0x48, 0, 0x10, 3);
        ov01_021F1060();
        encEffect->state++;
        break;
    case 8:
        r5 = ov01_021EFE44(work + 0x48);
        ov01_021F0DC8(work + 0x48);
        if (r5 == 1) {
            ov115_02260254(W_SPRITES(work)[0], heapID, W_CLASS(work), 0, 0);
            ov115_02260254(W_SPRITES(work)[1], heapID, param->unk0, 0, 0);
            Sprite_SetAnimActiveFlag(W_SPRITES(work)[2], TRUE);
            Sprite_SetAnimSpeed(W_SPRITES(work)[2], 0x2000);
            Sprite_SetAnimActiveFlag(W_SPRITES(work)[3], TRUE);
            Sprite_SetAnimSpeed(W_SPRITES(work)[3], 0x2000);
            ov01_021F0F08(encEffect->narc, 0x98);
            encEffect->state++;
        }
        break;
    case 9:
        ov01_021EFE34(work + 0x48, 0x10, 0, 6);
        ov01_021F0FB8(4);
        SetBgPriority(0, 1);
        encEffect->state++;
        break;
    case 10:
        r5 = ov01_021EFE44(work + 0x48);
        ov01_021F0DC8(work + 0x48);
        if (r5 == 1) {
            encEffect->state++;
            encEffect->effectComplete = 8;
        }
        break;
    case 11:
        if (encEffect->effectComplete > 0) {
            encEffect->effectComplete--;
            break;
        }
        ov01_021EFEC8(work, 0, (s32)0xFFFFE000, 0, param->unk3);
        ov01_021EFEC8(work + 0x18, 0, (s32)0xFFFFE000, 0, param->unk3);
        encEffect->effectComplete = 0;
        encEffect->state++;
        break;
    case 12:
        encEffect->effectComplete++;
        r5 = ov01_021EFF28(work);
        ov01_021EFF28(work + 0x18);
        if (((encEffect->effectComplete / 2) % 2) == 0) {
            ov01_021F074C(&pos, W_POS0(work).x + W_CUR(work, 0), W_POS0(work).y + W_CUR(work, 0x18), 0);
        } else {
            ov01_021F074C(&pos, W_POS0(work).x - W_CUR(work, 0), W_POS0(work).y - W_CUR(work, 0x18), 0);
        }
        if (r5) {
            W_POS0(work) = pos;
        }
        Sprite_SetMatrix(W_SPRITES(work)[0], &pos);
        pos.y += 0x4000;
        pos.x += 0x10000;
        Sprite_SetMatrix(W_SPRITES(work)[2], &pos);
        if (((encEffect->effectComplete / 2) % 2) == 0) {
            ov01_021F074C(&pos, W_POS1(work).x - W_CUR(work, 0), W_POS1(work).y - W_CUR(work, 0x18), 0);
        } else {
            ov01_021F074C(&pos, W_POS1(work).x + W_CUR(work, 0), W_POS1(work).y + W_CUR(work, 0x18), 0);
        }
        if (r5) {
            W_POS1(work) = pos;
        }
        Sprite_SetMatrix(W_SPRITES(work)[1], &pos);
        pos.y += 0x4000;
        pos.x -= 0x10000;
        Sprite_SetMatrix(W_SPRITES(work)[3], &pos);
        if (r5) {
            encEffect->state++;
            GfGfx_EngineATogglePlanes(4, 0);
            ov01_021EFEC8(work, 0, 0xC0000, 0x18000, 0x10);
            ov01_021EFEC8(work + 0x18, 0, 0xC0000, 0x18000, 0x10);
            BeginNormalPaletteFade(3, 0, 0, 0x7FFF, 8, 1, 4);
        }
        break;
    case 13:
        ov01_021EFF28(work);
        ov01_021EFF28(work + 0x18);
        ov01_021F074C(&pos, W_POS0(work).x - W_CUR(work, 0), W_POS0(work).y - W_CUR(work, 0x18), 0);
        Sprite_SetMatrix(W_SPRITES(work)[0], &pos);
        pos.y += 0x4000;
        pos.x += 0x10000;
        Sprite_SetMatrix(W_SPRITES(work)[2], &pos);
        ov01_021F074C(&pos, W_POS1(work).x + W_CUR(work, 0), W_POS1(work).y + W_CUR(work, 0x18), 0);
        Sprite_SetMatrix(W_SPRITES(work)[1], &pos);
        pos.y += 0x4000;
        pos.x -= 0x10000;
        Sprite_SetMatrix(W_SPRITES(work)[3], &pos);
        if (IsPaletteFadeFinished()) {
            encEffect->state++;
        }
        break;
    case 14:
        sub_0200FBF4(1, 0x7FFF);
        if (encEffect->done != NULL) {
            *encEffect->done = 1;
        }
        ov115_0225F09C(work + 0x290);
        RemoveWindow(W_WINDOW(work));
        for (i = 0; i < 4; i++) {
            Sprite_Delete(W_SPRITES(work)[i]);
        }
        for (i = 0; i < 4; i++) {
            ov01_021F06EC(work + 0x5C, W_RES(work, i));
        }
        ov01_021F05F4(work + 0x5C);
        ov01_021F1060();
        ov01_021F0EC0();
        *(vu16 *)0x04000050 = 0;
        return TRUE;
    }

    if (encEffect->state != 14) {
        SpriteList_RenderAndAnimateSprites(*(SpriteList **)(work + 0x5C));
        if (encEffect->state > 4) {
            Thunk_G3X_Reset();
            ov01_021F1008();
            ov01_021F0EAC();
            RequestSwap3DBuffers(0, 0);
        }
    }
    return FALSE;
}
