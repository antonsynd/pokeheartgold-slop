#include "global.h"

#include "assert.h"
#include "bg_window.h"
#include "filesystem.h"
#include "gf_gfx_loader.h"
#include "gf_gfx_planes.h"
#include "heap.h"
#include "pm_string.h"
#include "sprite.h"
#include "sprite_transfer.h"
#include "text.h"
#include "touch_hitbox_controller.h"
#include "touchscreen.h"
#include "unk_0200A090.h"

typedef struct UnkStruct_ov49_Gfx {
    BgConfig *bgConfig;
    u8 unk4[0x12C];
    GF_2DGfxResMan *resMan[4];
} UnkStruct_ov49_Gfx;

typedef struct UnkStruct_ov49_Sprites {
    u8 unk0[0x7C];
    Sprite *sprites[12];
    SpriteResource *plttTasks[4];
    SpriteResource *charTasks[12];
    SpriteResource *unkEC[4];
    SpriteResource *unkFC[4];
} UnkStruct_ov49_Sprites;

typedef struct UnkStruct_ov49_Touch {
    s16 unk0;
    u8 unk2;
    u8 unk3;
    u16 unk4;
    u16 unk6;
    u16 unk8;
    u16 unkA;
    Window window;
    TouchHitboxController *hitboxController;
    void *scrnBuffers[3];
    NNSG2dScreenData *scrnData[3];
} UnkStruct_ov49_Touch;

typedef struct UnkStruct_ov49_Entry {
    u8 unk0;
    u8 unk1;
    u16 unk2;
    s16 unk4;
    s16 unk6;
} UnkStruct_ov49_Entry;

extern void ov49_0225CB50(u32 index, u32 event, void *arg);
extern void ov49_0225BB14(UnkStruct_ov49_Gfx *gfx, NARC *narc, int memberNo, GFBgLayer layer, u32 tileStart, enum HeapID heapID);
extern String *ov49_0225B388(void *a0, int a1, int a2);
extern u32 ov45_0222AAC8(const void *a0);

void ov49_0225CAD4(UnkStruct_ov49_Touch *touch, UnkStruct_ov49_Gfx *gfx, u32 state, NARC *narc, enum HeapID heapID);

const u8 ov49_022696EC[3] = { 0, 1, 0 };

const s8 ov49_022696F0[3] = { 0, 9, 6 };

const TouchscreenHitbox ov49_022696F4 = { .rect = { 0x20, 0xA0, 0x28, 0xD8 } };

const WindowTemplate ov49_0226970C = { 5, 1, 0, 24, 3, 5, 0x1D0 };

const UnkStruct_ov49_Entry ov49_02269764[2] = {
    { 2, 0, 50, -8, -6 },
    { 3, 0, 54, -8, -6 },
};

const UnkStruct_ov49_Entry ov49_022699AC[24] = {
    { 0, 0, 1, -8, -6 },
    { 0, 6, 4, -8, -6 },
    { 0, 1, 7, -8, -6 },
    { 0, 2, 10, -8, -6 },
    { 0, 6, 13, -8, -6 },
    { 0, 5, 16, -8, -6 },
    { 0, 3, 19, -8, -6 },
    { 0, 4, 22, -8, -6 },
    { 0, 0, 25, -8, -6 },
    { 0, 7, 28, -8, -6 },
    { 0, 4, 31, -8, -6 },
    { 0, 1, 34, -8, -6 },
    { 0, 5, 37, -8, -6 },
    { 0, 5, 40, -8, -6 },
    { 0, 2, 43, -8, -6 },
    { 0, 3, 46, -8, -6 },
    { 1, 0, 103, 0, 0 },
    { 1, 1, 106, 0, 0 },
    { 1, 0, 109, 0, 0 },
    { 1, 0, 118, 0, 0 },
    { 1, 1, 115, 0, 0 },
    { 1, 0, 112, 0, 0 },
    { 1, 1, 121, 0, 0 },
    { 1, 0, 124, 0, 0 },
};

void ov49_0225C78C(UnkStruct_ov49_Sprites *sprites, UnkStruct_ov49_Gfx *gfx) {
    int i;

    for (i = 0; i < 12; i++) {
        if (sprites->charTasks[i] != NULL) {
            Sprite_Delete(sprites->sprites[i]);
            sprites->sprites[i] = NULL;
            SpriteTransfer_DeleteCharTransferTask(sprites->charTasks[i]);
            DestroySingle2DGfxResObj(gfx->resMan[0], sprites->charTasks[i]);
            sprites->charTasks[i] = NULL;
        }
    }

    for (i = 0; i < 4; i++) {
        if (sprites->plttTasks[i] != NULL) {
            SpriteTransfer_DeletePlttTransferTask(sprites->plttTasks[i]);
            DestroySingle2DGfxResObj(gfx->resMan[1], sprites->plttTasks[i]);
            DestroySingle2DGfxResObj(gfx->resMan[2], sprites->unkEC[i]);
            DestroySingle2DGfxResObj(gfx->resMan[3], sprites->unkFC[i]);
            sprites->plttTasks[i] = NULL;
        }
    }
}

const UnkStruct_ov49_Entry *ov49_0225C828(int index, s32 a1, s32 a2, u32 altIndex) {
    if (a1 == a2) {
        return &ov49_02269764[altIndex];
    }
    return &ov49_022699AC[index];
}

void ov49_0225C844(UnkStruct_ov49_Touch *touch, UnkStruct_ov49_Gfx *gfx, NARC *narc, enum HeapID heapID) {
    int i;

    AddWindow(gfx->bgConfig, &touch->window, &ov49_0226970C);

    for (i = 0; i < 3; i++) {
        touch->scrnBuffers[i] = GfGfxLoader_GetScrnDataFromOpenNarc(narc, 56 + i, FALSE, &touch->scrnData[i], heapID);
    }

    touch->hitboxController = TouchHitboxController_Create(&ov49_022696F4, 1, ov49_0225CB50, touch, heapID);
    touch->unk6 = 1;
}

void ov49_0225C8A8(UnkStruct_ov49_Touch *touch) {
    int i;

    TouchHitboxController_Destroy(touch->hitboxController);
    RemoveWindow(&touch->window);

    for (i = 0; i < 3; i++) {
        Heap_Free(touch->scrnBuffers[i]);
    }

    touch->unk2 = 0;
}

BOOL ov49_0225C8D4(UnkStruct_ov49_Touch *touch, UnkStruct_ov49_Gfx *gfx, NARC *narc, enum HeapID heapID) {
    BOOL result = FALSE;

    if (touch->unk6 == 0) {
        TouchHitboxController_IsTriggered(touch->hitboxController);
    } else {
        touch->unk3 = 1;
    }

    if (touch->unk2 == 1) {
        if (touch->unk0 == 0) {
            touch->unk2 = 0;
            ov49_0225CAD4(touch, gfx, 0, narc, heapID);
        }
    }

    if (touch->unk3 != touch->unk4) {
        touch->unk4 = touch->unk3;

        if (touch->unk3 == 2) {
            ov49_0225CAD4(touch, gfx, 1, narc, heapID);
        } else {
            if (touch->unk2 == 0) {
                ov49_0225CAD4(touch, gfx, 0, narc, heapID);
            } else {
                ov49_0225CAD4(touch, gfx, 2, narc, heapID);
            }
        }

        if (touch->unk2 == 0 && touch->unk3 == 2) {
            result = TRUE;
            touch->unk2 = 1;
            touch->unk0 = 1;
        }
    }

    return result;
}

void ov49_0225C970(UnkStruct_ov49_Touch *touch, UnkStruct_ov49_Gfx *gfx, void *msgSource, const void *profile, NARC *narc, enum HeapID heapID) {
    GfGfxLoader_LoadScrnDataFromOpenNarc(narc, 55, gfx->bgConfig, GF_BG_LYR_SUB_0, 0, 0, FALSE, heapID);

    touch->unk8 = 0;
    touch->unkA = ov45_0222AAC8(profile);

    GfGfxLoader_LoadCharDataFromOpenNarc(narc, touch->unkA, gfx->bgConfig, GF_BG_LYR_SUB_2, 320, 0, FALSE, heapID);
    ov49_0225BB14(gfx, narc, touch->unkA + 27, GF_BG_LYR_SUB_2, 320, heapID);

    {
        String *str = ov49_0225B388(msgSource, 1, 63);

        FillWindowPixelBuffer(&touch->window, 0);
        AddTextPrinterParameterizedWithColor(&touch->window, 0, str, 0, 4, TEXT_SPEED_INSTANT, MAKE_TEXT_COLOR(15, 14, 0), NULL);
    }

    if (touch->unk2 == 0) {
        ov49_0225CAD4(touch, gfx, 0, narc, heapID);
    } else {
        ov49_0225CAD4(touch, gfx, 2, narc, heapID);
    }
}

void ov49_0225CA30(UnkStruct_ov49_Touch *touch, UnkStruct_ov49_Gfx *gfx, u32 index, NARC *narc, enum HeapID heapID) {
    GF_ASSERT(index < 3);

    GfGfxLoader_LoadScrnDataFromOpenNarc(narc, 55, gfx->bgConfig, GF_BG_LYR_SUB_0, 0, 0, FALSE, heapID);

    touch->unk8 = 1;
    touch->unkA = index;

    GfGfxLoader_LoadCharDataFromOpenNarc(narc, touch->unkA + 93, gfx->bgConfig, GF_BG_LYR_SUB_2, 320, 0, FALSE, heapID);

    if (touch->unk2 == 0) {
        ov49_0225CAD4(touch, gfx, 0, narc, heapID);
    } else {
        ov49_0225CAD4(touch, gfx, 2, narc, heapID);
    }
}

void ov49_0225CAA8(UnkStruct_ov49_Touch *touch, UnkStruct_ov49_Gfx *gfx) {
    BgClearTilemapBufferAndCommit(gfx->bgConfig, GF_BG_LYR_SUB_0);
    BgClearTilemapBufferAndCommit(gfx->bgConfig, GF_BG_LYR_SUB_1);
    BgClearTilemapBufferAndCommit(gfx->bgConfig, GF_BG_LYR_SUB_2);
    BgSetPosTextAndCommit(gfx->bgConfig, GF_BG_LYR_SUB_2, BG_POS_OP_SET_Y, 0);
}

void ov49_0225CAD4(UnkStruct_ov49_Touch *touch, UnkStruct_ov49_Gfx *gfx, u32 state, NARC *narc, enum HeapID heapID) {
    CopyToBgTilemapRect(gfx->bgConfig, GF_BG_LYR_SUB_1, 0, 3, 32, 21, touch->scrnData[state]->rawData, 0, 3, 32, 32);
    ScheduleBgTilemapBufferTransfer(gfx->bgConfig, GF_BG_LYR_SUB_1);

    if (touch->unk8 == 1) {
        ov49_0225BB14(gfx, narc, ov49_022696EC[state] + touch->unkA * 2 + 96, GF_BG_LYR_SUB_2, 320, heapID);
    }

    ScheduleSetBgPosText(gfx->bgConfig, GF_BG_LYR_SUB_2, BG_POS_OP_SET_Y, ov49_022696F0[state]);
}
