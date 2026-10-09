#include "global.h"

#include "assert.h"
#include "bg_window.h"
#include "filesystem.h"
#include "gf_3d_loader.h"
#include "heap.h"
#include "pokepic.h"
#include "unk_0200B150.h"

typedef struct UnkStruct_ov41_02245EA0 {
    void *unk00;
    u32 *unk04;
    int unk08;
    volatile int unk0C;
    u32 *unk10;
    int unk14;
    volatile int unk18;
    int unk1C;
    void *unk20;
    u8 unk24[0x8];
    int unk2C;
    u8 unk30[0x4];
    GF_2DGfxRawResMan *unk34;
    NNSG2dCharacterData **unk38;
    int unk3C;
    BgConfig *unk40;
    u8 unk44[0x13C];
    NARC *unk180;
} UnkStruct_ov41_02245EA0;

typedef struct UnkStruct_ov41_022467E4_Template {
    u8 unk00[0xC];
    int heapID;
} UnkStruct_ov41_022467E4_Template;

typedef struct UnkStruct_ov41_0224683C_Template {
    u32 unk00;
    void *charsData;
} UnkStruct_ov41_0224683C_Template;

typedef struct UnkStruct_ov41_0224689C_Template {
    u32 unk00;
    void *paletteData;
    u32 unk08;
} UnkStruct_ov41_0224689C_Template;

extern void ov41_02246D54(void *a0, int a1, int a2, enum HeapID heapID);
extern void ov41_02246B68(UnkStruct_ov41_02245EA0 *a0, void *a1);
extern void ov41_02246BEC(UnkStruct_ov41_02245EA0 *a0, void *a1);
extern void ov41_02246DA8(void *a0);
extern void ov41_02246CB0(UnkStruct_ov41_02245EA0 *a0);
extern void ov41_02246D2C(UnkStruct_ov41_02245EA0 *a0);
extern void ov41_02246B34(UnkStruct_ov41_02245EA0 *a0);
extern void ov41_02246A94(UnkStruct_ov41_02245EA0 *a0);
extern void ov41_02246C90(UnkStruct_ov41_02245EA0 *a0, enum HeapID heapID);
extern void ov41_02246CC0(UnkStruct_ov41_02245EA0 *a0, enum HeapID heapID, u32 a2, u32 a3);
extern void ov41_02246B5C(UnkStruct_ov41_02245EA0 *a0);
extern void ov41_022467E4(UnkStruct_ov41_02245EA0 *a0, const UnkStruct_ov41_022467E4_Template *a1);
extern void ov41_02246830(UnkStruct_ov41_02245EA0 *a0);
extern void ov41_02246820(UnkStruct_ov41_02245EA0 *a0);
extern void ov41_022468FC(UnkStruct_ov41_02245EA0 *a0);
extern void ov41_02246A20(UnkStruct_ov41_02245EA0 *a0);
extern void ov41_02246B34(UnkStruct_ov41_02245EA0 *a0);
extern void *sub_02015DDC(const void *a0);
extern void sub_02015E20(void *a0);
extern void sub_02015E64(void *a0);
extern void *sub_02015EA0(const void *a0);
extern void *sub_02015F1C(const void *a0);

void ov41_022463B0(UnkStruct_ov41_02245EA0 *param0, void *param1)
{
    ov41_02246D54(param1, 100 + 18, 1 + 18, HEAP_ID_14);
    ov41_02246B68(param0, param1);
    ov41_02246BEC(param0, param1);
}

void ov41_022463D4(void *param0)
{
    ov41_02246DA8(param0);
}

NNSG2dCharacterData *ov41_022463DC(UnkStruct_ov41_02245EA0 *param0, void *param1, int param2)
{
    GF2dGfxRawResMan_AllocObj(param0->unk34, param1, param2);
    NNS_G2dGetUnpackedCharacterData(param1, &param0->unk38[param2]);

    return param0->unk38[param2];
}

void ov41_022463FC(void)
{
    GX_SetVisibleWnd(GX_WNDMASK_NONE);
    G2_SetBG0Priority(1);
    G2_SetBG1Priority(0);
}

void ov41_0224642C(void)
{
    GX_SetVisibleWnd(GX_WNDMASK_W0);
    G2_SetWnd0InsidePlane(GX_WND_PLANEMASK_BG0 | GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_BG2 | GX_WND_PLANEMASK_BG3 | GX_WND_PLANEMASK_OBJ, 0);
    G2_SetWndOutsidePlane(GX_WND_PLANEMASK_BG1 | GX_WND_PLANEMASK_OBJ, 0);
    G2_SetWnd0Position(8 + 2, 16 + 2, (136 + 2) + (112 - (2 * 2)), (16 + 2) + (129 - (2 * 2)));
    G2_SetBG0Priority(0);
    G2_SetBG1Priority(1);
}

void ov41_02246494(UnkStruct_ov41_02245EA0 *param0)
{
    DoScheduledBgGpuUpdates(param0->unk40);
    PokepicManager_HandleLoadImgAndOrPltt(param0->unk20);
    OamManager_ApplyAndResetBuffers();
}

void ov41_022464AC(void *param0, enum HeapID heapID)
{
    ov41_02246D54(param0, 100 + 18, 1 + 18, heapID);
}

int ov41_022464BC(NNSG2dCharacterData *param0, int param1, int param2, int param3)
{
    u32 *v0;
    int v1, v2;
    int v3;
    int v4;

    v1 = param0->W;
    v2 = param0->H;
    v1 *= 8;
    v2 *= 8;

    if ((param1 < 0) || (param2 < 0) || (param1 >= v1) || (param2 >= v2)) {
        return 2;
    }

    v0 = param0->pRawData;
    v3 = (param2 * v1) + param1;
    v4 = (v3 % 8);
    v3 /= 8;

    if ((v0[v3] & (0xf << (v4 * 4))) == (param3 << (v4 * 4))) {
        return 1;
    }

    return 0;
}

void ov41_02246518(UnkStruct_ov41_02245EA0 *param0, const UnkStruct_ov41_022467E4_Template *param1, enum HeapID heapID)
{
    ov41_022467E4(param0, param1);
    ov41_02246CC0(param0, heapID, 0x2800, 0x20);
    PokepicManager_SetNeedG3IdentityFlag(param0->unk20, 1);
    ov41_02246C90(param0, heapID);
}

void ov41_02246544(UnkStruct_ov41_02245EA0 *param0, BgConfig *param1, int param2)
{
    param0->unk40 = param1;

    {
        BgTemplate v0 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .size = GF_BG_SCR_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xf000,
            .charBase = GX_BG_CHARBASE_0x04000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 2,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        FreeBgTilemapBuffer(param0->unk40, GF_BG_LYR_MAIN_2);
        InitBgFromTemplate(param0->unk40, GF_BG_LYR_MAIN_2, &v0, 0);
        BG_ClearCharDataRange(GF_BG_LYR_MAIN_2, 32, 0, param2);
        BgClearTilemapBufferAndCommit(param0->unk40, GF_BG_LYR_MAIN_2);
    }
}

void ov41_02246594(UnkStruct_ov41_02245EA0 *param0)
{
    ov41_02246CB0(param0);
    ov41_02246820(param0);
    ov41_02246D2C(param0);

    Heap_Free(param0->unk04);
    param0->unk04 = NULL;

    Heap_Free(param0->unk10);
    param0->unk10 = NULL;
}

void ov41_022465C0(UnkStruct_ov41_02245EA0 *param0)
{
    FreeBgTilemapBuffer(param0->unk40, GF_BG_LYR_MAIN_2);
}

void ov41_022465CC(UnkStruct_ov41_02245EA0 *param0)
{
    PokepicManager_HandleLoadImgAndOrPltt(param0->unk20);
}

void ov41_022465D8(UnkStruct_ov41_02245EA0 *param0, int param1, int param2, u16 param3, const VecFx32 *param4)
{
    G3_Identity();
    G3_PushMtx();

    {
        NNS_G2dSetupSoftwareSpriteCamera();
        G3_Translate(param1 * FX32_ONE, param2 * FX32_ONE, 0);

        {
            G3_RotZ(FX_SinIdx(param3), FX_CosIdx(param3));
            *(volatile fx32 *)0x0400046C = param4->x;
            *(volatile fx32 *)0x0400046C = param4->y;
            *(volatile fx32 *)0x0400046C = param4->z;
        }

        G3_Translate(-param1 * FX32_ONE, -param2 * FX32_ONE, 0);
        G3_PushMtx();

        {
            if (param0->unk1C) {
                ov41_02246830(param0);
            }

            if (param0->unk2C) {
                PokepicManager_DrawAll(param0->unk20);
            }
        }
        G3_PopMtx(1);
    }
    G3_PopMtx(1);
}

void ov41_02246670(UnkStruct_ov41_02245EA0 *param0, int param1)
{
    param0->unk180 = NARC_New(0x1A, HEAP_ID_14);
    ov41_02246A94(param0);
    param0->unk40 = BgConfig_Alloc(HEAP_ID_14);
    ov41_022468FC(param0);
}

void ov41_02246698(UnkStruct_ov41_02245EA0 *param0)
{
    ov41_02246A20(param0);
    Heap_Free(param0->unk40);
    NARC_Delete(param0->unk180);
    ov41_02246B34(param0);
}

void ov41_022466B8(UnkStruct_ov41_02245EA0 *param0)
{
    DoScheduledBgGpuUpdates(param0->unk40);
    OamManager_ApplyAndResetBuffers();
}

void ov41_022466C8(UnkStruct_ov41_02245EA0 *param0)
{
    ov41_02246B5C(param0);
}

void ov41_022466D0(void)
{
    GraphicsBanks v0 = {
        GX_VRAM_BG_128_C,
        GX_VRAM_BGEXTPLTT_NONE,
        GX_VRAM_SUB_BG_32_H,
        GX_VRAM_SUB_BGEXTPLTT_NONE,
        GX_VRAM_OBJ_32_FG,
        GX_VRAM_OBJEXTPLTT_NONE,
        GX_VRAM_SUB_OBJ_16_I,
        GX_VRAM_SUB_OBJEXTPLTT_NONE,
        GX_VRAM_TEX_01_AB,
        GX_VRAM_TEXPLTT_0123_E
    };

    GfGfx_SetBanks(&v0);
}

void ov41_022466F0(void)
{
    NNS_G3dInit();
    G3X_InitMtxStack();

    GfGfx_EngineATogglePlanes(GX_PLANEMASK_BG0, 1);

    G2_SetBG0Priority(1);
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AntiAlias(1);
    G3X_AlphaTest(0, 0);
    G3X_AlphaBlend(1);
    G3X_SetClearColor(GX_RGB(0, 0, 0), 0, 0x7fff, 63, 0);
    G3_SwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_W);
    G3_ViewPort(0, 0, 255, 191);

    GF_3DVramMan_InitFrameTexVramManager(2, 1);
    GF_3DVramMan_InitFramePlttVramManager(0x4000, 1);
}

void ov41_02246778(void)
{
    {
        GraphicsModes v0 = {
            GX_DISPMODE_GRAPHICS,
            GX_BGMODE_0,
            GX_BGMODE_0,
            GX_BG0_AS_3D
        };

        SetBothScreensModesAndDisable(&v0);
    }

    GX_SetOBJVRamModeChar(GX_OBJVRAMMODE_CHAR_1D_32K);
    NNS_G2dInitOamManagerModule();

    GfGfx_DisableEngineAPlanes();
    GfGfx_DisableEngineBPlanes();
    GfGfx_EngineATogglePlanes(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_BG2 | GX_PLANEMASK_BG3 | GX_PLANEMASK_OBJ, 1);
    GfGfx_EngineBTogglePlanes(GX_PLANEMASK_BG0 | GX_PLANEMASK_BG1 | GX_PLANEMASK_OBJ, 1);
}

void ov41_022467C8(void)
{
    NNS_GfdResetFrmTexVramState();
    NNS_GfdResetFrmPlttVramState();
}

void ov41_022467D4(void)
{
    GfGfx_DisableEngineAPlanes();
    GfGfx_DisableEngineBPlanes();
    NNS_G2dInitOamManagerModule();
}

void ov41_022467E4(UnkStruct_ov41_02245EA0 *param0, const UnkStruct_ov41_022467E4_Template *param1)
{
    param0->unk00 = sub_02015DDC(param1);
    param0->unk04 = Heap_Alloc(param1->heapID, sizeof(void *) * (100 + 18));
    param0->unk08 = (100 + 18);
    param0->unk0C = 0;
    param0->unk10 = Heap_Alloc(param1->heapID, sizeof(void *) * (1 + 18));
    param0->unk14 = (1 + 18);
    param0->unk18 = 0;
    param0->unk1C = 1;
}

void ov41_02246820(UnkStruct_ov41_02245EA0 *param0)
{
    sub_02015E20(param0->unk00);
    param0->unk00 = NULL;
}

void ov41_02246830(UnkStruct_ov41_02245EA0 *param0)
{
    sub_02015E64(param0->unk00);
}

void ov41_0224683C(UnkStruct_ov41_02245EA0 *param0, const UnkStruct_ov41_0224683C_Template *param1, int param2)
{
    int v0;
    u32 v1;


    for (v0 = 0; v0 < param2; v0++) {
        GF_ASSERT(param0->unk0C < param0->unk08);

        if (param1[v0].charsData != NULL) {
            v1 = (u32)sub_02015EA0(param1 + v0);
            param0->unk04[param0->unk0C] = v1;
        } else {
            param0->unk04[param0->unk0C] = 0;
        }

        param0->unk0C++;
    }
}

void ov41_0224689C(UnkStruct_ov41_02245EA0 *param0, const UnkStruct_ov41_0224689C_Template *param1, int param2)
{
    int v0;
    u32 v1;


    for (v0 = 0; v0 < param2; v0++) {
        GF_ASSERT(param0->unk18 < param0->unk14);

        if (param1[v0].paletteData != NULL) {
            v1 = (u32)sub_02015F1C(param1 + v0);
            param0->unk10[param0->unk18] = v1;
        } else {
            param0->unk10[param0->unk18] = 0;
        }

        param0->unk18++;
    }
}

void ov41_022468FC(UnkStruct_ov41_02245EA0 *param0)
{
    {
        BgTemplate v0 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .size = GF_BG_SCR_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xf800,
            .charBase = GX_BG_CHARBASE_0x00000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        InitBgFromTemplate(param0->unk40, GF_BG_LYR_MAIN_1, &v0, 0);
        BG_ClearCharDataRange(GF_BG_LYR_MAIN_1, 32, 0, HEAP_ID_14);
        BgClearTilemapBufferAndCommit(param0->unk40, GF_BG_LYR_MAIN_1);
    }

    {
        BgTemplate v1 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .size = GF_BG_SCR_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xf000,
            .charBase = GX_BG_CHARBASE_0x04000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 2,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        InitBgFromTemplate(param0->unk40, GF_BG_LYR_MAIN_2, &v1, 0);
        BG_ClearCharDataRange(GF_BG_LYR_MAIN_2, 32, 0, HEAP_ID_14);
        BgClearTilemapBufferAndCommit(param0->unk40, GF_BG_LYR_MAIN_2);
    }

    {
        BgTemplate v2 = {
            .x = 0,
            .y = -(16 + 129),
            .bufferSize = 0x800,
            .baseTile = 0,
            .size = GF_BG_SCR_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0xe800,
            .charBase = GX_BG_CHARBASE_0x08000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 3,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        InitBgFromTemplate(param0->unk40, GF_BG_LYR_MAIN_3, &v2, 0);
        BG_ClearCharDataRange(GF_BG_LYR_MAIN_3, 32, 0, HEAP_ID_14);
        BgClearTilemapBufferAndCommit(param0->unk40, GF_BG_LYR_MAIN_3);
    }

    {
        BgTemplate v3 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .size = GF_BG_SCR_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x7800,
            .charBase = GX_BG_CHARBASE_0x00000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 1,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        InitBgFromTemplate(param0->unk40, GF_BG_LYR_SUB_0, &v3, 0);
        BG_ClearCharDataRange(GF_BG_LYR_SUB_0, 32, 0, HEAP_ID_14);
        BgClearTilemapBufferAndCommit(param0->unk40, GF_BG_LYR_SUB_0);
    }

    {
        BgTemplate v4 = {
            .x = 0,
            .y = 0,
            .bufferSize = 0x800,
            .baseTile = 0,
            .size = GF_BG_SCR_SIZE_256x256,
            .colorMode = GX_BG_COLORMODE_16,
            .screenBase = GX_BG_SCRBASE_0x7000,
            .charBase = GX_BG_CHARBASE_0x04000,
            .bgExtPltt = GX_BG_EXTPLTT_01,
            .priority = 0,
            .areaOver = 0,
            .mosaic = FALSE,
        };

        InitBgFromTemplate(param0->unk40, GF_BG_LYR_SUB_1, &v4, 0);
        BG_ClearCharDataRange(GF_BG_LYR_SUB_1, 32, 0, HEAP_ID_14);
        BgClearTilemapBufferAndCommit(param0->unk40, GF_BG_LYR_SUB_1);
    }
}

void ov41_02246A20(UnkStruct_ov41_02245EA0 *param0)
{
    FreeBgTilemapBuffer(param0->unk40, GF_BG_LYR_MAIN_1);
    FreeBgTilemapBuffer(param0->unk40, GF_BG_LYR_MAIN_2);
    FreeBgTilemapBuffer(param0->unk40, GF_BG_LYR_MAIN_3);
    FreeBgTilemapBuffer(param0->unk40, GF_BG_LYR_SUB_0);
    FreeBgTilemapBuffer(param0->unk40, GF_BG_LYR_SUB_1);
}
