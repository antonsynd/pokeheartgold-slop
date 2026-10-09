#include "global.h"

#include "camera.h"
#include "gf_3d_render.h"
#include "location_gmm_dat.h"
#include "msgdata.h"
#include "unk_02026E30.h"

typedef struct UnkStruct_ov69_part02_Entry {
    u32 unk_00;
    MtxFx33 unk_04;
    u16 unk_28;
    u8 unk_2A[6];
} UnkStruct_ov69_part02_Entry;

typedef struct UnkStruct_ov69_part02_Obj {
    u8 unk_00[0x54];
} UnkStruct_ov69_part02_Obj;

typedef struct UnkStruct_ov69_part02_Angle {
    s32 unk_00;
    s32 unk_04;
} UnkStruct_ov69_part02_Angle;

typedef struct UnkStruct_ov69_part02 {
    u8 unk_000[0x0C];
    u32 count;
    UnkStruct_ov69_part02_Entry unk_10[0x2A];
    u8 unk_7F0[0xC084 - 0x7F0];
    UnkStruct_ov69_part02_Obj unk_C084;
    u8 unk_C0D8[0xC0E0 - 0xC0D8];
    UnkStruct_ov69_part02_Obj unk_C0E0[5];
    u8 unk_C284[0xC2AC - 0xC284];
    VecFx32 unk_C2AC;
    VecFx32 unk_C2B8;
    VecFx32 unk_C2C4;
    VecFx32 unk_C2D0;
    Camera *camera;
    u8 unk_C2E0[0xC2E8 - 0xC2E0];
    u16 unk_C2E8;
    u8 unk_C2EA[0xC2F8 - 0xC2EA];
    u32 unk_C2F8;
    u8 unk_C2FC[0xC304 - 0xC2FC];
    u16 unk_C304;
    u8 unk_C306[0xC308 - 0xC306];
    u32 unk_C308;
    u8 unk_C30C[0xC318 - 0xC30C];
    s32 unk_C318;
    s32 unk_C31C;
} UnkStruct_ov69_part02;

static const MtxFx33 ov69_021E7728 = { FX32_ONE, 0, 0, 0, FX32_ONE, 0, 0, 0, FX32_ONE };
static const MtxFx33 ov69_021E774C = { FX32_ONE, 0, 0, 0, FX32_ONE, 0, 0, 0, FX32_ONE };
static const MtxFx33 ov69_021E7794 = { FX32_ONE, 0, 0, 0, FX32_ONE, 0, 0, 0, FX32_ONE };

void ov69_021E70A8(MtxFx33 *mtx, VecFx32 *pos);
BOOL ov69_021E6300(int param0);
s32 GF_DegreeToSinCosIdxNoWrap(u16 deg);
s32 FX_Sqrt(s32 x);

BOOL ov69_021E7198(UnkStruct_ov69_part02 *param0, int param1, int param2)
{
    u16 v0;
    u16 v1;
    s16 v2;
    s16 v3;
    BOOL v4 = 0;

    v2 = param0->unk_C2C4.x;
    v3 = param0->unk_C2C4.y;

    if ((param1 & PAD_BUTTON_A) || (param0->unk_C308 & PAD_BUTTON_A)) {
        if (param0->unk_C304 == 1) {
            if (param0->unk_C2E8 == 0) {
                param0->unk_C2E8 = 1;
            } else {
                param0->unk_C2E8 = 0;
            }
        }

        v4 = 1;
        return v4;
    }

    if (param0->unk_C2E8 == 0) {
        if ((param0->unk_C318) || (param0->unk_C31C)) {
            v0 = 0x200 / 6 * param0->unk_C318;
            v1 = 0x200 / 6 * param0->unk_C31C;
        } else {
            v0 = 0x200;
            v1 = 0x200;
        }
    } else {
        if ((param0->unk_C318) || (param0->unk_C31C)) {
            v0 = 0x20 / 3 * param0->unk_C318;
            v1 = 0x20 / 3 * param0->unk_C31C;
        } else {
            v0 = 0x20;
            v1 = 0x20;
        }
    }

    if ((param2 & PAD_KEY_LEFT) || (param0->unk_C308 & PAD_KEY_LEFT)) {
        if (param0->unk_C304 == 1) {
            param0->unk_C2C4.y += v0;
        } else {
            if (v3 < (s16)0xd820) {
                param0->unk_C2C4.y += v0;
            }
        }

        v4 = 1;
    }

    if ((param2 & PAD_KEY_RIGHT) || (param0->unk_C308 & PAD_KEY_RIGHT)) {
        if (param0->unk_C304 == 1) {
            param0->unk_C2C4.y -= v0;
        } else {
            if (v3 > (s16)0xcc80) {
                param0->unk_C2C4.y -= v0;
            }
        }

        v4 = 1;
    }

    if ((param2 & PAD_KEY_UP) || (param0->unk_C308 & PAD_KEY_UP)) {
        if (param0->unk_C304 == 1) {
            if ((v2 + v1) < (0x4000 - 0x200)) {
                param0->unk_C2C4.x += v1;
            } else {
                param0->unk_C2C4.x = (0x4000 - 0x200);
            }
        } else {
            if (v2 < (s16)0x2020) {
                param0->unk_C2C4.x += v1;
            }
        }

        v4 = 1;
    }

    if ((param2 & PAD_KEY_DOWN) || (param0->unk_C308 & PAD_KEY_DOWN)) {
        if (param0->unk_C304 == 1) {
            if ((v2 - v1) > (-0x4000 + 0x200)) {
                param0->unk_C2C4.x -= v1;
            } else {
                param0->unk_C2C4.x = (-0x4000 + 0x200);
            }
        } else {
            if (v2 > (s16)0x1300) {
                param0->unk_C2C4.x -= v1;
            }
        }

        v4 = 1;
    }

    return v4;
}

BOOL ov69_021E737C(UnkStruct_ov69_part02 *param0)
{
    fx32 distance = Camera_GetDistance(param0->camera);
    BOOL v1 = 0;

    switch (param0->unk_C2E8) {
    case 1:
        if (distance > (0x50000 + 0x8000)) {
            distance -= 0x8000;
            param0->unk_C2D0.x -= 0x80;
            param0->unk_C2D0.y = param0->unk_C2D0.x;
        } else {
            distance = 0x50000;
            v1 = 1;
        }
        break;
    case 0:
        if (distance < (0x128000 - 0x8000)) {
            distance += 0x8000;
            param0->unk_C2D0.x += 0x80;
            param0->unk_C2D0.y = param0->unk_C2D0.x;
        } else {
            distance = 0x128000;
            v1 = 1;
        }
        break;
    }

    Camera_SetDistance(distance, param0->camera);

    return v1;
}

void ov69_021E7408(UnkStruct_ov69_part02 *param0)
{
    MtxFx33 v0;
    MtxFx33 v1;
    MtxFx33 v2;
    u32 i;

    v0 = ov69_021E7728;

    switch (param0->unk_C2F8) {
    case 0:
        break;
    case 2:
        Thunk_G3X_Reset();
        RequestSwap3DBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_W);
        param0->unk_C2F8 = 0;
        break;
    case 1:
        Thunk_G3X_Reset();
        Camera_PushLookAtToNNSGlb();

        ov69_021E70A8(&v0, &param0->unk_C2C4);
        GF3dRender_DrawModel((NNSG3dRenderObj *)&param0->unk_C084, &param0->unk_C2AC, &v0, &param0->unk_C2B8);

        v1 = ov69_021E7794;
        GF3dRender_DrawModel((NNSG3dRenderObj *)&param0->unk_C0E0[4], &param0->unk_C2AC, &v1, &param0->unk_C2D0);

        v2 = ov69_021E774C;
        for (i = 0; i < param0->count; i++) {
            MTX_Concat33(&param0->unk_10[i].unk_04, &v0, &v2);

            if (param0->unk_10[i].unk_28 != 0) {
                GF3dRender_DrawModel((NNSG3dRenderObj *)&param0->unk_C0E0[param0->unk_10[i].unk_28], &param0->unk_C2AC, &v2, &param0->unk_C2D0);
            }
        }

        RequestSwap3DBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_W);
        break;
    }
}

BOOL ov69_021E7520(int param0, int param1, String *param2, String *param3, enum HeapID heapID)
{
    MsgData *v0;
    int v1 = ov69_021E6300(param0);
    BOOL v2;

    v0 = NewMsgDataFromNarc(MSGDATA_LOAD_DIRECT, 0x1B, 0x31E, heapID);

    ReadMsgDataIntoString(v0, param0, param2);
    DestroyMsgData(v0);

    if (v1 == 0) {
        v1 = 1;
        param1 = 0;
        v2 = 0;
    } else {
        v2 = 1;
    }

    v0 = NewMsgDataFromNarc(MSGDATA_LOAD_DIRECT, 0x1B, LocationGmmDatGetGmmNo(v1), heapID);

    ReadMsgDataIntoString(v0, param1, param3);
    DestroyMsgData(v0);

    return v2;
}

BOOL ov69_021E758C(int param0)
{
    if (ov69_021E6300(param0)) {
        return 1;
    }

    return 0;
}

void ov69_021E75A0(UnkStruct_ov69_part02_Angle *param0)
{
    if (param0->unk_00 >= 0) {
        param0->unk_00 = param0->unk_00 % 0xffff;
    } else {
        param0->unk_00 = param0->unk_00 + (0xffff * ((-param0->unk_00 / 0xffff) + 1));
    }

    if (param0->unk_04 >= 0) {
        param0->unk_04 = param0->unk_04 % 0xffff;
    } else {
        param0->unk_04 = param0->unk_04 + (0xffff * ((-param0->unk_04 / 0xffff) + 1));
    }
}

u32 ov69_021E75F8(const UnkStruct_ov69_part02_Angle *param0, const UnkStruct_ov69_part02_Angle *param1)
{
    s32 v0, v1;
    u32 v2;

    s32 d0 = param0->unk_00 - param1->unk_00;
    s32 d1 = param0->unk_04 - param1->unk_04;

    v0 = (d0 < 0) ? -d0 : d0;
    v1 = (d1 < 0) ? -d1 : d1;

    if (v0 > GF_DegreeToSinCosIdxNoWrap(180)) {
        v0 = 0xffff - v0;
    }

    if (v1 > GF_DegreeToSinCosIdxNoWrap(180)) {
        v1 = 0xffff - v1;
    }

    v2 = FX_Sqrt(((v0 * v0) + (v1 * v1)) << FX32_SHIFT) >> FX32_SHIFT;

    return v2;
}
