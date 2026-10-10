#include "global.h"

#include "assert.h"
#include "bg_window.h"
#include "camera.h"
#include "constants/sndseq.h"
#include "filesystem.h"
#include "font.h"
#include "gf_3d_vramman.h"
#include "gf_gfx_planes.h"
#include "system.h"
#include "text.h"
#include "unk_02005D10.h"
#include "unk_02018000.h"

typedef struct UnkStruct_ov48_Parent {
    BgConfig *bgConfig;
    u8 unk_04[0x13C];
    GF3DVramMan *vramMan;
    NARC *narc;
} UnkStruct_ov48_Parent;

typedef struct UnkStruct_ov48_Obj {
    VecFx32 unk_00;
    VecFx32 unk_0C;
    VecFx32 unk_18;
    UnkStruct_020181B0 unk_24;
    UnkStruct_02018030 unk_9C;
} UnkStruct_ov48_Obj;

typedef struct UnkStruct_ov48_Entry {
    s16 unk_00;
    s16 unk_02;
    MtxFx33 unk_04;
    u16 unk_28;
    u16 unk_2A;
    u16 unk_2C;
    u16 unk_2E;
} UnkStruct_ov48_Entry;

typedef struct UnkStruct_ov48_Entries {
    u32 unk_00;
    UnkStruct_ov48_Entry unk_04[0x400];
} UnkStruct_ov48_Entries;

typedef struct UnkStruct_ov48_Scene {
    UnkStruct_ov48_Entries unk_00;
    VecFx32 unk_C004;
    UnkStruct_020181B0 unk_C010[3];
    UnkStruct_02018030 unk_C178[3];
} UnkStruct_ov48_Scene;

typedef struct UnkStruct_ov48_Cam {
    Camera *camera;
    u8 unk_04[8];
    s32 unk_0C;
    u16 unk_10;
    u16 unk_12;
} UnkStruct_ov48_Cam;

typedef struct UnkStruct_ov48_Touch {
    u32 unk_00;
    u32 unk_04;
    u32 unk_08;
    u32 unk_0C;
    u32 unk_10;
    u32 unk_14;
    u32 unk_18;
    Window unk_1C;
} UnkStruct_ov48_Touch;

typedef struct UnkStruct_ov48_Flags {
    u32 unk_00_0 : 1;
} UnkStruct_ov48_Flags;

const VecFx32 ov48_0225B16C = { 0, 0, 0x128000 };
const u32 ov48_0225B178[3] = { 0, 1, 2 };
const VecFx32 ov48_0225B184 = { 0, 0, 0 };

void ov48_02259798(void);
void ov48_022598BC(const UnkStruct_ov48_Obj *param0, MtxFx33 *param1);
u32 ov48_02259BBC(const UnkStruct_ov48_Scene *param0);
u32 ov48_02259B10(const UnkStruct_ov48_Scene *param0, u32 param1, u32 param2);
void ov48_02259B3C(const UnkStruct_ov48_Scene *param0, VecFx32 *param1, int param2);
u32 ov48_02259B68(const UnkStruct_ov48_Scene *param0, int param1);

void ov48_02258A80(UnkStruct_ov48_Scene *param0, const void *param1, u32 heapID);
void ov48_02258BF4(MtxFx33 *param0, const VecFx32 *param1);
void ov48_02258CE4(u32 param0, u32 param1, u32 *param2, u32 *param3, u32 *param4, u32 *param5);
String *ov48_0225B0C4(const void *param0, u32 param1);

BOOL ov45_0222D724(const void *param0, u8 param1);
u32 ov45_0222D6FC(const void *param0, u8 param1);
u8 ov45_0222D6B0(const void *param0, u8 param1);
u32 ov45_0222D6D4(const void *param0, u8 param1);

void ov48_02259750(UnkStruct_ov48_Parent *param0, u32 heapID)
{
    param0->vramMan = GF_3DVramMan_Create(heapID, 0, 2, 0, 4, ov48_02259798);
    NNS_G3dGlbLightVector(0, 0, 0, -(FX32_ONE - 1));
}

void ov48_02259788(UnkStruct_ov48_Parent *param0)
{
    GF_3DVramMan_Delete(param0->vramMan);
}

void ov48_02259798(void)
{
    volatile u16 *bg0cnt = (volatile u16 *)0x04000008;
    volatile u16 *disp3dcnt = (volatile u16 *)0x04000060;
    u16 v0;

    GfGfx_EngineATogglePlanes(1, 1);

    v0 = *bg0cnt;
    v0 &= ~3;
    v0 |= 1;
    *bg0cnt = v0;

    v0 = *disp3dcnt;
    v0 &= 0xCFFD;
    *disp3dcnt = v0;

    v0 = *disp3dcnt;
    v0 &= 0xCFFF;
    v0 |= 0x10;
    *disp3dcnt = v0;

    v0 = *disp3dcnt;
    v0 &= 0xCFFB;
    *disp3dcnt = v0;

    v0 = *disp3dcnt;
    v0 &= 0xCFFF;
    v0 |= 0x08;
    *disp3dcnt = v0;

    v0 = *disp3dcnt;
    v0 &= 0xCFFF;
    v0 |= 0x20;
    *disp3dcnt = v0;

    G3X_SetFog(0, 0, 0, 0);
    G3X_SetClearColor(0x00006B5A, 0, 0x00007FFF, 63, 0);
    *(volatile u32 *)0x04000580 = 0xBFFF0000;
}

void ov48_02259824(UnkStruct_ov48_Obj *param0, UnkStruct_ov48_Parent *param1, u32 heapID)
{
    param0->unk_00.x = 0;
    param0->unk_00.y = 0;
    param0->unk_00.z = 0;
    param0->unk_0C.x = FX32_ONE;
    param0->unk_0C.y = FX32_ONE;
    param0->unk_0C.z = FX32_ONE;
    param0->unk_18.x = 0x1A40;
    param0->unk_18.y = 0x7C00;
    param0->unk_18.z = 0;
    sub_02018030(&param0->unk_9C, param1->narc, 3, heapID);
    sub_020181B0(&param0->unk_24, &param0->unk_9C);
}

void ov48_02259868(UnkStruct_ov48_Obj *param0)
{
    sub_02018068(&param0->unk_9C);
}

void ov48_02259874(UnkStruct_ov48_Obj *param0)
{
    MtxFx33 v0;

    ov48_022598BC(param0, &v0);

    sub_020182A8(&param0->unk_24, param0->unk_00.x, param0->unk_00.y, param0->unk_00.z);
    sub_020182C4(&param0->unk_24, param0->unk_0C.x, param0->unk_0C.y, param0->unk_0C.z);
    sub_02018288(&param0->unk_24, &v0);
}

void ov48_022598AC(const UnkStruct_ov48_Obj *param0, VecFx32 *param1)
{
    *param1 = param0->unk_00;
}

void ov48_022598BC(const UnkStruct_ov48_Obj *param0, MtxFx33 *param1)
{
    ov48_02258BF4(param1, &param0->unk_18);
}

void ov48_022598CC(const UnkStruct_ov48_Obj *param0, VecFx32 *param1)
{
    *param1 = param0->unk_18;
}

void ov48_022598DC(UnkStruct_ov48_Obj *param0, const VecFx32 *param1)
{
    param0->unk_18 = *param1;
}

void ov48_022598EC(UnkStruct_ov48_Scene *param0, const void *param1, UnkStruct_ov48_Parent *param2, u32 param3, u32 unused, u32 heapID)
{
    int v0;

    ov48_02258A80(param0, param1, heapID);

    for (v0 = 0; v0 < 3; v0++) {
        sub_02018030(&param0->unk_C178[v0], param2->narc, ov48_0225B178[v0], heapID);
        sub_020181B0(&param0->unk_C010[v0], &param0->unk_C178[v0]);
    }

    if ((param3 & 1) == 0) {
        param0->unk_C004.x = 0x300;
        param0->unk_C004.y = 0x300;
        param0->unk_C004.z = FX32_ONE;
    } else {
        param0->unk_C004.x = FX32_ONE;
        param0->unk_C004.y = FX32_ONE;
        param0->unk_C004.z = FX32_ONE;
    }
}

void ov48_02259984(UnkStruct_ov48_Scene *param0)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        sub_02018068(&param0->unk_C178[v0]);
    }
}

void ov48_022599A0(UnkStruct_ov48_Scene *param0, const UnkStruct_ov48_Obj *param1)
{
    MtxFx33 v0;
    int v1;
    MtxFx33 v2;
    VecFx32 v3;

    ov48_022598AC(param1, &v3);
    ov48_022598BC(param1, &v2);

    for (v1 = 0; v1 < 3; v1++) {
        sub_020182A8(&param0->unk_C010[v1], v3.x, v3.y, v3.z);

        if (v1 == 2) {
            sub_020182C4(&param0->unk_C010[v1], param0->unk_C004.x, param0->unk_C004.y, param0->unk_C004.z + 0x19A);
        } else {
            sub_020182C4(&param0->unk_C010[v1], param0->unk_C004.x, param0->unk_C004.y, param0->unk_C004.z);
        }
    }

    MTX_Identity33_(&v0);
    sub_02018288(&param0->unk_C010[2], &v0);

    for (v1 = 0; v1 < param0->unk_00.unk_00; v1++) {
        MTX_Concat33(&param0->unk_00.unk_04[v1].unk_04, &v2, &v0);

        if (param0->unk_00.unk_04[v1].unk_28 != 3) {
            sub_02018288(&param0->unk_C010[param0->unk_00.unk_04[v1].unk_28], &v0);
        }
    }
}

u32 ov48_02259A68(const void *param0, u32 param1, u32 param2)
{
    int v0;
    u32 v1;
    u8 v3;
    u32 v4;
    BOOL v2;

    for (v0 = 0; v0 < 50; v0++) {
        v2 = ov45_0222D724(param0, v0);

        if (v2) {
            v1 = ov45_0222D6FC(param0, v0);
            v3 = ov45_0222D6B0(param0, v0);
            v4 = ov45_0222D6D4(param0, v0);

            if ((v3 == param1) && (v4 == param2)) {
                if (v1 == 1) {
                    return 1;
                }

                return 0;
            }
        }
    }

    return 3;
}

u32 ov48_02259AD0(const UnkStruct_ov48_Scene *param0, u32 param1, u32 param2, VecFx32 *param3)
{
    u32 v0 = 3;
    int v1;
    int v2 = ov48_02259BBC(param0);
    v1 = ov48_02259B10(param0, param1, param2);

    if (v1 < v2) {
        v0 = ov48_02259B68(param0, v1);

        ov48_02259B3C(param0, param3, v1);
    }

    return v0;
}

u32 ov48_02259B10(const UnkStruct_ov48_Scene *param0, u32 param1, u32 param2)
{
    int v0;

    for (v0 = 0; v0 < param0->unk_00.unk_00; v0++) {
        if ((param0->unk_00.unk_04[v0].unk_2A == param1) && (param0->unk_00.unk_04[v0].unk_2C == param2)) {
            return v0;
        }
    }

    return param0->unk_00.unk_00;
}

void ov48_02259B3C(const UnkStruct_ov48_Scene *param0, VecFx32 *param1, int param2)
{
    GF_ASSERT(param2 < param0->unk_00.unk_00);

    param1->x = param0->unk_00.unk_04[param2].unk_00;
    param1->y = param0->unk_00.unk_04[param2].unk_02;
    param1->z = 0;
}

u32 ov48_02259B68(const UnkStruct_ov48_Scene *param0, int param1)
{
    GF_ASSERT(param1 < param0->unk_00.unk_00);
    return param0->unk_00.unk_04[param1].unk_28;
}

u32 ov48_02259B84(const UnkStruct_ov48_Scene *param0, int param1)
{
    GF_ASSERT(param1 < param0->unk_00.unk_00);
    return param0->unk_00.unk_04[param1].unk_2A;
}

u32 ov48_02259BA0(const UnkStruct_ov48_Scene *param0, int param1)
{
    GF_ASSERT(param1 < param0->unk_00.unk_00);
    return param0->unk_00.unk_04[param1].unk_2C;
}

u32 ov48_02259BBC(const UnkStruct_ov48_Scene *param0)
{
    return param0->unk_00.unk_00;
}

void ov48_02259BC0(UnkStruct_ov48_Cam *param0, UnkStruct_ov48_Flags param1, u32 unused, enum HeapID heapID)
{
    param0->camera = Camera_New(heapID);

    Camera_Init_FromTargetAndPos(&ov48_0225B184, &ov48_0225B16C, 0x5C1, 0, 0, param0->camera);
    Camera_SetPerspectiveClippingPlane(0, FX32_ONE * 100, param0->camera);
    Camera_ApplyPerspectiveType(0, param0->camera);
    Camera_SetStaticPtr(param0->camera);

    if (param1.unk_00_0 == 0) {
        param0->unk_10 = 1;
        param0->unk_0C = 0x50000;
    } else {
        param0->unk_10 = 0;
        param0->unk_0C = 0x128000;
    }

    Camera_SetDistance(param0->unk_0C, param0->camera);
}

void ov48_02259C38(UnkStruct_ov48_Cam *param0)
{
    Camera_Delete(param0->camera);
}

void ov48_02259C44(const UnkStruct_ov48_Cam *param0)
{
    Camera_PushLookAtToNNSGlb();
}

void ov48_02259C4C(UnkStruct_ov48_Cam *param0)
{
    if (param0->unk_10 == 0) {
        param0->unk_10 = 1;
        PlaySE(SEQ_SE_PL_TIMER03);
    } else {
        param0->unk_10 = 0;
        PlaySE(SEQ_SE_PL_TIMER03);
    }

    param0->unk_12 = 1;
}

BOOL ov48_02259C78(UnkStruct_ov48_Cam *param0, UnkStruct_ov48_Scene *param1)
{
    if (param0->unk_12 == 0) {
        return 1;
    }

    switch (param0->unk_10) {
    case 1:
        if (param0->unk_0C > (0x50000 + 0x8000)) {
            param0->unk_0C -= 0x8000;
            param1->unk_C004.x -= 0x80;
            param1->unk_C004.y = param1->unk_C004.x;
        } else {
            param0->unk_0C = 0x50000;
            param0->unk_12 = 0;
        }
        break;
    case 0:
        if (param0->unk_0C < (0x128000 - 0x8000)) {
            param0->unk_0C += 0x8000;
            param1->unk_C004.x += 0x80;
            param1->unk_C004.y = param1->unk_C004.x;
        } else {
            param0->unk_0C = 0x128000;
            param0->unk_12 = 0;
        }
        break;
    }

    Camera_SetDistance(param0->unk_0C, param0->camera);

    return 0;
}

u32 ov48_02259CFC(const UnkStruct_ov48_Cam *param0)
{
    return param0->unk_10;
}

void ov48_02259D00(UnkStruct_ov48_Touch *param0, UnkStruct_ov48_Parent *param1, void *param2, u32 heapID)
{
    String *v0;
    u32 v1;

    memset(param0, 0, 0x2C);

    AddWindowParameterized(param1->bgConfig, &param0->unk_1C, 1, 25, 21, 6, 2, 1, (1 + (18 + 12)) + 9);
    FillWindowPixelBuffer(&param0->unk_1C, 15);

    v0 = ov48_0225B0C4(param2, 1);

    FontID_Alloc(2, heapID);
    v1 = FontID_String_GetCenterAlignmentX(2, v0, 0, 48);
    AddTextPrinterParameterizedWithColor(&param0->unk_1C, 2, v0, v1, 0, 0xFF, 0x0002010F, NULL);
    FontID_Release(2);

    DrawFrameAndWindow1(&param0->unk_1C, 0, 1 + (18 + 12), 0);
}

void ov48_02259D94(UnkStruct_ov48_Touch *param0)
{
    RemoveWindow(&param0->unk_1C);
}

void ov48_02259DA0(UnkStruct_ov48_Touch *param0)
{
    u32 v0, v1, v2, v3;

    param0->unk_00 = 0;

    if (gSystem.touchNew) {
        if ((gSystem.touchX >= (25 * 8)) && (gSystem.touchX <= ((25 + 6) * 8)) && (gSystem.touchY >= (21 * 8)) && (gSystem.touchY <= ((21 + 2) * 8))) {
            param0->unk_00 = 2;
            return;
        } else {
            param0->unk_04 = 0;
            param0->unk_10 = 0;
            param0->unk_14 = 0;
            param0->unk_18 = 0;
            param0->unk_00 = 0;
            param0->unk_08 = gSystem.touchX;
            param0->unk_0C = gSystem.touchY;
            param0->unk_18 = 4;
        }
    }

    if (gSystem.touchHeld) {
        switch (param0->unk_04) {
        case 0:
            if (!param0->unk_18) {
                param0->unk_04++;
            } else {
                param0->unk_18--;
            }
        case 1:
            ov48_02258CE4(param0->unk_08, param0->unk_0C, &v2, &v1, &v0, &v3);
            param0->unk_00 = v0 | v2;
            param0->unk_10 = v1;
            param0->unk_14 = v3;
            param0->unk_08 = gSystem.touchX;
            param0->unk_0C = gSystem.touchY;
            break;
        }
    } else {
        if (param0->unk_18) {
            param0->unk_00 = 1;
        }

        param0->unk_04 = 0;
        param0->unk_10 = 0;
        param0->unk_14 = 0;
        param0->unk_18 = 0;
    }
}
