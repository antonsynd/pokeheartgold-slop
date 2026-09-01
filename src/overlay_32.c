#include "overlay_32.h"

#include <nitro/gx/gx_vramcnt.h>

#include "global.h"

#include "constants/sndseq.h"

#include "msgdata/msg.naix"
#include "msgdata/msg/msg_0196.h"

#include "bg_window.h"
#include "filesystem.h"
#include "filesystem_files_def.h"
#include "font.h"
#include "gf_gfx_loader.h"
#include "heap.h"
#include "message_format.h"
#include "msgdata.h"
#include "player_data.h"
#include "pm_string.h"
#include "sprite.h"
#include "sprite_transfer.h"
#include "sys_task.h"
#include "sys_task_api.h"
#include "systask_environment.h"
#include "system.h"
#include "text.h"
#include "touchscreen.h"
#include "unk_02005D10.h"
#include "unk_02009D48.h"
#include "unk_0200A090.h"
#include "unk_02019BA4.h"
#include "unk_02020A0C.h"
#include "unk_0202C034.h"

#define NAME_PICKER_NUM_WINDOWS    18
#define NAME_PICKER_NUM_SPRITES    4
#define NAME_PICKER_NAMES_PER_PAGE 8
#define NAME_PICKER_NUM_PAGES      4

#define NAME_PICKER_SPRITE_CURSOR 0
#define NAME_PICKER_SPRITE_CANCEL 1
#define NAME_PICKER_SPRITE_PREV   2
#define NAME_PICKER_SPRITE_NEXT   3

// Grid input result for the cancel button (slots 0..7 are the names)
#define NAME_PICKER_INPUT_CANCEL 8

enum NamePickerState {
    NAME_PICKER_STATE_INPUT = 0,
    NAME_PICKER_STATE_BLINK,
    NAME_PICKER_STATE_REDRAW,
    NAME_PICKER_STATE_DONE,
};

// Descriptor for the "blink" feedback played after each input: either a sprite
// anim-sequence flip (isBg == FALSE, target is a sprite index) or a BG tilemap
// palette flip over a rect (isBg == TRUE, target is a BG layer).
typedef struct NamePickerBlink {
    u8 isBg : 1;
    u8 target : 7;
    u8 seqA : 4;
    u8 seqB : 4;
    u8 phase;
    u8 timer;
    u8 x;
    u8 y;
    u8 width;
    u8 height;
} NamePickerBlink;

typedef struct NamePickerData {
    BgConfig *bgConfig;                       // 0x000
    void *unk4;                               // 0x004
    FieldSystem *fieldSystem;                 // 0x008
    int *unkC;                                // 0x00C
    SysTask *task;                            // 0x010
    UnkStruct_021D2230 *names;                // 0x014
    GridInputHandler *gridInput;              // 0x018
    NamePickerBlink blink;                    // 0x01C
    Window windows[NAME_PICKER_NUM_WINDOWS];  // 0x024
    MsgData *msgData;                         // 0x144
    MessageFormat *msgFormat;                 // 0x148
    SpriteList *spriteList;                   // 0x14C
    G2dRenderer renderer;                     // 0x150
    GF_2DGfxResMan *resMans[4];               // 0x278
    SpriteResource *resObjs[4];               // 0x288
    Sprite *sprites[NAME_PICKER_NUM_SPRITES]; // 0x298
    u8 state;                                 // 0x2A8
    u8 nextState;                             // 0x2A9
    s8 page;                                  // 0x2AA
    u8 bufferToggle;                          // 0x2AB
    int selection;                            // 0x2AC
    int *result;                              // 0x2B0
} NamePickerData;                             // size: 0x2B4

static void ov32_0225D60C(void);
static void ov32_0225D634(BgConfig *bgConfig);
static void ov32_0225D6C4(BgConfig *bgConfig);
static void ov32_0225D6E0(NamePickerData *data, NARC *narc);
static void ov32_0225D748(NamePickerData *data);
static void ov32_0225D76C(NamePickerData *data);
static void ov32_0225D788(NamePickerData *data);
static void ov32_0225D834(NamePickerData *data);
static void ov32_0225D84C(NamePickerData *data);
static void ov32_0225D988(NamePickerData *data);
static void ov32_0225DA88(NamePickerData *data, NARC *narc);
static void ov32_0225DAC0(NamePickerData *data);
static void ov32_0225DADC(NamePickerData *data);
static void ov32_0225DB00(NamePickerData *data);
static void ov32_0225DB1C(SpriteResource **resObjs, GF_2DGfxResMan **resMans, NARC *narc, int charFileId, int plttFileId, int cellFileId, int animFileId, int plttNum, int charId, int plttId, int cellId, int animId);
static void ov32_0225DBAC(SpriteResource **resObjs, GF_2DGfxResMan **resMans, SpriteResourcesHeader *header, int priority);
static void ov32_0225DC0C(NamePickerData *data, int index, SpriteResourcesHeader *header, const u8 *spec);
static void ov32_0225DC68(NamePickerData *data, NARC *narc);
static void ov32_0225DCD4(NamePickerData *data);
static void ov32_0225DD04(NamePickerData *data);
static void ov32_0225DD24(NamePickerData *data, int pos);
static void ov32_0225DD74(NamePickerData *data);
static void ov32_0225DDAC(NamePickerData *data);
static void ov32_0225DDB8(void *data, int newTarget, int prevTarget);
static void ov32_0225DDBC(void *data, int newTarget, int prevTarget);
static void ov32_0225DDC4(SysTask *task, void *taskData);
static int ov32_0225DE34(NamePickerData *data);
static int ov32_0225DF80(NamePickerData *data);
static int ov32_0225DF9C(NamePickerData *data, int delta);
static void ov32_0225DFE8(NamePickerData *data, u8 seq);
static BOOL ov32_0225E048(NamePickerData *data);
static int ov32_0225E0A8(NamePickerData *data, u8 target, u8 seqA, u8 seqB, u8 nextState);
static int ov32_0225E0FC(NamePickerData *data, u8 x, u8 y, u8 nextState);

// All of this overlay's .rodata as ONE const aggregate, fields in retail
// address order (base 0x0225E15C, span 0x180) -- see the
// rodata-consolidate-one-struct-flip pattern.
typedef struct NamePickerRodata {
    TouchscreenHitbox pageHitboxes[3];                       // 0x0225E15C
    GridCallbacks gridCallbacks;                             // 0x0225E168
    u8 spriteSpecs[NAME_PICKER_NUM_SPRITES][4];              // 0x0225E178
    BgTemplate bgTemplate6;                                  // 0x0225E188
    BgTemplate bgTemplate4;                                  // 0x0225E1A4
    BgTemplate bgTemplate5;                                  // 0x0225E1C0
    TouchscreenHitbox gridHitboxes[10];                      // 0x0225E1DC
    DpadMenuBox gridDpadBoxes[9];                            // 0x0225E204
    WindowTemplate windowTemplates[NAME_PICKER_NUM_WINDOWS]; // 0x0225E24C
} NamePickerRodata;

static const NamePickerRodata sRodata = {
    // pageHitboxes (0x0225E15C): prev / next page arrows
    {
     { 0xA0, 0xBF, 0x08, 0x27 },
     { 0xA0, 0xBF, 0x28, 0x47 },
     { TOUCHSCREEN_RECTLIST_END, 0, 0, 0 },
     },
    // gridCallbacks (0x0225E168)
    {
     ov32_0225DDB8,
     ov32_0225DDB8,
     ov32_0225DDBC,
     ov32_0225DDBC,
     },
    // spriteSpecs (0x0225E178): { x, y, drawPriority, animSeq }
    {
     { 0x20, 0x20, 0, 0 },
     { 0xD8, 0xB0, 1, 2 },
     { 0x18, 0xB0, 1, 4 },
     { 0x38, 0xB0, 1, 6 },
     },
    // bgTemplate6 (0x0225E188)
    {
     0,
     0,
     0x800,
     0,
     GF_BG_SCR_SIZE_256x256,
     GX_BG_COLORMODE_16,
     GX_BG_SCRBASE_0x6800,
     GX_BG_CHARBASE_0x04000,
     GX_BG_EXTPLTT_01,
     2,
     0,
     0,
     FALSE,
     },
    // bgTemplate4 (0x0225E1A4)
    {
     0,
     0,
     0x800,
     0,
     GF_BG_SCR_SIZE_256x256,
     GX_BG_COLORMODE_16,
     GX_BG_SCRBASE_0x7800,
     GX_BG_CHARBASE_0x00000,
     GX_BG_EXTPLTT_01,
     0,
     0,
     0,
     FALSE,
     },
    // bgTemplate5 (0x0225E1C0)
    {
     0,
     0,
     0x800,
     0,
     GF_BG_SCR_SIZE_256x256,
     GX_BG_COLORMODE_16,
     GX_BG_SCRBASE_0x7000,
     GX_BG_CHARBASE_0x04000,
     GX_BG_EXTPLTT_01,
     1,
     0,
     0,
     FALSE,
     },
    // gridHitboxes (0x0225E1DC): 8 name slots + cancel button
    {
     { 0x08, 0x17, 0x18, 0x67 },
     { 0x08, 0x17, 0x98, 0xE7 },
     { 0x30, 0x3F, 0x18, 0x67 },
     { 0x30, 0x3F, 0x98, 0xE7 },
     { 0x58, 0x67, 0x18, 0x67 },
     { 0x58, 0x67, 0x98, 0xE7 },
     { 0x80, 0x8F, 0x18, 0x67 },
     { 0x80, 0x8F, 0x98, 0xE7 },
     { 0xA0, 0xBF, 0xB0, 0xFF },
     { TOUCHSCREEN_RECTLIST_END, 0, 0, 0 },
     },
    // gridDpadBoxes (0x0225E204)
    {
     { 0x40, 0x10, 0, 0, 0x00, 0x02, 0x00, 0x01 },
     { 0xC0, 0x10, 0, 0, 0x01, 0x03, 0x00, 0x01 },
     { 0x40, 0x38, 0, 0, 0x00, 0x04, 0x02, 0x03 },
     { 0xC0, 0x38, 0, 0, 0x01, 0x05, 0x02, 0x03 },
     { 0x40, 0x60, 0, 0, 0x02, 0x06, 0x04, 0x05 },
     { 0xC0, 0x60, 0, 0, 0x03, 0x07, 0x04, 0x05 },
     { 0x40, 0x88, 0, 0, 0x04, 0x08, 0x06, 0x07 },
     { 0xC0, 0x88, 0, 0, 0x05, 0x08, 0x06, 0x07 },
     { 0xD8, 0xB0, 0, 0, 0x87, 0x08, 0x08, 0x08 },
     },
    // windowTemplates (0x0225E24C): title, header, then two 8-window banks
    {
     { GF_BG_LYR_SUB_0, 23, 21, 8, 2, 2, 0x001 },
     { GF_BG_LYR_SUB_0, 14, 21, 4, 2, 2, 0x011 },
     { GF_BG_LYR_SUB_0, 3, 1, 10, 2, 2, 0x019 },
     { GF_BG_LYR_SUB_0, 19, 1, 10, 2, 2, 0x02D },
     { GF_BG_LYR_SUB_0, 3, 6, 10, 2, 2, 0x041 },
     { GF_BG_LYR_SUB_0, 19, 6, 10, 2, 2, 0x055 },
     { GF_BG_LYR_SUB_0, 3, 11, 10, 2, 2, 0x069 },
     { GF_BG_LYR_SUB_0, 19, 11, 10, 2, 2, 0x07D },
     { GF_BG_LYR_SUB_0, 3, 16, 10, 2, 2, 0x091 },
     { GF_BG_LYR_SUB_0, 19, 16, 10, 2, 2, 0x0A5 },
     { GF_BG_LYR_SUB_0, 3, 1, 10, 2, 2, 0x0B9 },
     { GF_BG_LYR_SUB_0, 19, 1, 10, 2, 2, 0x0CD },
     { GF_BG_LYR_SUB_0, 3, 6, 10, 2, 2, 0x0E1 },
     { GF_BG_LYR_SUB_0, 19, 6, 10, 2, 2, 0x0F5 },
     { GF_BG_LYR_SUB_0, 3, 11, 10, 2, 2, 0x109 },
     { GF_BG_LYR_SUB_0, 19, 11, 10, 2, 2, 0x11D },
     { GF_BG_LYR_SUB_0, 3, 16, 10, 2, 2, 0x131 },
     { GF_BG_LYR_SUB_0, 19, 16, 10, 2, 2, 0x145 },
     },
};

SysTask *ov32_0225D520(BgConfig *bgConfig, void *a1, FieldSystem *fieldSystem, int *result) {
    SysTask *task;
    NamePickerData *data;
    NARC *narc;

    Heap_Create(HEAP_ID_3, HEAP_ID_8, 0x18000);
    G2S_BlendNone();
    task = CreateSysTaskAndEnvironment(ov32_0225DDC4, sizeof(NamePickerData), 10, HEAP_ID_8);
    data = SysTask_GetData(task);
    data->bgConfig = bgConfig;
    data->unk4 = a1;
    data->fieldSystem = fieldSystem;
    data->unkC = result;
    data->task = task;
    data->names = sub_0202C6F4(fieldSystem->saveData);
    data->result = result;
    *data->result = -1;

    FontID_Alloc(4, HEAP_ID_8);
    narc = NARC_New(NARC_a_2_5_9, HEAP_ID_8);
    ov32_0225D60C();
    ov32_0225D634(bgConfig);
    ov32_0225D6E0(data, narc);
    ov32_0225D748(data);
    ov32_0225D788(data);
    ov32_0225DA88(data, narc);
    ov32_0225DD74(data);
    NARC_Delete(narc);
    return task;
}

void ov32_0225D5CC(BgConfig *bgConfig, SysTask *task) {
    NamePickerData *data = SysTask_GetData(task);
    ov32_0225DDAC(data);
    ov32_0225DAC0(data);
    ov32_0225D834(data);
    ov32_0225D76C(data);
    ov32_0225D6C4(data->bgConfig);
    FontID_Release(4);
    DestroySysTaskAndEnvironment(task);
    Heap_Destroy(HEAP_ID_8);
}

BOOL ov32_0225D608(void *a0) {
    return TRUE;
}

static void ov32_0225D60C(void) {
    GX_SetBankForSubBG(GX_VRAM_SUB_BG_32_H);
    GX_SetBankForSubOBJ(GX_VRAM_SUB_OBJ_16_I);
    GXS_SetOBJVRamModeChar(GX_OBJVRAMMODE_CHAR_1D_32K);
}

static void ov32_0225D634(BgConfig *bgConfig) {
    GXS_SetGraphicsMode(GX_BGMODE_0);
    {
        BgTemplate template = sRodata.bgTemplate4;
        InitBgFromTemplate(bgConfig, GF_BG_LYR_SUB_0, &template, GF_BG_TYPE_TEXT);
        BG_ClearCharDataRange(GF_BG_LYR_SUB_0, 0x20, 0, HEAP_ID_8);
        BgClearTilemapBufferAndCommit(bgConfig, GF_BG_LYR_SUB_0);
    }
    {
        BgTemplate template = sRodata.bgTemplate5;
        InitBgFromTemplate(bgConfig, GF_BG_LYR_SUB_1, &template, GF_BG_TYPE_TEXT);
    }
    {
        BgTemplate template = sRodata.bgTemplate6;
        InitBgFromTemplate(bgConfig, GF_BG_LYR_SUB_2, &template, GF_BG_TYPE_TEXT);
    }
}

static void ov32_0225D6C4(BgConfig *bgConfig) {
    FreeBgTilemapBuffer(bgConfig, GF_BG_LYR_SUB_2);
    FreeBgTilemapBuffer(bgConfig, GF_BG_LYR_SUB_1);
    FreeBgTilemapBuffer(bgConfig, GF_BG_LYR_SUB_0);
}

static void ov32_0225D6E0(NamePickerData *data, NARC *narc) {
    GfGfxLoader_LoadCharDataFromOpenNarc(narc, 2, data->bgConfig, GF_BG_LYR_SUB_1, 0, 0, TRUE, HEAP_ID_8);
    GfGfxLoader_LoadScrnDataFromOpenNarc(narc, 1, data->bgConfig, GF_BG_LYR_SUB_1, 0, 0, TRUE, HEAP_ID_8);
    GfGfxLoader_LoadScrnDataFromOpenNarc(narc, 0, data->bgConfig, GF_BG_LYR_SUB_2, 0, 0, TRUE, HEAP_ID_8);
    GfGfxLoader_GXLoadPalFromOpenNarc(narc, 3, GF_PAL_LOCATION_SUB_BG, (enum GFPalSlotOffset)0, 0, HEAP_ID_8);
}

static void ov32_0225D748(NamePickerData *data) {
    data->msgData = NewMsgDataFromNarc(MSGDATA_LOAD_DIRECT, NARC_msgdata_msg, NARC_msg_msg_0196_bin, HEAP_ID_8);
    data->msgFormat = MessageFormat_New(HEAP_ID_8);
}

static void ov32_0225D76C(NamePickerData *data) {
    MessageFormat_Delete(data->msgFormat);
    DestroyMsgData(data->msgData);
}

static void ov32_0225D788(NamePickerData *data) {
    String *string;
    u16 i;
    u16 center;
    u16 x;

    for (i = 0; i < NAME_PICKER_NUM_WINDOWS; i++) {
        AddWindow(data->bgConfig, &data->windows[i], &sRodata.windowTemplates[i]);
    }
    FillWindowPixelBuffer(&data->windows[0], 0);
    string = NewString_ReadMsgData(data->msgData, msg_0196_00029);
    center = GetWindowWidth(&data->windows[0]) * 8 / 2;
    x = center - FontID_String_GetWidth(4, string, 0) / 2;
    AddTextPrinterParameterizedWithColor(&data->windows[0], 4, string, x, 0, TEXT_SPEED_NOTRANSFER, MAKE_TEXT_COLOR(5, 6, 0), NULL);
    String_Delete(string);
    CopyWindowPixelsToVram_TextMode(&data->windows[0]);
    ScheduleWindowCopyToVram(&data->windows[0]);
    ov32_0225D84C(data);
    ov32_0225D988(data);
}

static void ov32_0225D834(NamePickerData *data) {
    u32 i;
    for (i = 0; i < NAME_PICKER_NUM_WINDOWS; i++) {
        RemoveWindow(&data->windows[i]);
    }
}

// Header window: "<label> <total pages>" on the right, current page on the left
static void ov32_0225D84C(NamePickerData *data) {
    String *string;
    String *buf;
    String *template;
    u16 width;
    u16 center;
    u16 x;

    FillWindowPixelBuffer(&data->windows[1], 0);
    string = NewString_ReadMsgData(data->msgData, msg_0196_00028);
    width = FontID_String_GetWidth(0, string, 0);
    center = (GetWindowWidth(&data->windows[1]) * 8 - width) / 2;
    AddTextPrinterParameterizedWithColor(&data->windows[1], 0, string, center, 0, TEXT_SPEED_NOTRANSFER, MAKE_TEXT_COLOR(5, 6, 0), NULL);
    String_Delete(string);

    buf = String_New(4, HEAP_ID_8);
    template = NewString_ReadMsgData(data->msgData, msg_0196_00027);
    BufferIntegerAsString(data->msgFormat, 0, NAME_PICKER_NUM_PAGES, 1, PRINTING_MODE_LEFT_ALIGN, TRUE);
    StringExpandPlaceholders(data->msgFormat, buf, template);
    AddTextPrinterParameterizedWithColor(&data->windows[1], 0, buf, center + width, 0, TEXT_SPEED_NOTRANSFER, MAKE_TEXT_COLOR(5, 6, 0), NULL);
    String_Delete(template);

    template = NewString_ReadMsgData(data->msgData, msg_0196_00027);
    BufferIntegerAsString(data->msgFormat, 0, data->page + 1, 1, PRINTING_MODE_LEFT_ALIGN, TRUE);
    StringExpandPlaceholders(data->msgFormat, buf, template);
    x = center - FontID_String_GetWidth(0, buf, 0);
    AddTextPrinterParameterizedWithColor(&data->windows[1], 0, buf, x, 0, TEXT_SPEED_NOTRANSFER, MAKE_TEXT_COLOR(5, 6, 0), NULL);
    String_Delete(template);
    String_Delete(buf);
    CopyWindowPixelsToVram_TextMode(&data->windows[1]);
    ScheduleWindowCopyToVram(&data->windows[1]);
}

// Draws the current page of names into the inactive 8-window bank, then flips
static void ov32_0225D988(NamePickerData *data) {
    PlayerProfile *profile;
    String *template;
    String *buf;
    u32 center;
    Window *windows;
    u16 i;

    if (data->bufferToggle == 0) {
        windows = &data->windows[2];
    } else {
        windows = &data->windows[2 + NAME_PICKER_NAMES_PER_PAGE];
    }
    template = NewString_ReadMsgData(data->msgData, msg_0196_00030);
    buf = String_New(0x40, HEAP_ID_8);
    profile = PlayerProfile_New(HEAP_ID_8);
    center = (u16)(GetWindowWidth(&windows[0]) * 8 / 2);
    for (i = 0; i < NAME_PICKER_NAMES_PER_PAGE; i++) {
        Save_Profile_PlayerName_Set(profile, sub_0202C254(data->names, i + data->page * NAME_PICKER_NAMES_PER_PAGE));
        BufferPlayersName(data->msgFormat, 0, profile);
        StringExpandPlaceholders(data->msgFormat, buf, template);
        FillWindowPixelBuffer(&windows[i], 0);
        AddTextPrinterParameterizedWithColor(&windows[i], 4, buf, center - FontID_String_GetWidth(0, buf, 0) / 2, 0, TEXT_SPEED_NOTRANSFER, MAKE_TEXT_COLOR(5, 6, 0), NULL);
        CopyWindowPixelsToVram_TextMode(&windows[i]);
        ScheduleWindowCopyToVram(&windows[i]);
    }
    Heap_Free(profile);
    String_Delete(buf);
    String_Delete(template);
    data->bufferToggle ^= 1;
}

static void ov32_0225DA88(NamePickerData *data, NARC *narc) {
    data->spriteList = G2dRenderer_Init(NAME_PICKER_NUM_SPRITES, &data->renderer, HEAP_ID_8);
    G2dRenderer_SetSubSurfaceCoords(&data->renderer, 0, FX32_CONST(256));
    ov32_0225DADC(data);
    ov32_0225DC68(data, narc);
}

static void ov32_0225DAC0(NamePickerData *data) {
    ov32_0225DCD4(data);
    ov32_0225DB00(data);
    SpriteList_Delete(data->spriteList);
}

static void ov32_0225DADC(NamePickerData *data) {
    u32 i;
    for (i = 0; i < 4; i++) {
        data->resMans[i] = Create2DGfxResObjMan(1, (GfGfxResType)i, HEAP_ID_8);
    }
}

static void ov32_0225DB00(NamePickerData *data) {
    u32 i;
    for (i = 0; i < 4; i++) {
        Destroy2DGfxResObjMan(data->resMans[i]);
    }
}

static void ov32_0225DB1C(SpriteResource **resObjs, GF_2DGfxResMan **resMans, NARC *narc, int charFileId, int plttFileId, int cellFileId, int animFileId, int plttNum, int charId, int plttId, int cellId, int animId) {
    resObjs[GF_GFX_RES_TYPE_CHAR] = AddCharResObjFromOpenNarc(resMans[GF_GFX_RES_TYPE_CHAR], narc, charFileId, TRUE, charId, NNS_G2D_VRAM_TYPE_2DSUB, HEAP_ID_8);
    SpriteTransfer_CreateCharTransferTask_AllocAtEnd(resObjs[GF_GFX_RES_TYPE_CHAR]);
    sub_0200A740(resObjs[GF_GFX_RES_TYPE_CHAR]);

    resObjs[GF_GFX_RES_TYPE_PLTT] = AddPlttResObjFromOpenNarc(resMans[GF_GFX_RES_TYPE_PLTT], narc, plttFileId, FALSE, plttId, NNS_G2D_VRAM_TYPE_2DSUB, plttNum, HEAP_ID_8);
    SpriteTransfer_CreatePlttTransferTask(resObjs[GF_GFX_RES_TYPE_PLTT]);
    sub_0200A740(resObjs[GF_GFX_RES_TYPE_PLTT]);

    resObjs[GF_GFX_RES_TYPE_CELL] = AddCellOrAnimResObjFromOpenNarc(resMans[GF_GFX_RES_TYPE_CELL], narc, cellFileId, TRUE, cellId, GF_GFX_RES_TYPE_CELL, HEAP_ID_8);
    resObjs[GF_GFX_RES_TYPE_ANIM] = AddCellOrAnimResObjFromOpenNarc(resMans[GF_GFX_RES_TYPE_ANIM], narc, animFileId, TRUE, animId, GF_GFX_RES_TYPE_ANIM, HEAP_ID_8);
}

static void ov32_0225DBAC(SpriteResource **resObjs, GF_2DGfxResMan **resMans, SpriteResourcesHeader *header, int priority) {
    int charId = GF2DGfxResObj_GetResID(resObjs[GF_GFX_RES_TYPE_CHAR]);
    int plttId = GF2DGfxResObj_GetResID(resObjs[GF_GFX_RES_TYPE_PLTT]);
    int cellId = GF2DGfxResObj_GetResID(resObjs[GF_GFX_RES_TYPE_CELL]);
    int animId = GF2DGfxResObj_GetResID(resObjs[GF_GFX_RES_TYPE_ANIM]);
    CreateSpriteResourcesHeader(header, charId, plttId, cellId, animId, -1, -1, 0, priority, resMans[GF_GFX_RES_TYPE_CHAR], resMans[GF_GFX_RES_TYPE_PLTT], resMans[GF_GFX_RES_TYPE_CELL], resMans[GF_GFX_RES_TYPE_ANIM], NULL, NULL);
}

static void ov32_0225DC0C(NamePickerData *data, int index, SpriteResourcesHeader *header, const u8 *spec) {
    SpriteTemplate template;

    template.spriteList = data->spriteList;
    template.header = header;
    template.position.x = spec[0] << FX32_SHIFT;
    template.position.y = (spec[1] << FX32_SHIFT) + FX32_CONST(256);
    template.position.z = 0;
    template.scale.x = FX32_ONE;
    template.scale.y = FX32_ONE;
    template.scale.z = FX32_ONE;
    template.rotation = 0;
    template.drawPriority = spec[2];
    template.whichScreen = NNS_G2D_VRAM_TYPE_2DSUB;
    template.heapID = HEAP_ID_8;
    data->sprites[index] = Sprite_CreateAffine(&template);
    Sprite_SetAnimCtrlSeq(data->sprites[index], spec[3]);
}

static void ov32_0225DC68(NamePickerData *data, NARC *narc) {
    SpriteResourcesHeader header;
    u32 i;

    ov32_0225DB1C(data->resObjs, data->resMans, narc, 4, 7, 5, 6, 1, 0x781, 0x781, 0x781, 0x781);
    ov32_0225DBAC(data->resObjs, data->resMans, &header, 1);
    for (i = 0; i < NAME_PICKER_NUM_SPRITES; i++) {
        ov32_0225DC0C(data, i, &header, sRodata.spriteSpecs[i]);
    }
}

static void ov32_0225DCD4(NamePickerData *data) {
    u32 i;
    for (i = 0; i < NAME_PICKER_NUM_SPRITES; i++) {
        Sprite_Delete(data->sprites[i]);
    }
    SpriteTransfer_DeleteCharTransferTask(data->resObjs[GF_GFX_RES_TYPE_CHAR]);
    SpriteTransfer_DeletePlttTransferTask(data->resObjs[GF_GFX_RES_TYPE_PLTT]);
}

static void ov32_0225DD04(NamePickerData *data) {
    u32 i;
    for (i = 0; i < NAME_PICKER_NUM_SPRITES; i++) {
        Sprite_UpdateAnim(data->sprites[i], FX32_ONE);
    }
}

static void ov32_0225DD24(NamePickerData *data, int pos) {
    const DpadMenuBox *box;
    VecFx32 vec;

    box = GridInputHandler_GetDpadBox(data->gridInput, pos);
    vec.x = box->left << FX32_SHIFT;
    vec.y = (box->top << FX32_SHIFT) + FX32_CONST(256);
    Sprite_SetMatrix(data->sprites[NAME_PICKER_SPRITE_CURSOR], &vec);
    if (pos == NAME_PICKER_INPUT_CANCEL) {
        Sprite_SetAnimCtrlSeq(data->sprites[NAME_PICKER_SPRITE_CURSOR], 1);
    } else {
        Sprite_SetAnimCtrlSeq(data->sprites[NAME_PICKER_SPRITE_CURSOR], 0);
    }
}

static void ov32_0225DD74(NamePickerData *data) {
    data->gridInput = GridInputHandler_Create(sRodata.gridHitboxes, sRodata.gridDpadBoxes, &sRodata.gridCallbacks, data, TRUE, 0, HEAP_ID_8);
    ov32_0225DD24(data, 0);
}

static void ov32_0225DDAC(NamePickerData *data) {
    GridInputHandler_Free(data->gridInput);
}

static void ov32_0225DDB8(void *data, int newTarget, int prevTarget) {
}

static void ov32_0225DDBC(void *data, int newTarget, int prevTarget) {
    ov32_0225DD24(data, newTarget);
}

static void ov32_0225DDC4(SysTask *task, void *taskData) {
    NamePickerData *data = taskData;

    switch (data->state) {
    case NAME_PICKER_STATE_INPUT:
        data->state = ov32_0225DE34(data);
        break;
    case NAME_PICKER_STATE_BLINK:
        data->state = ov32_0225DF80(data);
        break;
    case NAME_PICKER_STATE_REDRAW:
        ov32_0225D84C(data);
        ov32_0225D988(data);
        data->state = NAME_PICKER_STATE_INPUT;
        break;
    case NAME_PICKER_STATE_DONE:
        *data->result = data->selection;
        break;
    }

    ov32_0225DD04(data);
    SpriteList_RenderAndAnimateSprites(data->spriteList);
}

// Input state handler; returns the next state
static int ov32_0225DE34(NamePickerData *data) {
    u32 input;
    int touch;

    touch = TouchscreenHitbox_FindRectAtTouchNew(sRodata.pageHitboxes);
    if (touch == 0) {
        PlaySE(SEQ_SE_DP_SELECT78);
        return ov32_0225DF9C(data, -1);
    }
    if (touch == 1) {
        PlaySE(SEQ_SE_DP_SELECT78);
        return ov32_0225DF9C(data, 1);
    }

    input = GridInputHandler_HandleInput_AllowHold(data->gridInput);
    switch (input) {
    case 0:
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
        PlaySE(SEQ_SE_DP_DECIDE);
        data->selection = input + data->page * NAME_PICKER_NAMES_PER_PAGE;
        return ov32_0225E0FC(data, input % 2 * 16 + 2, input / 2 * 5, NAME_PICKER_STATE_DONE);
    case NAME_PICKER_INPUT_CANCEL:
    case GRID_MENU_CANCEL:
        PlaySE(SEQ_SE_DP_DECIDE);
        data->selection = -2;
        return ov32_0225E0A8(data, NAME_PICKER_SPRITE_CANCEL, 3, 2, NAME_PICKER_STATE_DONE);
    case GRID_MENU_NOTHING_CHOSEN:
        input = GridInputHandler_GetNextInput(data->gridInput);
        if (gSystem.newAndRepeatedKeys & PAD_KEY_RIGHT) {
            if (input == 1 || input == 3 || input == 5 || input == 7) {
                PlaySE(SEQ_SE_DP_SELECT);
                return ov32_0225DF9C(data, 1);
            }
        }
        if (gSystem.newAndRepeatedKeys & PAD_KEY_LEFT) {
            if (input == 0 || input == 2 || input == 4 || input == 6) {
                PlaySE(SEQ_SE_DP_SELECT);
                return ov32_0225DF9C(data, -1);
            }
        }
        break;
    case GRID_MENU_CURSOR_MOVE:
        PlaySE(SEQ_SE_DP_SELECT);
        break;
    case GRID_MENU_BUTTON_MODE:
        break;
    }
    return NAME_PICKER_STATE_INPUT;
}

// Blink state handler; returns the next state
static int ov32_0225DF80(NamePickerData *data) {
    if (ov32_0225E048(data) == FALSE) {
        return data->nextState;
    } else {
        return NAME_PICKER_STATE_BLINK;
    }
}

// Turns the page by delta (wrapping) and blinks the matching arrow sprite
static int ov32_0225DF9C(NamePickerData *data, int delta) {
    int target;
    int seq;

    data->page += delta;
    if (data->page < 0) {
        data->page = NAME_PICKER_NUM_PAGES - 1;
    }
    if (data->page > NAME_PICKER_NUM_PAGES - 1) {
        data->page = 0;
    }
    if (delta > 0) {
        target = NAME_PICKER_SPRITE_NEXT;
        seq = 6;
    } else {
        target = NAME_PICKER_SPRITE_PREV;
        seq = 4;
    }
    return ov32_0225E0A8(data, target, seq + 1, seq, NAME_PICKER_STATE_REDRAW);
}

static void ov32_0225DFE8(NamePickerData *data, u8 seq) {
    if (!data->blink.isBg) {
        Sprite_SetAnimCtrlSeq(data->sprites[data->blink.target], seq);
    } else {
        BgTilemapRectChangePalette(data->bgConfig, data->blink.target, data->blink.x, data->blink.y, data->blink.width, data->blink.height, seq);
        ScheduleBgTilemapBufferTransfer(data->bgConfig, data->blink.target);
    }
}

static BOOL ov32_0225E048(NamePickerData *data) {
    NamePickerBlink *blink = &data->blink;

    switch (blink->phase) {
    case 0:
        ov32_0225DFE8(data, blink->seqA);
        blink->phase++;
        break;
    case 1:
        blink->timer++;
        if (blink->timer == 4) {
            ov32_0225DFE8(data, blink->seqB);
            blink->timer = 0;
            blink->phase++;
        }
        break;
    case 2:
        blink->timer++;
        if (blink->timer == 2) {
            return FALSE;
        }
        break;
    }
    return TRUE;
}

static int ov32_0225E0A8(NamePickerData *data, u8 target, u8 seqA, u8 seqB, u8 nextState) {
    data->blink.isBg = FALSE;
    data->blink.timer = 0;
    data->blink.phase = 0;
    data->blink.target = target;
    data->blink.seqA = seqA;
    data->blink.seqB = seqB;
    data->nextState = nextState;
    return NAME_PICKER_STATE_BLINK;
}

static int ov32_0225E0FC(NamePickerData *data, u8 x, u8 y, u8 nextState) {
    data->blink.isBg = TRUE;
    data->blink.timer = 0;
    data->blink.phase = 0;
    data->blink.target = GF_BG_LYR_SUB_1;
    data->blink.seqA = 1;
    data->blink.seqB = 0;
    data->blink.x = x;
    data->blink.y = y;
    data->blink.width = 12;
    data->blink.height = 4;
    data->nextState = nextState;
    return NAME_PICKER_STATE_BLINK;
}
