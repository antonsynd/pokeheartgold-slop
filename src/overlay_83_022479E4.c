#include "heap.h"
#include "msgdata.h"
#include "pm_string.h"
#include "system.h"
#include "touchscreen.h"
#include "touchscreen_list_menu.h"
#include "unk_02019BA4.h"
#include "unk_02020A0C.h"

void ov83_02242AB4(void *data, int newTarget, int prevTarget);
void ov83_02242AC0(void *data, u8 x, u8 y, int a3);
void ov83_02242AE0(void *data, int a1);
void ov83_022469D8(void *data, int newTarget, int prevTarget);
void ov83_02247998(void *param0, String *str, int param2, int param3, int param4, int param5, int param6);

void ov83_022479E4(void *param0, MsgData *msgData, s32 msgNo, int param3, int param4, int param5, int param6, int param7);
void ov83_02247A18(GridInputHandler *inputHandler);
GridInputHandler *ov83_02247A24(void *param0, int param1, int param2);
GridInputHandler *ov83_02247A7C(void *param0, int param1, int param2);
int ov83_02247AD4(GridInputHandler *inputHandler);
void ov83_02247B04(GridInputHandler *inputHandler);
GridInputHandler *ov83_02247B7C(void *param0);
int ov83_02247BC4(GridInputHandler *inputHandler);
TouchscreenListMenuSpawner *ov83_02247CB8(int param0, PaletteData *paletteData);
void ov83_02247CC4(TouchscreenListMenuSpawner *spawner);
TouchscreenListMenu *ov83_02247CCC(TouchscreenListMenuSpawner *spawner, TouchscreenListMenuHeader *header, u8 x, u8 y, u8 width);
void ov83_02247CE8(TouchscreenListMenu *menu);
BOOL ov83_02247CF0(void);

static void ov83_02247A20(void *data, int newTarget, int prevTarget);
static void ov83_02247B1C(void *data, int newTarget, int prevTarget);
static void ov83_02247B34(void *data, int newTarget, int prevTarget);
static void ov83_02247B4C(void *data, int newTarget, int prevTarget);
static void ov83_02247B64(void *data, int newTarget, int prevTarget);
static void ov83_02247C58(void *data, int newTarget, int prevTarget);
static void ov83_02247C88(void *data, int newTarget, int prevTarget);

static const TouchscreenHitbox sHitboxes_022484F4[] = {
    { .rect = { 0xA0, 0xBF, 0x00, 0x27 } },
    { .rect = { 0xA0, 0xBF, 0x28, 0x4F } },
    { .rect = { TOUCHSCREEN_RECTLIST_END } },
};

// NOTE: these three are all 16 bytes, and MWCC emits an equal-size run rotated
// left by one (the first declared lands last), so declaring 520/500/510 is what
// puts them at 500/510/520 in the linked .rodata. objdiff cannot see this --
// every word is a relocated function pointer, so it masks them all and reports
// the section as matching regardless of order. Only `chiri pkg -- compare` (or
// dumping OVY_83.sbin) catches a wrong order here.
static const GridCallbacks sGridCallbacks_02248520 = {
    ov83_02247A20,
    ov83_02247A20,
    ov83_02247C58,
    ov83_02247C88,
};

static const GridCallbacks sGridCallbacks_02248500 = {
    ov83_02247A20,
    ov83_02247A20,
    ov83_02247B1C,
    ov83_02247B34,
};

static const GridCallbacks sGridCallbacks_02248510 = {
    ov83_02247A20,
    ov83_02247A20,
    ov83_02247B4C,
    ov83_02247B64,
};

static const TouchscreenHitbox sHitboxes_02248530[] = {
    { .rect = { 0x98, 0xAF, 0xC8, 0xF7 } },
    { .rect = { 0x20, 0x4F, 0x20, 0x5F } },
    { .rect = { 0x20, 0x4F, 0x60, 0x9F } },
    { .rect = { 0x20, 0x4F, 0xA0, 0xDF } },
    { .rect = { TOUCHSCREEN_RECTLIST_END } },
};

static const int sTargets_02248544[] = { 4, 0, 1, 2, 3 };

static const TouchscreenHitbox sHitboxes_02248558[] = {
    { .rect = { 0x98, 0xAF, 0xC8, 0xF7 } },
    { .rect = { 0x20, 0x4F, 0x00, 0x3F } },
    { .rect = { 0x20, 0x4F, 0x40, 0x7F } },
    { .rect = { 0x20, 0x4F, 0x80, 0xBF } },
    { .rect = { 0x20, 0x4F, 0xC0, 0xFF } },
    { .rect = { TOUCHSCREEN_RECTLIST_END } },
};

static const int sParams_02248570[] = { 3, 3, 3, 3, 3, 3, 0x13 };

static const int sTargets_0224858C[] = { 0, 1, 2, 3, 4, 5, 8 };

// NOTE: declared before sDpadBoxes_022485A8 on purpose. Both are 32 bytes, and
// MWCC emits an equal-size pair of DIFFERENT types in reverse declaration order,
// so this ordering is what reproduces retail's .rodata layout (A8 then C8).
static const TouchscreenHitbox sHitboxes_022485C8[] = {
    { .rect = { 0x20, 0x47, 0x00, 0x7F } },
    { .rect = { 0x20, 0x47, 0x80, 0xFF } },
    { .rect = { 0x48, 0x6F, 0x00, 0x7F } },
    { .rect = { 0x48, 0x6F, 0x80, 0xFF } },
    { .rect = { 0x70, 0x97, 0x00, 0x7F } },
    { .rect = { 0x70, 0x97, 0x80, 0xFF } },
    { .rect = { 0xA0, 0xBF, 0xC8, 0xFF } },
    { .rect = { TOUCHSCREEN_RECTLIST_END } },
};

static const DpadMenuBox sDpadBoxes_022485A8[] = {
    { 0, 0, 0, 0, 0x81, 0x00, 0x00, 0x00 },
    { 0, 0, 0, 0, 0x01, 0x00, 0x03, 0x02 },
    { 0, 0, 0, 0, 0x02, 0x00, 0x01, 0x03 },
    { 0, 0, 0, 0, 0x03, 0x00, 0x02, 0x01 },
};

static const DpadMenuBox sDpadBoxes_022485E8[] = {
    { 0, 0, 0, 0, 0x81, 0x00, 0x00, 0x00 },
    { 0, 0, 0, 0, 0x01, 0x00, 0x04, 0x02 },
    { 0, 0, 0, 0, 0x02, 0x00, 0x01, 0x03 },
    { 0, 0, 0, 0, 0x03, 0x00, 0x02, 0x04 },
    { 0, 0, 0, 0, 0x04, 0x00, 0x03, 0x01 },
};

static const DpadMenuBox sDpadBoxes_02248610[] = {
    { 0x40, 0x34, 0x00, 0x00, 0x00, 0x02, 0x00, 0x01 },
    { 0xC0, 0x34, 0x00, 0x00, 0x01, 0x03, 0x00, 0x01 },
    { 0x40, 0x5C, 0x00, 0x00, 0x00, 0x04, 0x02, 0x03 },
    { 0xC0, 0x5C, 0x00, 0x00, 0x01, 0x05, 0x02, 0x03 },
    { 0x40, 0x84, 0x00, 0x00, 0x02, 0x06, 0x04, 0x05 },
    { 0xC0, 0x84, 0x00, 0x00, 0x03, 0x06, 0x04, 0x05 },
    { 0xE4, 0xB0, 0x00, 0x00, 0x85, 0x06, 0x06, 0x06 },
};

void ov83_022479E4(void *param0, MsgData *msgData, s32 msgNo, int param3, int param4, int param5, int param6, int param7) {
    String *str = NewString_ReadMsgData(msgData, msgNo);
    ov83_02247998(param0, str, param3, param4, param5, param6, param7);
    String_Delete(str);
}

void ov83_02247A18(GridInputHandler *inputHandler) {
    GridInputHandler_Free(inputHandler);
}

static void ov83_02247A20(void *data, int newTarget, int prevTarget) {
}

GridInputHandler *ov83_02247A24(void *param0, int param1, int param2) {
    if (param2 == 3) {
        return GridInputHandler_Create(sHitboxes_02248530, sDpadBoxes_022485A8, &sGridCallbacks_02248500, param0, TRUE, param1, HEAP_ID_107);
    }
    return GridInputHandler_Create(sHitboxes_02248558, sDpadBoxes_022485E8, &sGridCallbacks_02248500, param0, TRUE, param1, HEAP_ID_107);
}

GridInputHandler *ov83_02247A7C(void *param0, int param1, int param2) {
    if (param2 == 3) {
        return GridInputHandler_Create(sHitboxes_02248530, sDpadBoxes_022485A8, &sGridCallbacks_02248510, param0, TRUE, param1, HEAP_ID_107);
    }
    return GridInputHandler_Create(sHitboxes_02248558, sDpadBoxes_022485E8, &sGridCallbacks_02248510, param0, TRUE, param1, HEAP_ID_107);
}

int ov83_02247AD4(GridInputHandler *inputHandler) {
    int input = GridInputHandler_HandleInput_NoHold(inputHandler);
    switch (input) {
    case GRID_MENU_BUTTON_MODE:
    case GRID_MENU_CURSOR_MOVE:
    case GRID_MENU_CANCEL:
    case GRID_MENU_NOTHING_CHOSEN:
        return input;
    }
    return sTargets_02248544[input];
}

void ov83_02247B04(GridInputHandler *inputHandler) {
    int nextInput = GridInputHandler_GetNextInput(inputHandler);
    GridInputHandler_SetNextLastUnk0FInputs(inputHandler, 0, nextInput, nextInput);
}

static void ov83_02247B1C(void *data, int newTarget, int prevTarget) {
    ov83_02242AB4(data, sTargets_02248544[newTarget], sTargets_02248544[prevTarget]);
}

static void ov83_02247B34(void *data, int newTarget, int prevTarget) {
    ov83_02242AB4(data, sTargets_02248544[newTarget], sTargets_02248544[prevTarget]);
}

static void ov83_02247B4C(void *data, int newTarget, int prevTarget) {
    ov83_022469D8(data, sTargets_02248544[newTarget], sTargets_02248544[prevTarget]);
}

static void ov83_02247B64(void *data, int newTarget, int prevTarget) {
    ov83_022469D8(data, sTargets_02248544[newTarget], sTargets_02248544[prevTarget]);
}

GridInputHandler *ov83_02247B7C(void *param0) {
    GridInputHandler *inputHandler = GridInputHandler_Create(sHitboxes_022485C8, sDpadBoxes_02248610, &sGridCallbacks_02248520, param0, TRUE, 0, HEAP_ID_107);
    ov83_02242AC0(param0, 0x40, 0x34, 3);
    ov83_02242AE0(param0, 0);
    return inputHandler;
}

int ov83_02247BC4(GridInputHandler *inputHandler) {
    int touch;
    int input = GridInputHandler_HandleInput_NoHold(inputHandler);
    switch (input) {
    case GRID_MENU_BUTTON_MODE:
    case GRID_MENU_CURSOR_MOVE:
    case GRID_MENU_CANCEL:
        return input;
    case GRID_MENU_NOTHING_CHOSEN:
        if (gSystem.newKeys & PAD_KEY_LEFT) {
            int next = GridInputHandler_GetNextInput(inputHandler);
            if (next == 0 || next == 2 || next == 4) {
                return 6;
            }
        }
        if (gSystem.newKeys & PAD_KEY_RIGHT) {
            int next = GridInputHandler_GetNextInput(inputHandler);
            if (next == 1 || next == 3 || next == 5) {
                return 7;
            }
        }
        break;
    default:
        return sTargets_0224858C[input];
    }
    touch = TouchscreenHitbox_FindRectAtTouchNew(sHitboxes_022484F4);
    if (touch == 0) {
        return 6;
    }
    if (touch == 1) {
        return 7;
    }
    return -1;
}

static void ov83_02247C58(void *data, int newTarget, int prevTarget) {
    ov83_02242AC0(data, sDpadBoxes_02248610[newTarget].left, sDpadBoxes_02248610[newTarget].top, sParams_02248570[newTarget]);
    ov83_02242AE0(data, newTarget);
}

static void ov83_02247C88(void *data, int newTarget, int prevTarget) {
    ov83_02242AC0(data, sDpadBoxes_02248610[newTarget].left, sDpadBoxes_02248610[newTarget].top, sParams_02248570[newTarget]);
    ov83_02242AE0(data, newTarget);
}

TouchscreenListMenuSpawner *ov83_02247CB8(int param0, PaletteData *paletteData) {
    return TouchscreenListMenuSpawner_Create(HEAP_ID_107, paletteData);
}

void ov83_02247CC4(TouchscreenListMenuSpawner *spawner) {
    TouchscreenListMenuSpawner_Destroy(spawner);
}

TouchscreenListMenu *ov83_02247CCC(TouchscreenListMenuSpawner *spawner, TouchscreenListMenuHeader *header, u8 x, u8 y, u8 width) {
    return TouchscreenListMenu_Create(spawner, header, 0, x, y, width, 0);
}

void ov83_02247CE8(TouchscreenListMenu *menu) {
    TouchscreenListMenu_Destroy(menu);
}

BOOL ov83_02247CF0(void) {
    if (gSystem.newKeys & (PAD_BUTTON_A | PAD_BUTTON_B)) {
        return TRUE;
    }
    return System_GetTouchNew();
}
