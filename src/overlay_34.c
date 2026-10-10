#include "global.h"

// The retail TU saw these two getters with a full-width return: it masks the
// animation number to u16 and keeps the frame unmasked. Rename sprite.h's u16
// prototypes so the local declarations below win (sprite.h itself is shared).
#define Sprite_GetAnimationNumber Sprite_GetAnimationNumber_u16
#define Sprite_GetAnimationFrame  Sprite_GetAnimationFrame_u16

#include "constants/sndseq.h"

#include "msgdata/msg.naix"

#include "bg_window.h"
#include "dialog_box.h"
#include "error_handling.h"
#include "field_system.h"
#include "filesystem_files_def.h"
#include "font.h"
#include "gf_gfx_loader.h"
#include "gf_gfx_planes.h"
#include "heap.h"
#include "mail_message.h"
#include "message_format.h"
#include "msgdata.h"
#include "overlay_01.h"
#include "player_data.h"
#include "pm_string.h"
#include "save_palpad.h"
#include "sprite.h"
#include "sprite_transfer.h"
#include "sys_task.h"
#include "sys_task_api.h"
#include "systask_environment.h"
#include "system.h"
#include "task.h"
#include "text.h"
#include "touchscreen.h"
#include "unk_02005D10.h"
#include "unk_02009D48.h"
#include "unk_0200A090.h"

#undef Sprite_GetAnimationNumber
#undef Sprite_GetAnimationFrame
u32 Sprite_GetAnimationNumber(Sprite *sprite);
u32 Sprite_GetAnimationFrame(Sprite *sprite);

typedef struct Ov34ChatEntry {
    String *name;
    String *sentence;
    String *friendName;
    u32 id;
    u32 gender;
    MailMessage mail;
} Ov34ChatEntry;

typedef struct Ov34ChatLog {
    Ov34ChatEntry entries[30];
    int count;
    int start;
} Ov34ChatLog;

typedef struct Ov34LinkEntry {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4[0x14];
} Ov34LinkEntry;

struct UnkStruct_0205AC88 {
    u8 unk0[0xC];
    Ov34LinkEntry entries[51];
    u8 unk4D4[4];
    SavePalPad *palPad;
    Ov34ChatLog *chatLog;
};

typedef struct Ov34UserInfo {
    u32 id;
    u32 unk4;
    MailMessage mail;
} Ov34UserInfo;

typedef struct Ov34CommBssDesc {
    u8 unk0[0x50];
    u8 userGameInfo[0x70];
} Ov34CommBssDesc;

typedef struct Ov34Row {
    Window window0;
    Window window1;
    Window window2;
    int unk30;
    int unk34;
} Ov34Row;

typedef struct Ov34Work {
    int state;
    struct UnkStruct_0205AC88 *unk4;
    struct UnkStruct_02059E1C *unk8;
    FieldSystem *fieldSystem;
    PlayerProfile *profile;
    BgConfig *bgConfig;
    MessageFormat *msgFormat;
    MsgData *msgData;
    void *scrnBuf;
    NNSG2dScreenData *scrnData;
    SpriteList *spriteList;
    G2dRenderer renderer;
    GF_2DGfxResMan *resMans[4];
    SpriteResource *resObjs[4];
    SpriteResourcesHeader header;
    Sprite *sprites[8];
    int unk1B8[3];
    int selectedRow;
    Ov34Row rows[3];
    Ov34ChatLog *chatLog;
    Window titleWindow;
    u16 count;
    u16 prevCount;
    u16 scroll;
    u16 scrollbarVisible;
    int prevScroll;
    int unk290;
    BOOL needsRedraw;
    u8 touchTrigger;
    s8 repeatCounter;
    u8 repeatStart;
    u8 repeatInterval;
    BOOL scrollbarHeld;
    u16 animFlags[2];
    SysTask *task;
} Ov34Work;

Ov34Work *ov34_0225D7A8(FieldSystem *fieldSystem);
void ov34_0225D87C(Ov34Work *work);

Ov34CommBssDesc *sub_02035754(int index);
PlayerProfile *sub_02035784(void);
PlayerProfile *sub_02035798(int index);
MailMessage *sub_0205AA84(struct UnkStruct_02059E1C *unk80);

static void ov34_0225D520(Ov34Work *work);
static void ov34_0225D558(Ov34Work *work, BgConfig *bgConfig);
static void ov34_0225D5A0(SysTask *task, void *taskData);
static void ov34_0225D5F8(Ov34Work *work);
static void ov34_0225D650(BgConfig *bgConfig, Ov34Row *rows, Window *titleWindow);
static void ov34_0225D77C(Ov34Row *rows, Window *titleWindow);
static void ov34_0225D900(BgConfig *bgConfig);
static void ov34_0225D924(BgConfig *bgConfig);
static void ov34_0225DA50(Ov34Work *work);
static void ov34_0225DB20(Ov34Work *work);
static int ov34_0225DC00(Ov34ChatLog *chatLog, int index);
static int ov34_0225DC0C(int start, int offset);
static void ov34_0225DC18(Ov34Work *work, int index, Ov34ChatEntry *entry);
static void ov34_0225DD04(Ov34Work *work);
static void ov34_0225DDB8(Sprite *sprite, int y);
static void ov34_0225DE04(Ov34Work *work);
static int ov34_0225DE94(Ov34Work *work);
static int ov34_0225E020(Ov34Work *work);
static void ov34_0225E0E4(Ov34Work *work);
static void ov34_0225E164(Ov34Work *work);
static void ov34_0225E1C4(BgConfig *bgConfig, NNSG2dScreenData *scrnData, Ov34Row *rows, int selected, int count, int *total);
static String *ov34_0225E2BC(SavePalPad *palPad, u32 id, MessageFormat *msgFormat, MsgData *msgData, PlayerProfile *profile);
static void ov34_0225E348(Ov34Work *work, u32 id, MailMessage *mail, PlayerProfile *profile);
static int ov34_0225E428(Ov34Work *work, MailMessage *mail, u32 id);
static void ov34_0225E4A8(Ov34Work *work, PlayerProfile *profile, MailMessage *mail, u32 id);
static void ov34_0225E4F8(Ov34Work *work);
static void ov34_0225E560(Ov34Work *work);
static void ov34_0225E56C(Ov34Work *work);
static void ov34_0225E58C(Ov34Work *work);
static BOOL ov34_0225E5D4(Ov34Work *work);
static void ov34_0225E5DC(Ov34Work *work, BOOL flag);
static BOOL ov34_0225E5E4(Ov34Work *work);
static void ov34_0225E5EC(Ov34Work *work, int index);
static void ov34_0225E630(Ov34Work *work);

static void ov34_0225D520(Ov34Work *work) {
    String *string = NewString_ReadMsgData(work->msgData, 0xDB);
    AddTextPrinterParameterizedWithColor(&work->titleWindow, 0, string, 0, 0, 0, MAKE_TEXT_COLOR(15, 2, 0), NULL);
    String_Delete(string);
}

static void ov34_0225D558(Ov34Work *work, BgConfig *bgConfig) {
    if (gSystem.newKeys & PAD_BUTTON_X) {
        if (ov01_021F6B10(work->fieldSystem) == TRUE) {
            work->state = 3;
        }
    }
    ov34_0225E58C(work);
    ov34_0225E4F8(work);
    ov34_0225DE04(work);
    ov34_0225E164(work);
    ov34_0225DD04(work);
    ov34_0225E630(work);
}

static void ov34_0225D5A0(SysTask *task, void *taskData) {
    Ov34Work *work = taskData;
    FieldSystem *fieldSystem = work->fieldSystem;
    BgConfig *bgConfig = work->bgConfig;

    if (fieldSystem->unk84 == NULL) {
        return;
    }

    switch (work->state) {
    case 0:
    case 1:
        break;
    case 2:
        if (!FieldSystem_TaskIsRunning(fieldSystem)) {
            ov34_0225D558(work, bgConfig);
        }
        SpriteList_RenderAndAnimateSprites(work->spriteList);
        break;
    case 3:
        ov01_021F6A9C(fieldSystem, 0, NULL);
        work->state = 4;
        break;
    case 4:
    case 5:
        break;
    }
}

static void ov34_0225D5F8(Ov34Work *work) {
    work->needsRedraw = 0;
    work->count = 0;
    work->prevCount = 0;
    work->scroll = 0;
    work->scrollbarVisible = 0;
    work->msgFormat = MessageFormat_New(HEAP_ID_FIELD1);
    work->msgData = NewMsgDataFromNarc(MSGDATA_LOAD_DIRECT, NARC_msgdata_msg, NARC_msg_msg_0738_UNION_bin, HEAP_ID_FIELD1);
    work->scrnBuf = GfGfxLoader_GetScrnData(NARC_a_0_7_3, 3, TRUE, &work->scrnData, HEAP_ID_FIELD1);
}

static void ov34_0225D650(BgConfig *bgConfig, Ov34Row *rows, Window *titleWindow) {
    int i;

    for (i = 0; i < 3; i++) {
        AddWindowParameterized(bgConfig, &rows[i].window0, 4 + i, 1, 3 + i * 7, 8, 2, 12, (32 * 5) + i * (8 * 2));
        FillWindowPixelBuffer(&rows[i].window0, 0);
        CopyWindowToVram(&rows[i].window0);

        AddWindowParameterized(bgConfig, &rows[i].window1, 4 + i, 2, 5 + i * 7, 27, 5, 12, ((32 * 5) + (8 * 2) * 3) + i * (27 * 5));
        FillWindowPixelBuffer(&rows[i].window1, 0);
        CopyWindowToVram(&rows[i].window1);

        AddWindowParameterized(bgConfig, &rows[i].window2, 4 + i, 12, 3 + i * 7, 15, 2, 12, (((32 * 5) + (8 * 2) * 3) + (27 * 5) * 3) + i * (15 * 2));
        FillWindowPixelBuffer(&rows[i].window2, 0);
        CopyWindowToVram(&rows[i].window2);
    }

    AddWindowParameterized(bgConfig, titleWindow, 4, 8, 0, 7, 2, 12, 0x2BF);
    FillWindowPixelBuffer(titleWindow, 0);
}

static void ov34_0225D77C(Ov34Row *rows, Window *titleWindow) {
    int i;

    RemoveWindow(titleWindow);

    for (i = 0; i < 3; i++) {
        RemoveWindow(&rows[i].window1);
        RemoveWindow(&rows[i].window0);
        RemoveWindow(&rows[i].window2);
    }
}

Ov34Work *ov34_0225D7A8(FieldSystem *fieldSystem) {
    SysTask *task = CreateSysTaskAndEnvironment(ov34_0225D5A0, sizeof(Ov34Work), 4, HEAP_ID_FIELD1);
    Ov34Work *work = SysTask_GetData(task);

    work->fieldSystem = fieldSystem;
    work->bgConfig = fieldSystem->bgConfig;
    work->unk4 = fieldSystem->unk84;
    work->unk8 = fieldSystem->unk80;
    work->profile = Save_PlayerData_GetProfile(fieldSystem->saveData);
    work->state = 2;
    work->task = task;
    work->chatLog = fieldSystem->unk84->chatLog;

    ov34_0225D924(work->bgConfig);
    ov34_0225D5F8(work);
    SetKeyRepeatTimers(4, 8);
    ov34_0225E56C(work);
    ov34_0225E5DC(work, TRUE);
    ov34_0225DA50(work);
    ov34_0225DB20(work);
    FontID_SetAccessDirect(1, HEAP_ID_FIELD1);
    ov34_0225D650(work->bgConfig, work->rows, &work->titleWindow);
    ov34_0225D520(work);
    GfGfx_EngineBTogglePlanes(GX_PLANEMASK_OBJ, 1);
    GfGfx_EngineBTogglePlanes(GX_PLANEMASK_BG0, 1);
    GfGfx_EngineBTogglePlanes(GX_PLANEMASK_BG1, 1);
    GfGfx_EngineBTogglePlanes(GX_PLANEMASK_BG2, 1);
    GfGfx_EngineBTogglePlanes(GX_PLANEMASK_BG3, 1);
    ov34_0225E560(work);

    return work;
}

void ov34_0225D87C(Ov34Work *work) {
    if ((u32)(work->state - 2) <= 2) {
        BgConfig *bgConfig = work->bgConfig;
        int i;

        work->state = 5;

        FontID_SetAccessLazy(1);
        SpriteTransfer_DeleteCharTransferTask(work->resObjs[0]);
        SpriteTransfer_DeletePlttTransferTask(work->resObjs[1]);

        for (i = 0; i < 4; i++) {
            Destroy2DGfxResObjMan(work->resMans[i]);
        }

        SpriteList_Delete(work->spriteList);
        DestroyMsgData(work->msgData);
        MessageFormat_Delete(work->msgFormat);

        ov34_0225D77C(work->rows, &work->titleWindow);
        ov34_0225D900(bgConfig);

        Heap_Free(work->scrnBuf);
        DestroySysTaskAndEnvironment(work->task);
    } else {
        GF_AssertFail();
    }
}

static void ov34_0225D900(BgConfig *bgConfig) {
    FreeBgTilemapBuffer(bgConfig, GF_BG_LYR_SUB_0);
    FreeBgTilemapBuffer(bgConfig, GF_BG_LYR_SUB_1);
    FreeBgTilemapBuffer(bgConfig, GF_BG_LYR_SUB_2);
    FreeBgTilemapBuffer(bgConfig, GF_BG_LYR_SUB_3);
}

static void ov34_0225D924(BgConfig *bgConfig) {
    ov34_0225D900(bgConfig);

    {
        BgTemplate template = { 0, 0, 0x800, 0, 1, 0, 0x0C, 0, 0, 1, 0, 0, 0 };

        InitBgFromTemplate(bgConfig, GF_BG_LYR_SUB_0, &template, 0);
        BgClearTilemapBufferAndCommit(bgConfig, GF_BG_LYR_SUB_0);
        GfGfx_EngineBTogglePlanes(GX_PLANEMASK_BG0, 0);
    }

    {
        BgTemplate template = { 0, 0, 0x800, 0, 1, 0, 0x0D, 0, 0, 2, 0, 0, 0 };

        InitBgFromTemplate(bgConfig, GF_BG_LYR_SUB_1, &template, 0);
        BgClearTilemapBufferAndCommit(bgConfig, GF_BG_LYR_SUB_1);
        GfGfx_EngineBTogglePlanes(GX_PLANEMASK_BG1, 0);
    }

    {
        BgTemplate template = { 0, 0, 0x800, 0, 1, 0, 0x0E, 0, 0, 2, 0, 0, 0 };

        InitBgFromTemplate(bgConfig, GF_BG_LYR_SUB_2, &template, 0);
        BgClearTilemapBufferAndCommit(bgConfig, GF_BG_LYR_SUB_2);
        GfGfx_EngineBTogglePlanes(GX_PLANEMASK_BG2, 0);
    }

    {
        BgTemplate template = { 0, 0, 0x800, 0, 1, 0, 0x0F, 0, 0, 2, 0, 0, 0 };

        InitBgFromTemplate(bgConfig, GF_BG_LYR_SUB_3, &template, 0);
        GfGfx_EngineBTogglePlanes(GX_PLANEMASK_BG3, 0);
    }

    GfGfxLoader_GXLoadPal(NARC_a_0_7_3, 0, GF_PAL_LOCATION_SUB_BG, (enum GFPalSlotOffset)0, 0x60, HEAP_ID_FIELD1);
    GfGfxLoader_LoadCharData(NARC_a_0_7_3, 2, bgConfig, GF_BG_LYR_SUB_3, 0, (32 * 5) * 0x20, TRUE, HEAP_ID_FIELD1);
    GfGfxLoader_LoadScrnData(NARC_a_0_7_3, 4, bgConfig, GF_BG_LYR_SUB_3, 0, 32 * 24 * 2, TRUE, HEAP_ID_FIELD1);
    FieldMessage_LoadTextPalettes(GF_PAL_LOCATION_SUB_BG, FALSE);
}

static void ov34_0225DA50(Ov34Work *work) {
    int i;

    work->spriteList = G2dRenderer_Init(10, &work->renderer, HEAP_ID_FIELD1);

    for (i = 0; i < 4; i++) {
        work->resMans[i] = Create2DGfxResObjMan(1, (GfGfxResType)i, HEAP_ID_FIELD1);
    }

    work->resObjs[0] = AddCharResObjFromNarc(work->resMans[0], NARC_a_0_7_3, 5, TRUE, 999, NNS_G2D_VRAM_TYPE_2DSUB, HEAP_ID_FIELD1);
    work->resObjs[1] = AddPlttResObjFromNarc(work->resMans[1], NARC_a_0_7_3, 1, FALSE, 999, NNS_G2D_VRAM_TYPE_2DSUB, 1, HEAP_ID_FIELD1);
    work->resObjs[2] = AddCellOrAnimResObjFromNarc(work->resMans[2], NARC_a_0_7_3, 6, TRUE, 999, GF_GFX_RES_TYPE_CELL, HEAP_ID_FIELD1);
    work->resObjs[3] = AddCellOrAnimResObjFromNarc(work->resMans[3], NARC_a_0_7_3, 7, TRUE, 999, GF_GFX_RES_TYPE_ANIM, HEAP_ID_FIELD1);

    SpriteTransfer_CreateCharTransferTask_AllocAtEnd(work->resObjs[0]);
    SpriteTransfer_CreatePlttTransferTask(work->resObjs[1]);
}

static const int ov34_0225E6A0[] = { 0, 0xA0, 0x60 };

static void ov34_0225DB20(Ov34Work *work) {
    int i;

    CreateSpriteResourcesHeader(&work->header, 999, 999, 999, 999, -1, -1, 0, 0, work->resMans[0], work->resMans[1], work->resMans[2], work->resMans[3], NULL, NULL);

    {
        SpriteTemplate template;

        template.spriteList = work->spriteList;
        template.header = &work->header;
        template.position.z = 0;
        template.scale.x = FX32_ONE;
        template.scale.y = FX32_ONE;
        template.scale.z = FX32_ONE;
        template.rotation = 0;
        template.drawPriority = 0;
        template.whichScreen = NNS_G2D_VRAM_TYPE_2DSUB;
        template.heapID = HEAP_ID_FIELD1;

        for (i = 0; i < 3; i++) {
            template.position.x = FX32_CONST(256 - 24);
            template.position.y = FX32_CONST(ov34_0225E6A0[i]) + (192 << FX32_SHIFT);

            work->sprites[i] = Sprite_CreateAffine(&template);

            Sprite_SetAnimActiveFlag(work->sprites[i], TRUE);
            Sprite_SetAnimCtrlSeq(work->sprites[i], i);
        }
    }
}

static int ov34_0225DC00(Ov34ChatLog *chatLog, int index) {
    index++;

    if (index == 30) {
        index = 0;
    }

    return index;
}

static int ov34_0225DC0C(int start, int offset) {
    int index = start + offset;

    if (index >= 30) {
        index -= 30;
    }

    return index;
}

static void ov34_0225DC18(Ov34Work *work, int index, Ov34ChatEntry *entry) {
    work->rows[index].unk30 = entry->gender;

    CopyToBgTilemapRect(work->bgConfig, 7, 0, 2 + index * 7, 32, 7, work->scrnData->rawData, 0, 24 * work->rows[index].unk30, 32, 48);
    FillWindowPixelBuffer(&work->rows[index].window0, 0);
    FillWindowPixelBuffer(&work->rows[index].window1, 0);
    FillWindowPixelBuffer(&work->rows[index].window2, 0);
    AddTextPrinterParameterizedWithColor(&work->rows[index].window0, 1, entry->name, 0, 1, TEXT_SPEED_NOTRANSFER, MAKE_TEXT_COLOR(15, 2, 0), NULL);
    AddTextPrinterParameterizedWithColor(&work->rows[index].window1, 1, entry->sentence, 0, 0, TEXT_SPEED_NOTRANSFER, MAKE_TEXT_COLOR(1, 2, 0), NULL);
    ScheduleWindowCopyToVram(&work->rows[index].window0);
    ScheduleWindowCopyToVram(&work->rows[index].window1);

    if (entry->friendName) {
        AddTextPrinterParameterizedWithColor(&work->rows[index].window2, 1, entry->friendName, 0, 1, TEXT_SPEED_NOTRANSFER, MAKE_TEXT_COLOR(15, 2, 0), NULL);
    }

    ScheduleWindowCopyToVram(&work->rows[index].window2);
}

static void ov34_0225DD04(Ov34Work *work) {
    int i;
    int index = ov34_0225DC0C(work->chatLog->start, work->scroll);
    int count = work->chatLog->count;

    if (count > 3) {
        count = 3;
    }

    if (work->scroll != work->prevScroll) {
        ov34_0225E560(work);
        work->prevScroll = work->scroll;
    }

    if (work->needsRedraw == 1) {
        for (i = 0; i < count; i++) {
            ov34_0225DC18(work, i, &work->chatLog->entries[index]);
            index = ov34_0225DC00(work->chatLog, index);
        }

        DC_FlushRange(GetBgTilemapBuffer(work->bgConfig, 7), 32 * 24 * 2);
        BgCopyOrUncompressTilemapBufferRangeToVram(work->bgConfig, 7, GetBgTilemapBuffer(work->bgConfig, 7), 32 * 24 * 2, 0);

        work->needsRedraw = 0;
    }
}

static void ov34_0225DDB8(Sprite *sprite, int y) {
    VecFx32 position;

    position.x = FX32_CONST(256 - 24);
    position.y = FX32_CONST(y) + (192 << FX32_SHIFT);
    position.z = 0;

    Sprite_SetMatrix(sprite, &position);
}

static void ov34_0225DE04(Ov34Work *work) {
    work->count = work->chatLog->count;

    if ((work->count > 3) && (work->prevCount <= 3)) {
        work->scrollbarVisible = 1;
        work->scroll = work->count - 3;
    }

    Sprite_SetDrawFlag(work->sprites[2], work->scrollbarVisible);

    if (work->scrollbarVisible) {
        if (ov34_0225E5E4(work) == 1) {
            int y;

            y = (8 * 4 + 16) + (work->scroll * (192 - 8 * 8 - 16 * 2)) / (work->count - 3);
            ov34_0225DDB8(work->sprites[2], y);
        }
    }

    work->prevCount = work->count;
}

static const TouchscreenHitbox ov34_0225E730[] = {
    { 0x00,                     0x20, 0xE8, 0xF8 },
    { 0xA0,                     0x20, 0xE8, 0xF8 },
    { 0x10,                     0x48, 0x00, 0xE8 },
    { 0x48,                     0x80, 0x00, 0xE8 },
    { 0x80,                     0xB8, 0x00, 0xE8 },
    { 0x30,                     0x90, 0xE8, 0x00 },
    { 0x00,                     0x0F, 0x00, 0xE8 },
    { TOUCHSCREEN_RECTLIST_END, 0,    0,    0    },
};

static const TouchscreenHitbox ov34_0225E6AC[] = {
    { 0x30,                     0x90, 0xE8, 0x00 },
    { 0x10,                     0x48, 0x00, 0xE8 },
    { 0x48,                     0x80, 0x00, 0xE8 },
    { 0x80,                     0xB8, 0x00, 0xE8 },
    { TOUCHSCREEN_RECTLIST_END, 0,    0,    0    },
};

static int ov34_0225DE94(Ov34Work *work) {
    int i;
    int hit;
    BOOL trigger;
    PlayerProfile *profile;

    hit = TouchscreenHitbox_FindRectAtTouchHeld(ov34_0225E730);
    trigger = ov34_0225E5D4(work);

    if (hit != -1) {
        switch (hit) {
        case 0:
            ov34_0225E5EC(work, hit);

            if (trigger == 1) {
                if (work->scroll != 0) {
                    PlaySE(SEQ_SE_DP_BUTTON3);
                    work->scroll--;
                }

                work->selectedRow = hit - 2;
            }
            break;
        case 1:
            ov34_0225E5EC(work, hit);

            if (trigger == 1) {
                if (work->scroll < work->count - 3) {
                    PlaySE(SEQ_SE_DP_BUTTON3);
                    work->scroll++;
                }

                work->selectedRow = hit - 2;
            }
            break;
        case 5:
            work->selectedRow = hit - 2;
            break;
        case 6:
            if (gSystem.touchNew != 0) {
                if (ov01_021F6B10(work->fieldSystem) == TRUE) {
                    PlaySE(SEQ_SE_DP_WIN_OPEN);
                    work->state = 3;
                }
            }
            break;
        default:
            if (gSystem.touchNew == 0) {
                break;
            }

            if (work->chatLog->count >= (hit - 1)) {
                int index = ov34_0225DC0C(work->chatLog->start, work->scroll + hit - 2);

                for (i = 0; i < 10; i++) {
                    Ov34CommBssDesc *desc = sub_02035754(i);

                    if (desc != NULL) {
                        Ov34UserInfo *info = (Ov34UserInfo *)desc->userGameInfo;

                        if ((work->unk4->entries[i].unk1 == 2) && (info->id == work->chatLog->entries[index].id)) {
                            PlaySE(SEQ_SE_DP_BUTTON3);
                            work->unk4->entries[i].unk3 = 1;
                            break;
                        }
                    }
                }

                profile = sub_02035784();

                if (work->chatLog->entries[index].id == PlayerProfile_GetTrainerID(profile)) {
                    PlaySE(SEQ_SE_DP_BUTTON3);
                    work->unk4->entries[50].unk3 = 1;
                }
            }

            work->selectedRow = hit - 2;
            break;
        }
    }

    return hit;
}

static int ov34_0225E020(Ov34Work *work) {
    u32 x, y;
    int hit = TouchscreenHitbox_FindRectAtTouchHeld(ov34_0225E6AC);

    if (hit != -1) {
        switch (hit) {
        case 0:
            ov34_0225E5DC(work, FALSE);
            System_GetTouchHeldCoords(&x, &y);
            ov34_0225DDB8(work->sprites[2], y);

            if (work->count > 3) {
                int step, i;

                step = (192 - 8 * 8 - 16 * 2) / (work->count - 2);

                for (i = 0; i < work->count - 2; i++) {
                    if ((y >= (8 * 4 + 16) + step * i) && (y < (8 * 4 + 16) + step * (i + 1))) {
                        work->scroll = i;
                        break;
                    }
                }
            }
            break;
        default:
            if (work->chatLog->count >= hit) {
                if (work->selectedRow == (hit - 1)) {
                    if (work->rows[hit - 1].unk34 < 2 * 2 + 1) {
                        work->rows[hit - 1].unk34++;
                    }
                }
            }
            break;
        }
    } else {
        ov34_0225E5DC(work, TRUE);
    }

    return hit;
}

static void ov34_0225E0E4(Ov34Work *work) {
    if (gSystem.heldKeys & PAD_BUTTON_L) {
        ov34_0225E5EC(work, 0);

        if (gSystem.newAndRepeatedKeys & PAD_BUTTON_L) {
            if (work->scroll != 0) {
                work->scroll--;
                PlaySE(SEQ_SE_DP_BUTTON3);
            }
        }
    } else if (gSystem.heldKeys & PAD_BUTTON_R) {
        ov34_0225E5EC(work, 1);

        if (gSystem.newAndRepeatedKeys & PAD_BUTTON_R) {
            if (work->scroll < work->count - 3) {
                work->scroll++;
                PlaySE(SEQ_SE_DP_BUTTON3);
            }
        }
    }
}

static void ov34_0225E164(Ov34Work *work) {
    int hit = -1;

    if (!FieldSystem_TaskIsRunning(work->fieldSystem)) {
        int other;

        other = ov34_0225DE94(work);
        hit = ov34_0225E020(work);

        if ((other == -1) && (hit == -1)) {
            ov34_0225E0E4(work);
        }
    }

    ov34_0225E1C4(work->bgConfig, work->scrnData, work->rows, hit - 1, work->chatLog->count, &work->unk290);
}

static const int ov34_0225E694[] = { 0, 0, 0 };

static void ov34_0225E1C4(BgConfig *bgConfig, NNSG2dScreenData *scrnData, Ov34Row *rows, int selected, int count, int *total) {
    int i, sum = 0;

    if (count > 3) {
        count = 3;
    }

    for (i = 0; i < count; i++) {
        if (selected != i) {
            if (rows[i].unk34 != 0) {
                rows[i].unk34--;
            }
        }

        sum += rows[i].unk34;
    }

    if ((sum == 0) && (*total == 0)) {
        *total = sum;
        return;
    }

    *total = sum;

    for (i = 0; i < count; i++) {
        int frame = rows[i].unk34 / 2;

        CopyToBgTilemapRect(bgConfig, 7, 0, 2 + i * 7, 32, 7, scrnData->rawData, 0, 24 * rows[i].unk30 + 8 * frame, 32, 48);
        BgSetPosTextAndCommit(bgConfig, GF_BG_LYR_SUB_0 + i, BG_POS_OP_SET_Y, ov34_0225E694[frame]);
    }

    DC_FlushRange(GetBgTilemapBuffer(bgConfig, 7), 32 * 24 * 2);
    BgCopyOrUncompressTilemapBufferRangeToVram(bgConfig, 7, GetBgTilemapBuffer(bgConfig, 7), 32 * 24 * 2, 0);
}

static String *ov34_0225E2BC(SavePalPad *palPad, u32 id, MessageFormat *msgFormat, MsgData *msgData, PlayerProfile *profile) {
    String *result = NULL;
    String *name;
    int friendIndex = 0;

    if (id != PlayerProfile_GetTrainerID(profile)) {
        friendIndex = PalPad_PlayerIdIsFriendOrMutual(palPad, id);
    }

    if (friendIndex > 0) {
        if (friendIndex == 1) {
            BufferPlayersName(msgFormat, 0, profile);
        } else if (friendIndex >= 2) {
            int n = friendIndex - 2;

            name = String_New(10, HEAP_ID_87);

            CopyU16ArrayToString(name, PalPad_GetNthEntry(palPad, n)->name);
            BufferString(msgFormat, 0, name, 0, 0, PalPadEntry_GetFromUnk68Array(palPad, n));
            String_Delete(name);
        }

        result = ReadMsgData_ExpandPlaceholders(msgFormat, msgData, 208, HEAP_ID_87);
    }

    return result;
}

static void ov34_0225E348(Ov34Work *work, u32 id, MailMessage *mail, PlayerProfile *profile) {
    Ov34ChatLog *chatLog = work->chatLog;
    SavePalPad *palPad = work->unk4->palPad;
    int *index;

    if (chatLog->count == 30) {
        index = &chatLog->start;
    } else {
        index = &chatLog->count;
    }

    if (chatLog->entries[*index].sentence != NULL) {
        String_Delete(chatLog->entries[*index].sentence);
    }

    if (chatLog->entries[*index].friendName != NULL) {
        String_Delete(chatLog->entries[*index].friendName);
    }

    CopyU16ArrayToString(chatLog->entries[*index].name, PlayerProfile_GetNamePtr(profile));

    chatLog->entries[*index].mail = *mail;
    chatLog->entries[*index].id = id;
    chatLog->entries[*index].gender = PlayerProfile_GetTrainerGender(profile);
    chatLog->entries[*index].sentence = MailMsg_GetExpandedString(mail, HEAP_ID_87);
    chatLog->entries[*index].friendName = ov34_0225E2BC(palPad, id, work->msgFormat, work->msgData, work->profile);

    (*index)++;

    if (chatLog->start == 30) {
        chatLog->start = 0;
    }
}

static int ov34_0225E428(Ov34Work *work, MailMessage *mail, u32 id) {
    int i;

    if (!MailMsg_IsInit(mail)) {
        return 0;
    }

    for (i = 0; i < work->chatLog->count; i++) {
        if (id == work->chatLog->entries[i].id) {
            if (MailMsg_Compare(mail, &work->chatLog->entries[i].mail)) {
                break;
            }
        }
    }

    if ((i != work->chatLog->count) && (work->chatLog->count != 0)) {
        return 0;
    }

    if (id == work->chatLog->entries[i].id) {
        (void)0;
    } else if (MailMsg_Compare(mail, &work->chatLog->entries[i].mail)) {
        (void)0;
    }

    return 1;
}

static void ov34_0225E4A8(Ov34Work *work, PlayerProfile *profile, MailMessage *mail, u32 id) {
    int atEnd = 0;

    if (work->scroll == work->count - 3) {
        atEnd = 1;
    }

    ov34_0225E348(work, id, mail, profile);

    if (work->scrollbarVisible) {
        if (atEnd) {
            work->scroll = work->chatLog->count - 3;
        }
    }

    ov34_0225E560(work);
}

static void ov34_0225E4F8(Ov34Work *work) {
    int i;
    Ov34CommBssDesc *desc;
    Ov34UserInfo *info;
    MailMessage *mail;

    if (FieldSystem_TaskIsRunning(work->fieldSystem)) {
        return;
    }

    for (i = 0; i < 16; i++) {
        desc = sub_02035754(i);

        if (desc != NULL) {
            info = (Ov34UserInfo *)desc->userGameInfo;
            mail = &info->mail;

            if (ov34_0225E428(work, mail, info->id)) {
                ov34_0225E4A8(work, sub_02035798(i), mail, info->id);
            }
        }
    }

    if ((mail = sub_0205AA84(work->unk8)) != NULL) {
        u32 id = PlayerProfile_GetTrainerID(work->profile);
        ov34_0225E4A8(work, work->profile, mail, id);
    }
}

static void ov34_0225E560(Ov34Work *work) {
    work->needsRedraw = TRUE;
}

static void ov34_0225E56C(Ov34Work *work) {
    work->touchTrigger = 0;
    work->repeatStart = 8;
    work->repeatInterval = 4;
    work->repeatCounter = work->repeatStart;
}

static void ov34_0225E58C(Ov34Work *work) {
    work->touchTrigger = 0;

    if (gSystem.touchNew) {
        work->touchTrigger = 1;
    } else {
        if (gSystem.touchHeld) {
            work->repeatCounter--;

            if (work->repeatCounter < 0) {
                work->touchTrigger = 1;
                work->repeatCounter = work->repeatInterval;
            }
        } else {
            work->repeatCounter = work->repeatStart;
        }
    }
}

static BOOL ov34_0225E5D4(Ov34Work *work) {
    return work->touchTrigger;
}

static void ov34_0225E5DC(Ov34Work *work, BOOL flag) {
    work->scrollbarHeld = flag;
}

static BOOL ov34_0225E5E4(Ov34Work *work) {
    return work->scrollbarHeld;
}

static void ov34_0225E5EC(Ov34Work *work, int index) {
    u32 frame;
    u16 anim;

    frame = Sprite_GetAnimationFrame(work->sprites[index]);
    anim = Sprite_GetAnimationNumber(work->sprites[index]);

    if ((frame != 0) || (anim != index + 4)) {
        Sprite_SetAnimCtrlSeq(work->sprites[index], index + 4);
    }

    work->animFlags[index] = 1;
}

static void ov34_0225E630(Ov34Work *work) {
    int i;

    for (i = 0; i < 2; i++) {
        Sprite_GetAnimationFrame(work->sprites[i]);

        if (work->animFlags[i] == 1) {
            Sprite_SetAnimActiveFlag(work->sprites[i], FALSE);
            work->animFlags[i] = 0;
        } else {
            if (Sprite_GetAnimActiveFlag(work->sprites[i]) == FALSE) {
                Sprite_SetAnimActiveFlag(work->sprites[i], TRUE);
                Sprite_SetAnimationFrame(work->sprites[i], 1);
            }
        }
    }
}
