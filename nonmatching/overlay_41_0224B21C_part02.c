#include "global.h"

#include "bg_window.h"
#include "font.h"
#include "gf_3d_loader.h"
#include "gf_gfx_loader.h"
#include "gf_gfx_planes.h"
#include "heap.h"
#include "overlay_manager.h"
#include "screen_fade.h"
#include "sprite.h"
#include "system.h"
#include "touchscreen.h"
#include "unk_02026E30.h"
#include "unk_02005D10.h"

typedef struct UnkStruct_ov41_B958 {
    void *unk_00;
    int unk_04;
    void *unk_08;
    int unk_0C;
    void *unk_10;
    void *unk_14;
} UnkStruct_ov41_B958;

typedef struct UnkStruct_ov41_0224B530 {
    void *unk_00;
    void *unk_04[20];
    int unk_54;
    void *unk_58;
    int unk_5C;
    int unk_60;
    int unk_64;
    int heapID;
} UnkStruct_ov41_0224B530;

typedef struct UnkStruct_ov41_Portrait {
    int unk_00;
    int unk_04;
    u8 unk_08[0x8];
    int unk_10;
    u8 unk_14[0xC];
    int unk_20;
    u8 unk_24[0xC];
    int unk_30;
    u8 unk_34[0xC];
    int unk_40;
    u8 unk_44[0x13C];
    NARC *unk_180;
    u8 unk_184[0x8];
    int unk_18C;
    u8 unk_190[0x88];
    u8 unk_218[0x1C];
    void *unk_234;
    int unk_238;
    int unk_23C;
    int unk_240;
    int unk_244;
    int unk_248;
    u16 unk_24C;
    u8 unk_24E[2];
    int unk_250;
    int unk_254;
    int unk_258;
    u16 unk_25C;
    u8 unk_25E[2];
    int unk_260;
    int unk_264;
} UnkStruct_ov41_Portrait;

typedef struct UnkStruct_ov41_AccessoryPortrait {
    void *unk_00;
    int unk_04;
    int unk_08;
    int unk_0C;
    UnkStruct_ov41_Portrait *unk_10;
    u8 unk_14[0x40];
    BgConfig *unk_54;
    u8 unk_58[0x13C];
    NARC *unk_194;
    Sprite *unk_198;
    Window *unk_19C;
} UnkStruct_ov41_AccessoryPortrait;

typedef struct UnkStruct_ov41_0224B530_Args {
    void *unk_00;
    int unk_04;
    int unk_08;
    int heapID;
} UnkStruct_ov41_0224B530_Args;


void *sub_0202B9B8(void *a0, void *a1);
int sub_0202BEFC(void *a0);
UnkStruct_ov41_Portrait *ov41_0224B530(const UnkStruct_ov41_0224B530_Args *a0, void *a1);
void ov41_02246130(void);
void ov41_02246150(void);
void ov41_02246670(void *a0, int a1);
void ov41_02246698(void *a0);
void ov41_022466B8(void *a0);
void ov41_022466C8(void *a0);
void ov41_0224B554(UnkStruct_ov41_Portrait *a0);
void ov41_0224B57C(UnkStruct_ov41_Portrait *a0);
void ov41_0224BD8C(UnkStruct_ov41_AccessoryPortrait *a0);
void ov41_0224BE34(UnkStruct_ov41_AccessoryPortrait *a0);
void ov41_0224BE5C(UnkStruct_ov41_AccessoryPortrait *a0);
void ov41_0224B5C8(UnkStruct_ov41_Portrait *a0);
void ov41_0224BBF0(void *arg);
void ov41_0224BC04(UnkStruct_ov41_AccessoryPortrait *a0);
void ov41_0224BCA4(UnkStruct_ov41_AccessoryPortrait *a0);
void ov41_0224BCF0(UnkStruct_ov41_AccessoryPortrait *a0);
void ov41_0224BDCC(UnkStruct_ov41_AccessoryPortrait *a0);
void ov41_022462E4(void *a0, NARC *narc, int a2, int a3, int a4, int a5);
void ov41_02246304(void *a0, NARC *narc, int a2, int a3, int a4, int a5, int a6);
void ov41_02246328(void *a0, NARC *narc, int a2, int a3, int a4);
void ov41_02246344(void *a0, NARC *narc, int a2, int a3, int a4);
Sprite *ov41_02246280(void *a0, int a1, int a2, int a3, int a4, int a5);
void ov41_02246360(void *a0, int a1);
void ov41_02246374(void *a0, int a1);
void ov41_02246388(void *a0, int a1);
void ov41_0224639C(void *a0, int a1);
void ov41_02246518(void *a0, void *a1, int a2);

void ov41_0224B958(UnkStruct_ov41_Portrait *a0, UnkStruct_ov41_B958 *a1, const UnkStruct_ov41_0224B530 *a2, int heapID)
{
    int i;
    int objId;
    void *resource;

    for (i = 0; i < a2->unk_54; i++) {
        objId = sub_0202BEFC(a2->unk_04[i]);

        if (GF2dGfxRawResMan_DoesNotHaveObjWithId(a1->unk_10, objId) == 1) {
            resource = GfGfxLoader_LoadFromOpenNarc(a0->unk_180, objId + 1, 0, heapID, 1);
            GF2dGfxRawResMan_AllocObj(a1->unk_10, resource, objId);
            NNS_G2dGetUnpackedCharacterData(resource, (u8 *)a1->unk_00 + objId * 8 + 4);
            *(u32 *)((u8 *)a1->unk_00 + objId * 8) = (u32)a0->unk_00;
        }
    }

    resource = GfGfxLoader_LoadFromOpenNarc(a0->unk_180, 0, 0, heapID, 1);
    GF2dGfxRawResMan_AllocObj(a1->unk_14, resource, 0);
    NNS_G2dGetUnpackedPaletteData(resource, (u8 *)a1->unk_08 + 4);
    *(u32 *)a1->unk_08 = (u32)a0->unk_00;
    *(u32 *)((u8 *)a1->unk_08 + 8) = 3;
}

BOOL AccessoryPortrait_Init(OverlayManager *man, int *state)
{
    UnkStruct_ov41_AccessoryPortrait *data;
    void **args;
    UnkStruct_ov41_0224B530_Args args2;

    Heap_Create(3, 0xD, 0x20000);
    Heap_Create(3, 0xE, 0x40000);

    data = OverlayManager_CreateAndGetData(man, 0x1A0, 0xD);
    memset(data, 0, 0x1A0);

    Main_SetVBlankIntrCB(ov41_0224BBF0, data);
    HBlankInterruptDisable();

    args = OverlayManager_GetArgs(man);
    data->unk_00 = sub_0202B9B8(args[0], args[1]);
    data->unk_08 = args[1];
    data->unk_0C = args[2];

    ov41_02246130();
    ((u8 *)&gSystem)[0x60 + 9] = 0;
    GfGfx_SwapDisplay();

    ov41_02246670(&data->unk_14, 0xE);

    args2.unk_00 = data->unk_54;
    args2.unk_04 = 0x48;
    args2.unk_08 = 0x10;
    args2.heapID = 0xE;
    data->unk_10 = ov41_0224B530(&args2, data->unk_00);
    ov41_0224BC04(data);
    ov41_0224BCA4(data);
    ov41_0224BCF0(data);
    ov41_0224BDCC(data);
    ov41_0224BE5C(data);

    return 1;
}

BOOL AccessoryPortrait_Main(OverlayManager *man, int *state)
{
    UnkStruct_ov41_AccessoryPortrait *data;

    data = OverlayManager_GetData(man);

    Thunk_G3X_Reset();
    NNS_G2dSetupSoftwareSpriteCamera();
    ov41_0224B554(data->unk_10);
    RequestSwap3DBuffers(0, 0);
    ov41_022466C8(&data->unk_14);

    if (*state > 5) {
        return 0;
    }

    switch (*state) {
    case 0:
        (*state)++;
        break;
    case 1:
        BeginNormalPaletteFade(0, 5, 1, 0, 6, 1, 0xD);
        (*state)++;
        break;
    case 2:
        if (IsPaletteFadeFinished()) {
            (*state)++;
        }
        break;
    case 3:
        if (!(*(u32 *)((u8 *)&gSystem + 0x48) & 3)) {
            if (!System_GetTouchNew()) {
                break;
            }
        }
        PlaySE(0x5DD);
        (*state)++;
        break;
    case 4:
        BeginNormalPaletteFade(0, 2, 0, 0, 6, 1, 0xD);
        (*state)++;
        break;
    case 5:
        if (IsPaletteFadeFinished()) {
            return 1;
        }
        break;
    }

    return 0;
}

BOOL AccessoryPortrait_Exit(OverlayManager *man, int *state)
{
    UnkStruct_ov41_AccessoryPortrait *data;

    data = OverlayManager_GetData(man);

    ov41_0224B57C(data->unk_10);
    ov41_0224BD8C(data);
    ov41_0224BE34(data);
    ov41_02246698(&data->unk_14);
    ov41_02246150();
    Main_SetVBlankIntrCB(NULL, NULL);
    HBlankInterruptDisable();
    OverlayManager_FreeData(man);
    Heap_Destroy(0xD);
    Heap_Destroy(0xE);

    return 1;
}

void ov41_0224BBF0(void *arg)
{
    UnkStruct_ov41_AccessoryPortrait *data = arg;

    ov41_0224B5C8(data->unk_10);
    ov41_022466B8(&data->unk_14);
}

void ov41_0224BC04(UnkStruct_ov41_AccessoryPortrait *a0)
{
    void *scrnData;
    void *scrn;
    u32 width;
    u32 height;

    GfGfxLoader_GXLoadPalFromOpenNarc(a0->unk_194, 0x7E, 0, 0x60, 0x40, 0xE);
    GfGfxLoader_LoadCharDataFromOpenNarc(a0->unk_194, 0x7D, a0->unk_54, 1, 0, 0, 0, 0xE);

    scrnData = GfGfxLoader_GetScrnData(0x1A, 0x80, 0, (NNSG2dScreenData **)&scrn, 0xE);

    width = ((u32)((u16 *)scrn)[0] << 21) >> 24;
    height = ((u32)((u16 *)scrn)[1] << 21) >> 24;

    LoadRectToBgTilemapRect(a0->unk_54, 1, (u8 *)scrn + 0xC, 0, 0, width, height);
    BgTilemapRectChangePalette(a0->unk_54, 1, 0, 0, width, height, 4);

    Heap_Free(scrnData);
    ScheduleBgTilemapBufferTransfer(a0->unk_54, 1);
}

void ov41_0224BCA4(UnkStruct_ov41_AccessoryPortrait *a0)
{
    GfGfxLoader_GXLoadPal(0xEF, 0, 4, 0, 0, 0xE);
    GfGfxLoader_LoadScrnData(0xEF, 9, a0->unk_54, 4, 0, 0, 0, 0xE);
    GfGfxLoader_LoadCharData(0xEF, 1, a0->unk_54, 4, 0, 0, 0, 0xE);
}

void ov41_0224BCF0(UnkStruct_ov41_AccessoryPortrait *a0)
{
    Sprite *sprite;

    ov41_022462E4(&a0->unk_14, a0->unk_194, 0xE9, 0, 1, 0x3E8);
    ov41_02246304(&a0->unk_14, a0->unk_194, 0xEA, 0, 1, 6, 0x3E8);
    ov41_02246328(&a0->unk_14, a0->unk_194, 0xE8, 0, 0x3E8);
    ov41_02246344(&a0->unk_14, a0->unk_194, 0xE7, 0, 0x3E8);
    sprite = ov41_02246280(&a0->unk_14, 0x3E8, 0, 0x90, 0x64, 1);
    a0->unk_198 = sprite;
    Sprite_SetPriority(a0->unk_198, 1);
}

void ov41_0224BD8C(UnkStruct_ov41_AccessoryPortrait *a0)
{
    ov41_02246360(&a0->unk_14, 0x3E8);
    ov41_02246374(&a0->unk_14, 0x3E8);
    ov41_02246388(&a0->unk_14, 0x3E8);
    ov41_0224639C(&a0->unk_14, 0x3E8);
    Sprite_Delete(a0->unk_198);
}

void ov41_0224BDCC(UnkStruct_ov41_AccessoryPortrait *a0)
{
    a0->unk_19C = AllocWindows(0xE, 1);
    AddWindowParameterized(a0->unk_54, a0->unk_19C, 3, 0, 0x12, 0x20, 6, 5, 1);
    LoadFontPal0(0, 0xA0, 0xE);
    SetBgPriority(3, 0);
    SetBgPriority(0, 2);
    SetBgPriority(1, 1);
    BgSetPosTextAndCommit(a0->unk_54, 3, 3, 0);
}
