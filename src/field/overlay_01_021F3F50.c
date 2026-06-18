#include "global.h"

#include "constants/maps.h"

#include "bg_window.h"
#include "field_system.h"
#include "font.h"
#include "heap.h"
#include "igt.h"
#include "map_header.h"
#include "message_format.h"
#include "msgdata.h"
#include "overlay_01.h"
#include "overlay_01_021F6830.h"
#include "player_avatar.h"
#include "player_data.h"
#include "pm_string.h"
#include "pokedex.h"
#include "render_text.h"
#include "render_window.h"
#include "save.h"
#include "save_local_field_data.h"
#include "text.h"

typedef struct SaveStatsContext {
    int dexOwned;
    u32 mapSec;
    PlayerProfile *profile;
    IGT *igt;
} SaveStatsContext;

struct SaveStatsPrinter {
    FieldSystem *fieldSystem;
    enum HeapID heapId;
    u8 unk8;
    BgConfig *bgConfig;
    Window *window;
    MessageFormat *messageFormat;
    MsgData *msgData;
    SaveStatsContext stats;
    int width;
    int height;
};

typedef struct StatsLineLayout {
    u32 msgId;
    u32 align;
    u32 row;
    u32 colorIdx;
} StatsLineLayout;

static void ov01_021F3F50(SaveStatsContext *ctx, FieldSystem *fieldSystem);
static void ov01_021F3F9C(MessageFormat *messageFormat, SaveStatsContext *ctx);
static int ov01_021F4044(SaveStatsContext *ctx);
static void ov01_021F4048(struct SaveStatsPrinter *printer);
static int ov01_021F4234(Window *window, String *string, int align, int fontId);
static void ov01_021F426C(struct SaveStatsPrinter *printer);
static void ov01_021F4404(FieldSystem *fieldSystem);

static const u32 ov01_02206AD8[] = { 0x000F0200, 0x000E0200, 0x0000000D };

static const u32 ov01_02206AE4[] = { 0xE, 0xF, 0x10, 0x0 };

static const u32 ov01_02206AF4[] = { 5, 6, 7, 8 };

static const StatsLineLayout ov01_02206B04[] = {
    { 5,   0, 1, 0 },
    { 6,   0, 2, 0 },
    { 7,   0, 3, 0 },
    { 8,   0, 4, 0 },
    { 0,   2, 0, 0 },
    { 9,   1, 1, 1 },
    { 0xA, 1, 2, 1 },
    { 0xB, 1, 3, 1 },
    { 0xC, 1, 4, 1 },
};

static void ov01_021F3F50(SaveStatsContext *ctx, FieldSystem *fieldSystem) {
    SaveData *saveData = fieldSystem->saveData;
    Location *location = LocalFieldData_GetCurrentPosition(Save_LocalFieldData_Get(saveData));
    Pokedex *pokedex = Save_Pokedex_Get(saveData);
    ctx->mapSec = MapHeader_GetMapSec(location->mapId);
    if (Pokedex_IsEnabled(pokedex)) {
        ctx->dexOwned = Pokedex_CountDexOwned(pokedex);
    } else {
        ctx->dexOwned = 0;
    }
    ctx->profile = Save_PlayerData_GetProfile(saveData);
    ctx->igt = Save_PlayerData_GetIGTAddr(saveData);
}

static void ov01_021F3F9C(MessageFormat *messageFormat, SaveStatsContext *ctx) {
    int numDigits;
    PrintingMode mode;
    int hours;

    BufferLandmarkName(messageFormat, 0, ctx->mapSec);
    BufferPlayersName(messageFormat, 1, ctx->profile);
    BufferIntegerAsString(messageFormat, 2, PlayerProfile_CountBadges(ctx->profile), 2, PRINTING_MODE_LEFT_ALIGN, 1);

    if (ctx->dexOwned >= 100) {
        numDigits = 3;
        mode = PRINTING_MODE_LEFT_ALIGN;
    } else if (ctx->dexOwned >= 10) {
        numDigits = 3;
        mode = PRINTING_MODE_RIGHT_ALIGN;
    } else {
        numDigits = 2;
        mode = PRINTING_MODE_RIGHT_ALIGN;
    }
    BufferIntegerAsString(messageFormat, 3, ctx->dexOwned, numDigits, mode, 1);

    hours = GetIGTHours(ctx->igt);
    if (hours >= 100) {
        numDigits = 3;
        mode = PRINTING_MODE_LEFT_ALIGN;
    } else if (hours >= 10) {
        numDigits = 3;
        mode = PRINTING_MODE_RIGHT_ALIGN;
    } else {
        numDigits = 2;
        mode = PRINTING_MODE_RIGHT_ALIGN;
    }
    BufferIntegerAsString(messageFormat, 4, hours, numDigits, mode, 1);

    BufferIntegerAsString(messageFormat, 5, GetIGTMinutes(ctx->igt), 2, PRINTING_MODE_LEADING_ZEROS, 1);
}

static int ov01_021F4044(SaveStatsContext *ctx) {
    return 0xA;
}

static void ov01_021F4048(struct SaveStatsPrinter *printer) {
    int y;
    String *string;
    const u32 *labelPtr;
    const u32 *valuePtr;
    int i;
    int lineHeight;

    lineHeight = GetFontAttribute(0, 1) + GetFontAttribute(0, 3);
    y = 0;
    string = ReadMsgData_ExpandPlaceholders(printer->messageFormat, printer->msgData, 0, printer->heapId);
    AddTextPrinterParameterized(printer->window, 0, string, 0, y, 0xFF, NULL);
    String_Delete(string);

    valuePtr = ov01_02206AF4;
    labelPtr = ov01_02206AE4;
    for (i = 1; i < 5u; i++) {
        u32 valueId = *valuePtr;
        if (valueId != 3 || printer->stats.dexOwned != 0) {
            int width;
            y += lineHeight;
            string = NewString_ReadMsgData(printer->msgData, valueId);
            AddTextPrinterParameterized(printer->window, 0, string, 0, y, 0xFF, NULL);
            String_Delete(string);
            string = ReadMsgData_ExpandPlaceholders(printer->messageFormat, printer->msgData, labelPtr[-1], printer->heapId);
            width = FontID_String_GetWidth(0, string, GetFontAttribute(0, 2));
            AddTextPrinterParameterized(printer->window, 0, string, 0x68 - width, y, 0xFF, NULL);
            String_Delete(string);
        }
        labelPtr++;
        valuePtr++;
    }
}

void Field_SaveStatsPrinter_Print(struct SaveStatsPrinter *printer) {
    printer->window = Heap_Alloc(printer->heapId, sizeof(Window));
    AddWindowParameterized(printer->bgConfig, printer->window, printer->unk8, 1, 1, printer->width, printer->height, 0xD, 0x189);
    LoadUserFrameGfx1(printer->bgConfig, (GFBgLayer)printer->unk8, 0x3D9, 0xB, 0, printer->heapId);
    FillWindowPixelBuffer(printer->window, GetFontAttribute(0, 6));
    ov01_021F4048(printer);
    DrawFrameAndWindow1(printer->window, 0, 0x3D9, 0xB);
}

void Field_SaveStatsPrinter_RemoveFromScreen(struct SaveStatsPrinter *printer) {
    sub_0200E5D4(printer->window, 0);
    RemoveWindow(printer->window);
    Heap_Free(printer->window);
}

struct SaveStatsPrinter *Field_SaveStatsPrinter_New(FieldSystem *fieldSystem, enum HeapID x, int y) {
    struct SaveStatsPrinter *printer = Heap_Alloc(x, sizeof(struct SaveStatsPrinter));
    printer->fieldSystem = fieldSystem;
    printer->heapId = x;
    printer->unk8 = y;
    printer->bgConfig = fieldSystem->bgConfig;
    printer->messageFormat = MessageFormat_New(x);
    printer->msgData = NewMsgDataFromNarc(MSGDATA_LOAD_LAZY, NARC_msgdata_msg, 0x1A7, x);
    ov01_021F3F50(&printer->stats, printer->fieldSystem);
    ov01_021F3F9C(printer->messageFormat, &printer->stats);
    printer->width = 0xD;
    printer->height = ov01_021F4044(&printer->stats);
    return printer;
}

void Field_SaveStatsPrinter_Delete(struct SaveStatsPrinter *printer) {
    DestroyMsgData(printer->msgData);
    MessageFormat_Delete(printer->messageFormat);
    Heap_Free(printer);
}

static int ov01_021F4234(Window *window, String *string, int align, int fontId) {
    int x = 0;
    int width;
    switch (align) {
    case 1:
        width = FontID_String_GetWidth(fontId, string, 0);
        x = (window->width << 3) - width;
        break;
    case 2:
        width = FontID_String_GetWidth(fontId, string, 0);
        x = ((window->width << 3) - width) / 2;
        break;
    }
    return x;
}

static void ov01_021F426C(struct SaveStatsPrinter *printer) {
    const StatsLineLayout *line;
    int i;
    int lineHeight;

    lineHeight = GetFontAttribute(0, 1) + GetFontAttribute(0, 3);
    line = ov01_02206B04;
    for (i = 0; i < 9u; i++) {
        if (printer->stats.dexOwned != 0 || (line->msgId != 0xB && line->msgId != 7)) {
            String *string = ReadMsgData_ExpandPlaceholders(printer->messageFormat, printer->msgData, line->msgId, printer->heapId);
            int x = ov01_021F4234(printer->window, string, line->align, 0);
            AddTextPrinterParameterizedWithColor(printer->window, 0, string, x, lineHeight * line->row, 0, ov01_02206AD8[line->colorIdx], NULL);
            String_Delete(string);
        }
        line++;
    }
}

void ov01_021F42F8(UnkStruct_field_021F4360 *a0) {
    struct SaveStatsPrinter *printer = (struct SaveStatsPrinter *)a0;
    printer->window = Heap_Alloc(printer->heapId, sizeof(Window));
    AddWindowParameterized(printer->bgConfig, printer->window, printer->unk8, 7, 2, printer->width, printer->height, 4, 0x10B);
    FillWindowPixelBuffer(printer->window, 0);
    ov01_021F426C(printer);
    CopyWindowToVram(printer->window);
}

void ov01_021F434C(UnkStruct_field_021F4360 *a0) {
    struct SaveStatsPrinter *printer = (struct SaveStatsPrinter *)a0;
    RemoveWindow(printer->window);
    Heap_Free(printer->window);
}

UnkStruct_field_021F4360 *ov01_021F4360(FieldSystem *fieldSystem, enum HeapID heapID, u8 a2) {
    struct SaveStatsPrinter *printer = Heap_Alloc(heapID, sizeof(struct SaveStatsPrinter));
    printer->fieldSystem = fieldSystem;
    printer->heapId = heapID;
    printer->unk8 = a2;
    printer->bgConfig = fieldSystem->bgConfig;
    printer->messageFormat = MessageFormat_New(heapID);
    printer->msgData = NewMsgDataFromNarc(MSGDATA_LOAD_LAZY, NARC_msgdata_msg, 0x1A7, heapID);
    TextFlags_SetCanABSpeedUpPrint(1);
    TextFlags_SetAutoScrollParam(0);
    TextFlags_SetCanTouchSpeedUpPrint(1);
    ov01_021F3F50(&printer->stats, printer->fieldSystem);
    ov01_021F3F9C(printer->messageFormat, &printer->stats);
    printer->width = 0x13;
    printer->height = ov01_021F4044(&printer->stats);
    return (UnkStruct_field_021F4360 *)printer;
}

void ov01_021F43D0(UnkStruct_field_021F4360 *a0) {
    struct SaveStatsPrinter *printer = (struct SaveStatsPrinter *)a0;
    DestroyMsgData(printer->msgData);
    MessageFormat_Delete(printer->messageFormat);
    Heap_Free(printer);
}

int Field_SaveGameNormal(FieldSystem *fieldSystem) {
    ov01_021F4404(fieldSystem);
    if (SaveGameNormal(fieldSystem->saveData) == 2) {
        return 1;
    }
    return 0;
}

static void ov01_021F4404(FieldSystem *fieldSystem) {
    FieldSystem_SyncMapObjectsToSave(fieldSystem);
    ov01_021F6830(fieldSystem, 4, 0);
    fieldSystem->location->x = PlayerAvatar_GetXCoord(fieldSystem->playerAvatar);
    fieldSystem->location->y = PlayerAvatar_GetZCoord(fieldSystem->playerAvatar);
    fieldSystem->location->warpId = ~0;
    fieldSystem->location->direction = PlayerAvatar_GetFacingDirection(fieldSystem->playerAvatar);
}

void ov01_021F4440(FieldSystem *fieldSystem) {
    int mapId;
    if (fieldSystem == NULL) {
        GF_AssertFail();
        return;
    }
    mapId = fieldSystem->location->mapId;
    if (mapId != MAP_UNION && mapId != MAP_WIFI_SINGLE_BATTLE_AREA && mapId != MAP_WIFI_MULTI_BATTLE_AREA) {
        ov01_021F4404(fieldSystem);
    }
}
