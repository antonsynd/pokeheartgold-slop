#include "global.h"

#include "constants/heap.h"

#include "bg_window.h"
#include "msgdata.h"
#include "sprite.h"
#include "sprite_transfer.h"
#include "text.h"
#include "unk_0200A090.h"

typedef struct UnkOv41DotRow {
    SpriteResource *unk_00[4];
    Sprite *unk_10[20];
    int unk_60;
} UnkOv41DotRow;

typedef struct UnkOv41CounterShared {
    int unk_00;
    int unk_04;
    int unk_08;
} UnkOv41CounterShared;

typedef struct UnkOv41Counter {
    SpriteResource *unk_00[4];
    Sprite *unk_10[2];
    Window *unk_18;
    int unk_1C;
    int unk_20;
    u8 unk_24[8];
    UnkOv41CounterShared *unk_2C;
    u8 unk_30[0x60];
    int unk_90;
} UnkOv41Counter;

extern void ov41_0224AD0C(Window **window, BgConfig *bgConfig, int x, int y, int width, int height, int tile, int frame);
extern int ov41_0224AE24(Window *window, int narcId, int bankId, int strno, int x, int y, u32 color, u32 speed);
extern void ov41_0224B298(UnkOv41Counter *counter);

int ov41_0224AE78(Window *window, int narcId, int bankId, int strno, int x, int y, u32 color, u32 speed, String **dest);
void ov41_0224AED8(UnkOv41DotRow *row, SpriteList *spriteList, GF_2DGfxResMan **resMans, int visible, NARC *narc);
void ov41_0224AF8C(UnkOv41DotRow *row, int count);
void ov41_0224AFD4(UnkOv41DotRow *row, GF_2DGfxResMan **resMans);
void ov41_0224AFF8(SpriteResource **resources, GF_2DGfxResMan **resMans, int heapId, NARC *narc, int charFile, int plttFile, int cellFile, int animFile, int plttNum, int idBase);
void ov41_0224B084(SpriteResource **resources, GF_2DGfxResMan **resMans);
void ov41_0224B0B8(SpriteResource **resources, GF_2DGfxResMan **resMans, SpriteResourcesHeader *header, int priority);
void ov41_0224B118(UnkOv41Counter *counter, SpriteList *spriteList, GF_2DGfxResMan **resMans, int value, BgConfig *bgConfig, UnkOv41CounterShared *shared, NARC *narc);

int ov41_0224AE78(Window *window, int narcId, int bankId, int strno, int x, int y, u32 color, u32 speed, String **dest) {
    GF_ASSERT(*dest == NULL);

    MsgData *msgData = NewMsgDataFromNarc(MSGDATA_LOAD_DIRECT, narcId, bankId, HEAP_ID_13);
    GF_ASSERT(msgData != NULL);
    *dest = NewString_ReadMsgData(msgData, strno);
    int ret = AddTextPrinterParameterizedWithColor(window, 1, *dest, x, y, speed, color, NULL);
    DestroyMsgData(msgData);
    return ret;
}

void ov41_0224AED8(UnkOv41DotRow *row, SpriteList *spriteList, GF_2DGfxResMan **resMans, int visible, NARC *narc) {
    SpriteResourcesHeader header;
    SimpleSpriteTemplate tmpl;
    int i, j;

    ov41_0224AFF8(row->unk_00, resMans, HEAP_ID_14, narc, 103, 225, 102, 101, 2, 2000);
    ov41_0224B0B8(row->unk_00, resMans, &header, 0);

    tmpl.spriteList = spriteList;
    tmpl.header = &header;
    tmpl.whichScreen = NNS_G2D_VRAM_TYPE_2DSUB;
    tmpl.priority = 0;
    tmpl.heapID = HEAP_ID_14;

    for (i = 0; i < 2; i++) {
        tmpl.position.y = (104 + 18 * i) * FX32_ONE + 512 * FX32_ONE;
        for (j = 0; j < 10; j++) {
            tmpl.position.x = (38 + 18 * j) * FX32_ONE;
            row->unk_10[i * 10 + j] = Sprite_Create(&tmpl);
            Sprite_SetAnimCtrlSeq(row->unk_10[i * 10 + j], 1);
            if (i * 10 + j >= visible) {
                Sprite_SetDrawFlag(row->unk_10[i * 10 + j], FALSE);
            }
        }
    }
}

void ov41_0224AF8C(UnkOv41DotRow *row, int count) {
    int i = row->unk_60;

    if (i < count) {
        for (; i < count; i++) {
            Sprite_SetAnimCtrlSeq(row->unk_10[i], 0);
        }
    } else if (i > count) {
        for (i--; i >= count; i--) {
            Sprite_SetAnimCtrlSeq(row->unk_10[i], 1);
        }
    }
    row->unk_60 = count;
}

void ov41_0224AFD4(UnkOv41DotRow *row, GF_2DGfxResMan **resMans) {
    int i;

    for (i = 0; i < 20; i++) {
        Sprite_Delete(row->unk_10[i]);
    }
    ov41_0224B084(row->unk_00, resMans);
}

void ov41_0224AFF8(SpriteResource **resources, GF_2DGfxResMan **resMans, int heapId, NARC *narc, int charFile, int plttFile, int cellFile, int animFile, int plttNum, int idBase) {
    resources[0] = AddCharResObjFromOpenNarc(resMans[0], narc, charFile, FALSE, idBase + charFile, NNS_G2D_VRAM_TYPE_2DSUB, heapId);
    SpriteTransfer_CreateCharTransferTask_AllocAtEnd(resources[0]);
    sub_0200A740(resources[0]);

    resources[1] = AddPlttResObjFromOpenNarc(resMans[1], narc, plttFile, FALSE, idBase + plttFile, NNS_G2D_VRAM_TYPE_2DSUB, plttNum, heapId);
    SpriteTransfer_CreatePlttTransferTask(resources[1]);
    sub_0200A740(resources[1]);

    resources[2] = AddCellOrAnimResObjFromOpenNarc(resMans[2], narc, cellFile, FALSE, idBase + cellFile, GF_GFX_RES_TYPE_CELL, heapId);
    resources[3] = AddCellOrAnimResObjFromOpenNarc(resMans[3], narc, animFile, FALSE, idBase + animFile, GF_GFX_RES_TYPE_ANIM, heapId);
}

void ov41_0224B084(SpriteResource **resources, GF_2DGfxResMan **resMans) {
    SpriteTransfer_DeleteCharTransferTask(resources[0]);
    SpriteTransfer_DeletePlttTransferTask(resources[1]);
    DestroySingle2DGfxResObj(resMans[0], resources[0]);
    DestroySingle2DGfxResObj(resMans[1], resources[1]);
    DestroySingle2DGfxResObj(resMans[2], resources[2]);
    DestroySingle2DGfxResObj(resMans[3], resources[3]);
}

void ov41_0224B0B8(SpriteResource **resources, GF_2DGfxResMan **resMans, SpriteResourcesHeader *header, int priority) {
    CreateSpriteResourcesHeader(header,
        GF2DGfxResObj_GetResID(resources[0]),
        GF2DGfxResObj_GetResID(resources[1]),
        GF2DGfxResObj_GetResID(resources[2]),
        GF2DGfxResObj_GetResID(resources[3]),
        -1, -1, 0, priority,
        resMans[0], resMans[1], resMans[2], resMans[3], NULL, NULL);
}

void ov41_0224B118(UnkOv41Counter *counter, SpriteList *spriteList, GF_2DGfxResMan **resMans, int value, BgConfig *bgConfig, UnkOv41CounterShared *shared, NARC *narc) {
    SpriteResourcesHeader header;
    SimpleSpriteTemplate tmpl;
    int i;

    ov41_0224AFF8(counter->unk_00, resMans, HEAP_ID_14, narc, 229, 230, 228, 227, 2, 3000);
    ov41_0224B0B8(counter->unk_00, resMans, &header, 0);

    tmpl.spriteList = spriteList;
    tmpl.header = &header;
    tmpl.position.y = 58 * FX32_ONE + 512 * FX32_ONE;
    tmpl.priority = 0;
    tmpl.whichScreen = NNS_G2D_VRAM_TYPE_2DSUB;
    tmpl.heapID = HEAP_ID_14;

    for (i = 0; i < 2; i++) {
        tmpl.position.x = (103 + 24 * i) * FX32_ONE;
        counter->unk_10[i] = Sprite_Create(&tmpl);
    }

    counter->unk_1C = value;
    counter->unk_20 = value * 30;
    counter->unk_2C = shared;
    shared->unk_00 = value;
    counter->unk_2C->unk_08 = value;
    counter->unk_90 = 0;

    ov41_0224B298(counter);
    ov41_0224AD0C(&counter->unk_18, bgConfig, 10, 8, 14, 4, 193, 0);
    FillWindowPixelBuffer(counter->unk_18, 0);
    ov41_0224AE24(counter->unk_18, 27, 215, 4, 0, 4, MAKE_TEXT_COLOR(1, 2, 0), TEXT_SPEED_NOTRANSFER);
    ov41_0224AE24(counter->unk_18, 27, 215, 5, 72, 4, MAKE_TEXT_COLOR(1, 2, 0), TEXT_SPEED_NOTRANSFER);
    CopyWindowToVram(counter->unk_18);
}
