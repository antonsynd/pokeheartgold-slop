#include "overlay_33.h"

#include "filesystem.h"
#include "font.h"
#include "gf_gfx_loader.h"
#include "heap.h"
#include "msgdata.h"
#include "pm_string.h"
#include "systask_environment.h"
#include "system.h"
#include "text.h"
#include "touchscreen.h"

typedef struct Ov33Args {
    const u32 *strIds;
    u8 count;
    u8 unk5;
    u16 unk6;
} Ov33Args;

typedef struct Ov33Config {
    const WindowTemplate *windowTemplates;
    const TouchscreenHitbox *hitboxes;
    u8 unk8;
    u8 unk9;
    u16 unkA;
} Ov33Config;

typedef struct Ov33Work {
    BgConfig *bgConfig;
    void *unk4;
    u32 unk8;
    Ov33Args *unkC;
    Ov33Args *unk10;
    SysTask *sysTask;
    Window windows[2];
    u8 buffer[0x180];
    u16 state;
    u16 count;
    u32 touchedHitbox;
} Ov33Work;

static void ov33_0225D5D0(SysTask *task, void *taskEnv);
static void ov33_0225D6F8(void);
static void ov33_0225D720(BgConfig *bgConfig);
static void ov33_0225D7B8(BgConfig *bgConfig);
static void ov33_0225D7D4(Ov33Work *work);
static void ov33_0225D820(Ov33Work *work);
static void ov33_0225D84C(Ov33Work *work);
static void ov33_0225D8D4(Ov33Work *work);
static void ov33_0225D9D4(Ov33Work *work, u8 palette);

static const WindowTemplate sWindowTemplate_1[] = {
    { 4, 1, 0x0C, 0x1E, 2, 4, 1 },
};

static const TouchscreenHitbox sHitboxes_1[] = {
    { .rect = { 0x50, 0x7F, 0x00, 0xFF } },
    { .rect = { TOUCHSCREEN_RECTLIST_END } },
};

static const TouchscreenHitbox sHitboxes_2[] = {
    { .rect = { 0x28, 0x57, 0x00, 0xFF } },
    { .rect = { 0x60, 0x8F, 0x00, 0xFF } },
    { .rect = { TOUCHSCREEN_RECTLIST_END } },
};

static const WindowTemplate sWindowTemplate_2[] = {
    { 4, 1, 0x07, 0x1E, 2, 4, 1    },
    { 4, 1, 0x0E, 0x1E, 2, 4, 0x3D },
};

static const Ov33Config sConfigTable[] = {
    { sWindowTemplate_1, sHitboxes_1, 0x00, 0x0A, 0x0000 },
    { sWindowTemplate_2, sHitboxes_2, 0x00, 0x05, 0x0001 },
};

static const BgTemplate sBgTemplate_4 = { 0, 0, 0x800, 0, 1, 0, 0x0F, 0, 0, 0, 0, 0, 0 };
static const BgTemplate sBgTemplate_5 = { 0, 0, 0x800, 0, 1, 0, 0x0E, 1, 0, 1, 0, 0, 0 };
static const BgTemplate sBgTemplate_6 = { 0, 0, 0x800, 0, 1, 0, 0x0D, 1, 0, 2, 0, 0, 0 };

SysTask *ov33_0225D520(BgConfig *bgConfig, void *arg1, u32 arg2, Ov33Args *args) {
    Ov33Work *work;
    SysTask *task;
    Heap_Create(HEAP_ID_3, HEAP_ID_8, 3 << 15);
    reg_G2S_DB_BLDCNT = 0;
    task = CreateSysTaskAndEnvironment(ov33_0225D5D0, 7 << 6, 0xA, HEAP_ID_8);
    work = SysTask_GetData(task);
    work->bgConfig = bgConfig;
    work->unk4 = arg1;
    work->unk8 = arg2;
    work->unkC = args;
    work->sysTask = task;
    work->unk10 = args;
    work->count = args->count;
    work->unk10->unk6 = 0xFFFF;
    work->unk10->unk5 = 0;
    ov33_0225D6F8();
    ov33_0225D720(bgConfig);
    ov33_0225D7D4(work);
    ov33_0225D84C(work);
    ov33_0225D8D4(work);
    return task;
}

void ov33_0225D5A8(void *arg0, SysTask *task) {
    Ov33Work *work = SysTask_GetData(task);
    ov33_0225D820(work);
    ov33_0225D7B8(work->bgConfig);
    DestroySysTaskAndEnvironment(task);
    Heap_Destroy(HEAP_ID_8);
}

BOOL ov33_0225D5CC(void) {
    return TRUE;
}

static void ov33_0225D5D0(SysTask *task, void *taskEnv) {
    Ov33Work *work = taskEnv;
    const Ov33Config *config = &sConfigTable[work->count - 1];
    if (work->state < 2) {
        if (work->unk10->unk5 == 1) {
            work->state = 2;
        } else if (work->unk10->unk5 == 2) {
            work->state = 4;
        }
    }
    switch (work->state) {
    case 0:
        work->touchedHitbox = TouchscreenHitbox_FindRectAtTouchNew(config->hitboxes);
        if (work->touchedHitbox == (u32)-1) {
            break;
        }
        ov33_0225D9D4(work, 1);
        work->unk10->unk6 = work->touchedHitbox;
        work->state = 1;
        break;
    case 1: {
        int held = TouchscreenHitbox_FindRectAtTouchHeld(config->hitboxes);
        work->unk10->unk6 = 0xFFFF;
        if (held == (int)work->touchedHitbox) {
            break;
        }
        ov33_0225D9D4(work, 0);
        work->state = 0;
        break;
    }
    case 2:
        BgClearTilemapBufferAndCommit(work->bgConfig, 4);
        BgClearTilemapBufferAndCommit(work->bgConfig, 5);
        ScheduleBgTilemapBufferTransfer(work->bgConfig, 4);
        ScheduleBgTilemapBufferTransfer(work->bgConfig, 5);
        work->state = 3;
        break;
    case 3:
        break;
    case 4:
        BgClearTilemapBufferAndCommit(work->bgConfig, 4);
        BgClearTilemapBufferAndCommit(work->bgConfig, 5);
        ScheduleBgTilemapBufferTransfer(work->bgConfig, 4);
        ScheduleBgTilemapBufferTransfer(work->bgConfig, 5);
        work->state = 5;
        break;
    case 5:
        if (gSystem.touchHeld != 0) {
            gSystem.simulatedInputs = 1;
        }
        break;
    }
}

static void ov33_0225D6F8(void) {
    GX_SetBankForSubBG(GX_VRAM_SUB_BG_32_H);
    GX_SetBankForSubOBJ(GX_VRAM_SUB_OBJ_16_I);
    reg_GXS_DB_DISPCNT = (reg_GXS_DB_DISPCNT & 0xFFCFFFEF) | 0x10;
}

static void ov33_0225D720(BgConfig *bgConfig) {
    BgTemplate template1;
    BgTemplate template2;
    BgTemplate template3;
    GXS_SetGraphicsMode(GX_BGMODE_0);
    template1 = sBgTemplate_4;
    InitBgFromTemplate(bgConfig, 4, &template1, 0);
    BG_ClearCharDataRange(4, 0x20, 0, HEAP_ID_8);
    BgClearTilemapBufferAndCommit(bgConfig, 4);
    template2 = sBgTemplate_5;
    InitBgFromTemplate(bgConfig, 5, &template2, 0);
    BgClearTilemapBufferAndCommit(bgConfig, 5);
    template3 = sBgTemplate_6;
    InitBgFromTemplate(bgConfig, 6, &template3, 0);
}

static void ov33_0225D7B8(BgConfig *bgConfig) {
    FreeBgTilemapBuffer(bgConfig, 6);
    FreeBgTilemapBuffer(bgConfig, 5);
    FreeBgTilemapBuffer(bgConfig, 4);
}

static void ov33_0225D7D4(Ov33Work *work) {
    const Ov33Config *config = &sConfigTable[work->count - 1];
    u32 i;
    for (i = 0; i < work->count; i++) {
        AddWindow(work->bgConfig, &work->windows[i], &config->windowTemplates[i]);
        FillWindowPixelBuffer(&work->windows[i], 0);
    }
}

static void ov33_0225D820(Ov33Work *work) {
    u32 i;
    for (i = 0; i < work->count; i++) {
        RemoveWindow(&work->windows[i]);
    }
}

static void ov33_0225D84C(Ov33Work *work) {
    NARC *narc;
    NNSG2dScreenData *scrnData;
    void *alloc;
    narc = NARC_New((NarcId)0xEF, HEAP_ID_8);
    GfGfxLoader_GXLoadPalFromOpenNarc(narc, 0, GF_PAL_LOCATION_SUB_BG, GF_PAL_SLOT_0_OFFSET, 0xA0, HEAP_ID_8);
    GfGfxLoader_LoadCharDataFromOpenNarc(narc, 1, work->bgConfig, (GFBgLayer)5, 0, 0, FALSE, HEAP_ID_8);
    GfGfxLoader_LoadScrnDataFromOpenNarc(narc, 9, work->bgConfig, (GFBgLayer)6, 0, 0, FALSE, HEAP_ID_8);
    alloc = GfGfxLoader_GetScrnDataFromOpenNarc(narc, 0xA, FALSE, &scrnData, HEAP_ID_8);
    MI_CpuCopy16((u8 *)scrnData->rawData + 0x180, work->buffer, 0x180);
    Heap_Free(alloc);
    NARC_Delete(narc);
}

static void ov33_0225D8D4(Ov33Work *work) {
    const Ov33Config *config;
    MsgData *msgData;
    u16 i;
    FontID_Alloc(4, HEAP_ID_8);
    msgData = NewMsgDataFromNarc((MsgDataLoadType)0, (NarcId)0x1B, 0xBF, HEAP_ID_8);
    config = &sConfigTable[work->count - 1];
    for (i = 0; i < work->count; i++) {
        u16 center;
        String *string;
        u16 x;
        LoadRectToBgTilemapRect(work->bgConfig, 5, work->buffer, config->unk8, (u8)(config->unk9 + (config->unkA + 6) * i), 0x20, 6);
        string = NewString_ReadMsgData(msgData, work->unk10->strIds[i]);
        center = (u16)(GetWindowWidth(&work->windows[i]) * 8 / 2);
        x = center - FontID_String_GetWidth(4, string, 0) / 2;
        AddTextPrinterParameterizedWithColor(&work->windows[i], 4, string, x, 0, 0xFF, 0x00020100, NULL);
        CopyWindowPixelsToVram_TextMode(&work->windows[i]);
        ScheduleWindowCopyToVram(&work->windows[i]);
        String_Delete(string);
    }
    DestroyMsgData(msgData);
    FontID_Release(4);
    ScheduleBgTilemapBufferTransfer(work->bgConfig, 5);
}

static void ov33_0225D9D4(Ov33Work *work, u8 palette) {
    const Ov33Config *config = &sConfigTable[work->count - 1];
    BgTilemapRectChangePalette(work->bgConfig, 5, config->unk8, (u8)(config->unk9 + (config->unkA + 6) * work->touchedHitbox), 0x20, 6, palette);
    ScheduleBgTilemapBufferTransfer(work->bgConfig, 5);
}
