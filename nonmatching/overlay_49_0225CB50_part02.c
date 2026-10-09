#include "global.h"

#include "assert.h"
#include "filesystem.h"
#include "gf_3d_render.h"
#include "gf_gfx_loader.h"
#include "heap.h"
#include "math_util.h"
#include "unk_02018000.h"

typedef struct UnkStruct_ov49_0225CC4C_Models {
    UnkStruct_02018030 unk00[18];
    void *unk120[18][3];
} UnkStruct_ov49_0225CC4C_Models;

typedef struct UnkStruct_ov49_0225CC4C {
    u8 unk000[0x29C];
    UnkStruct_ov49_0225CC4C_Models unk29C;
    NNSFndAllocator unk494;
} UnkStruct_ov49_0225CC4C;

typedef struct UnkStruct_ov49_0225D098 {
    u16 unk00;
    u16 unk02;
    UnkStruct_020181B0 unk04;
    UnkStruct_020180BC unk7C[3];
    u8 unkB8[3];
    u8 unkBB;
    u8 unkBC[3];
    u8 unkBF;
    fx32 unkC0[3];
    u8 unkCC;
    u8 unkCD[3];
    void *unkD0[3];
    fx32 unkDC;
    u8 unkE0;
    u8 unkE1;
    u8 unkE2;
} UnkStruct_ov49_0225D098;

typedef struct UnkStruct_ov49_0225D1EC {
    u16 unk00;
    u16 unk02;
} UnkStruct_ov49_0225D1EC;

typedef struct UnkStruct_ov49_0225D4FC {
    u8 unk000[0x180];
    u32 unk180[2];
    u32 unk188;
    u32 unk18C[5];
} UnkStruct_ov49_0225D4FC;

typedef struct UnkStruct_ov49_0225D5FC {
    UnkStruct_02018030 unk00[2];
    UnkStruct_020180BC unk20[5];
    u32 unk84[5];
} UnkStruct_ov49_0225D5FC;

extern UnkStruct_ov49_0225D098 *ov49_0225DBF8(void *a0);
extern void ov49_02258800(const UnkStruct_ov49_0225D1EC *a0, VecFx32 *a1);
extern void ov49_02258814(const VecFx32 *a0, UnkStruct_ov49_0225D1EC *a1);
extern void ov49_02258830(void *a0, NARC *a1, u32 a2, u32 a3);
extern void ov45_0222D740(void *a0);
extern void ov49_0225D1C4(UnkStruct_ov49_0225D098 *param0, UnkStruct_ov49_0225D1EC param1);
extern void ov49_0225D224(UnkStruct_ov49_0225CC4C *param0, UnkStruct_ov49_0225D098 *param1, int param2, int param3, void *param4);
extern void ov49_0225D328(UnkStruct_ov49_0225CC4C *param0, UnkStruct_ov49_0225D098 *param1, int param2);
extern BOOL ov49_0225D450(const UnkStruct_ov49_0225D098 *param0, int param1);

UnkStruct_ov49_0225D098 *ov49_0225D098(UnkStruct_ov49_0225CC4C *param0, int param1, u32 param2, u32 param3)
{
    UnkStruct_ov49_0225D098 *v0;
    int v1;

    v0 = ov49_0225DBF8(param0);

    sub_020181B0(&v0->unk04, &param0->unk29C.unk00[param1]);

    for (v1 = 0; v1 < 3; v1++) {
        if (param0->unk29C.unk120[param1][v1] != NULL) {
            sub_020180E8(&v0->unk7C[v1], &param0->unk29C.unk00[param1], param0->unk29C.unk120[param1][v1], &param0->unk494);
        }
    }

    sub_020182A0(&v0->unk04, 1);

    {
        UnkStruct_ov49_0225D1EC v2;

        v2.unk00 = (param2) * 16;
        v2.unk02 = (param3) * 16;

        ov49_0225D1C4(v0, v2);
    }

    v0->unk00 = 1;
    v0->unk02 = param1;
    v0->unkCC = 20;
    v0->unkDC = FX32_ONE;
    v0->unkE0 = 0;
    v0->unkE1 = 31;
    v0->unkE2 = 31;

    return v0;
}

void ov49_0225D160(UnkStruct_ov49_0225CC4C *param0, UnkStruct_ov49_0225D098 *param1)
{
    int v0;

    sub_020182A0(&param1->unk04, 0);

    for (v0 = 0; v0 < 3; v0++) {
        if (param0->unk29C.unk120[param1->unk02][v0] != NULL) {
            sub_020180E8(&param1->unk7C[v0], &param0->unk29C.unk00[param1->unk02], param0->unk29C.unk120[param1->unk02][v0], &param0->unk494);
        }
    }

    param1->unk00 = 0;
}

int ov49_0225D1C0(const UnkStruct_ov49_0225D098 *param0)
{
    return param0->unk02;
}

void ov49_0225D1C4(UnkStruct_ov49_0225D098 *param0, UnkStruct_ov49_0225D1EC param1)
{
    VecFx32 v0;

    ov49_02258800(&param1, &v0);
    sub_020182A8(&param0->unk04, v0.x, v0.y, v0.z);
}

UnkStruct_ov49_0225D1EC ov49_0225D1EC(const UnkStruct_ov49_0225D098 *param0)
{
    VecFx32 v0;
    UnkStruct_ov49_0225D1EC v1;

    sub_020182B0((UnkStruct_020181B0 *)&param0->unk04, &v0.x, &v0.y, &v0.z);
    ov49_02258814(&v0, &v1);

    return v1;
}

void ov49_0225D214(UnkStruct_ov49_0225CC4C *param0, UnkStruct_ov49_0225D098 *param1, int param2, int param3)
{
    ov49_0225D224(param0, param1, param2, param3, NULL);
}

void ov49_0225D224(UnkStruct_ov49_0225CC4C *param0, UnkStruct_ov49_0225D098 *param1, int param2, int param3, void *param4)
{
    GF_ASSERT(param2 < 3);
    GF_ASSERT(param3 < 7);
    GF_ASSERT(param1->unk02 < 18);

    if (param0->unk29C.unk120[param1->unk02][param2] != NULL) {
        if (param1->unkB8[param2] == 0) {
            sub_020181D4(&param1->unk04, &param1->unk7C[param2]);
        }

        param1->unkB8[param2] = 1;
        param1->unkBC[param2] = param3;
        param1->unkD0[param2] = param4;
        param1->unkCD[param2] = 0;

        switch (param3) {
        case 0:
        case 1:
        case 2:
            param1->unkC0[param2] = 0;
            break;
        case 3:
        case 4:
            param1->unkC0[param2] = sub_020181A4(&param1->unk7C[param2]);
            break;
        case 5:
            param1->unkC0[param2] = 0;
            param1->unkCD[param2] = MTRandom() % param1->unkCC;
            break;
        case 6:
            param1->unkC0[param2] = 0;
            param1->unkCD[param2] = MTRandom() % param1->unkCC;
            break;
        }

        sub_02018198(&param1->unk7C[param2], param1->unkC0[param2]);
    }
}

void ov49_0225D328(UnkStruct_ov49_0225CC4C *param0, UnkStruct_ov49_0225D098 *param1, int param2)
{
    GF_ASSERT(param2 < 3);
    GF_ASSERT(param1->unk02 < 18);

    if ((param0->unk29C.unk120[param1->unk02][param2] != NULL) && (param1->unkB8[param2] == 1)) {
        sub_020181E0(&param1->unk04, &param1->unk7C[param2]);

        param1->unkB8[param2] = 0;
        param1->unkC0[param2] = 0;
        param1->unkBC[param2] = 0;
        param1->unkCD[param2] = 0;
        param1->unkD0[param2] = NULL;
    }
}

void ov49_0225D394(UnkStruct_ov49_0225CC4C *param0, UnkStruct_ov49_0225D098 *param1)
{
    int v0;

    for (v0 = 0; v0 < 3; v0++) {
        if (ov49_0225D450(param1, v0) == 1) {
            ov49_0225D328(param0, param1, v0);
        }
    }
}

BOOL ov49_0225D3BC(const UnkStruct_ov49_0225CC4C *param0, const UnkStruct_ov49_0225D098 *param1, int param2)
{
    GF_ASSERT(param2 < 3);
    GF_ASSERT(param1->unk02 < 18);

    if (param0->unk29C.unk120[param1->unk02][param2] != NULL) {
        return param1->unkB8[param2];
    }

    return 0;
}

void ov49_0225D3F8(UnkStruct_ov49_0225CC4C *param0, UnkStruct_ov49_0225D098 *param1, int param2, fx32 param3)
{
    GF_ASSERT(param2 < 3);
    GF_ASSERT(param1->unk02 < 18);
    GF_ASSERT(param0->unk29C.unk120[param1->unk02][param2] != NULL);

    if (param1->unkBC[param2] != 2) {
        return;
    }

    param1->unkC0[param2] = param3;
    sub_02018198(&param1->unk7C[param2], param1->unkC0[param2]);
}

BOOL ov49_0225D450(const UnkStruct_ov49_0225D098 *param0, int param1)
{
    GF_ASSERT(param1 < 3);
    GF_ASSERT(param0->unk02 < 18);
    return param0->unkB8[param1];
}

fx32 ov49_0225D470(const UnkStruct_ov49_0225D098 *param0, int param1)
{
    GF_ASSERT(param1 < 3);
    GF_ASSERT(param0->unk02 < 18);
    return param0->unkC0[param1];
}

void ov49_0225D494(UnkStruct_ov49_0225D098 *param0, BOOL param1)
{
    sub_020182A0(&param0->unk04, param1);
}

void ov49_0225D4A0(UnkStruct_ov49_0225CC4C *param0, UnkStruct_ov49_0225D098 *param1, u32 param2)
{
    GF_ASSERT(param1->unk02 < 18);
    NNS_G3dMdlSetMdlLightEnableFlagAll(param0->unk29C.unk00[param1->unk02].model, param2);
}

void ov49_0225D4C8(UnkStruct_ov49_0225D098 *param0, fx32 param1)
{
    param0->unkDC = param1;
}

void ov49_0225D4D0(UnkStruct_ov49_0225D098 *param0, u8 param1, u8 param2)
{
    param0->unkE0 = 1;
    param0->unkE1 = param1;
    param0->unkE2 = param2;
}

void ov49_0225D4E8(UnkStruct_ov49_0225D098 *param0)
{
    param0->unkE0 = 0;
}

void ov49_0225D4F0(UnkStruct_ov49_0225D098 *param0, fx32 param1, fx32 param2, fx32 param3)
{
    sub_020182C4(&param0->unk04, param1, param2, param3);
}

UnkStruct_ov49_0225D4FC *ov49_0225D4FC(int param0, int param1, enum HeapID heapID)
{
    void *v0;
    u32 v1 = (param1 * 5) + param0;
    GF_ASSERT(v1 < (5 * 5));
    v0 = GfGfxLoader_LoadFromNarc(0xCA, 1 + v1, 0, heapID, 1);

    return v0;
}

void ov49_0225D520(void *param0)
{
    Heap_Free(param0);
}

void ov49_0225D528(UnkStruct_02018030 *param0, NARC *param1, u32 param2, u32 heapID)
{
    ov49_02258830(param0, param1, param2, heapID);

    {
        param0->mdlSet = NNS_G3dGetMdlSet(param0->resFile);

        if (param0->mdlSet != NULL) {
            u8 *set = (u8 *)param0->mdlSet;

            if (set[9] != 0) {
                u32 ofs = *(u32 *)(set + 8 + *(u16 *)(set + 0xE) + 4);
                param0->model = (NNSG3dResMdl *)(set + ofs);
            } else {
                param0->model = NULL;
            }
        } else {
            param0->model = NULL;
        }
    }

    {
        param0->tex = NNS_G3dGetTex(param0->resFile);
        GF3dRender_BindModelSet(param0->resFile, param0->tex);
    }
}

void ov49_0225D574(UnkStruct_02018030 *param0)
{
    sub_02018068(param0);
}

void ov49_0225D57C(fx32 *param0, UnkStruct_020180BC *param1, fx32 param2)
{
    fx32 v0;

    v0 = sub_020181A4(param1);

    if (((*param0) + param2) < v0) {
        (*param0) += param2;
    } else {
        (*param0) = ((*param0) + param2) % v0;
    }
}

BOOL ov49_0225D5A0(fx32 *param0, UnkStruct_020180BC *param1, fx32 param2)
{
    fx32 v0;
    BOOL v1;

    v0 = sub_020181A4(param1);

    if (((*param0) + param2) < v0) {
        (*param0) += param2;
        v1 = 0;
    } else {
        (*param0) = v0 - FX32_HALF;
        v1 = 1;
    }

    return v1;
}

void ov49_0225D5C8(fx32 *param0, UnkStruct_020180BC *param1, fx32 param2)
{
    fx32 v0;

    v0 = sub_020181A4(param1);

    if (((*param0) - param2) >= 0) {
        (*param0) -= param2;
    } else {
        (*param0) = ((*param0) - param2) + v0;
    }
}

BOOL ov49_0225D5E4(fx32 *param0, const UnkStruct_020180BC *param1, fx32 param2)
{
    BOOL v0;

    if (((*param0) - param2) > 0) {
        (*param0) -= param2;
        v0 = 0;
    } else {
        (*param0) = 0;
        v0 = 1;
    }

    return v0;
}

void ov49_0225D5FC(UnkStruct_ov49_0225D5FC *param0, NARC *param1, const UnkStruct_ov49_0225D4FC *param2, u32 heapID, NNSFndAllocator *param4)
{
    int v0, v1;

    for (v0 = 0; v0 < 2; v0++) {
        ov49_0225D528(&param0->unk00[v0], param1, param2->unk180[v0], heapID);
        ov45_0222D740(param0->unk00[v0].resFile);
    }

    for (v0 = 0; v0 < 5; v0++) {
        if (param2->unk18C[v0] == param2->unk180[0]) {
            param0->unk84[v0] = 0;
        } else {
            param0->unk84[v0] = 1;

            if (v0 != 3) {
                sub_020180BC(&param0->unk20[v0], &param0->unk00[0], param1, param2->unk18C[v0], heapID, param4);
            } else {
                sub_020180BC(&param0->unk20[v0], &param0->unk00[1], param1, param2->unk18C[v0], heapID, param4);
            }
        }
    }
}
