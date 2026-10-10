#include "global.h"
#include "unk_02005D10.h"
#include "unk_02019BA4.h"

typedef struct UnkStruct_ov68_021E773C_Data {
    /* 0x00 */ u8 filler_00[0x14];
    /* 0x14 */ u16 cursorPos;
    /* 0x16 */ u16 listBase;
} UnkStruct_ov68_021E773C_Data;

typedef struct UnkStruct_ov68_021E773C {
    /* 0x000 */ UnkStruct_ov68_021E773C_Data *data;
    /* 0x004 */ u8 filler_004[0x1B8 - 0x4];
    /* 0x1B8 */ u8 numMoves;
    /* 0x1B9 */ u8 filler_1B9[0x1C8 - 0x1B9];
    /* 0x1C8 */ GridInputHandler *inputHandler;
    /* 0x1CC */ u16 unk_1CC;
} UnkStruct_ov68_021E773C;

u16 ov68_021E6BEC(UnkStruct_ov68_021E773C *ctl);
void ov68_021E68D4(UnkStruct_ov68_021E773C *ctl, int move);
void ov68_021E67E0(UnkStruct_ov68_021E773C *ctl);
void ov68_021E7A18(UnkStruct_ov68_021E773C *ctl, int pos);
void ov68_021E7898(UnkStruct_ov68_021E773C *ctl, int a1);
void ov68_021E7910(UnkStruct_ov68_021E773C *ctl);
void ov68_021E797C(UnkStruct_ov68_021E773C *ctl, int dir);
int ov68_021E73A4(UnkStruct_ov68_021E773C *ctl, int pos, int a2);

int ov68_021E773C(UnkStruct_ov68_021E773C *ctl, int idx) {
    int pos = idx;
    u32 listBase;
    u32 cursorPos;
    UnkStruct_ov68_021E773C_Data *data;

    if (idx <= 3) {
        ctl->data->cursorPos = idx;
        listBase = ctl->data->listBase;
        cursorPos = ctl->data->cursorPos;
        if ((int)(listBase + cursorPos) < ctl->numMoves) {
            ov68_021E7A18(ctl, listBase);
            ov68_021E7898(ctl, 1);
            ov68_021E68D4(ctl, ov68_021E6BEC(ctl));
        } else {
            ov68_021E7A18(ctl, 5);
            ov68_021E7898(ctl, 0);
            ov68_021E68D4(ctl, -2);
        }
    } else if (idx == 4) {
        PlaySE(0x5DD);
        data = ctl->data;
        listBase = data->listBase;
        pos = data->cursorPos;
        data->listBase = listBase + 1;
        ov68_021E68D4(ctl, ov68_021E6BEC(ctl));
        ov68_021E67E0(ctl);
        ov68_021E7A18(ctl, 5);
        ov68_021E7898(ctl, 0);
        ov68_021E7910(ctl);
        ov68_021E797C(ctl, 1);
        GridInputHandler_SetNextInput(ctl->inputHandler, (u8)pos);
    } else if (idx == 5) {
        PlaySE(0x5DD);
        data = ctl->data;
        listBase = data->listBase;
        pos = data->cursorPos;
        data->listBase = listBase - 1;
        ov68_021E68D4(ctl, ov68_021E6BEC(ctl));
        ov68_021E67E0(ctl);
        ov68_021E7A18(ctl, 5);
        ov68_021E7898(ctl, 0);
        ov68_021E7910(ctl);
        ov68_021E797C(ctl, -1);
        GridInputHandler_SetNextInput(ctl->inputHandler, (u8)pos);
    } else if (idx == 6) {
        ov68_021E7A18(ctl, 5);
        ov68_021E7898(ctl, 0);
        if (ctl->unk_1CC != 6) {
            pos = ctl->data->cursorPos;
            GridInputHandler_SetNextInput(ctl->inputHandler, (u8)pos);
        }
    } else if (idx == 7) {
        pos = ctl->data->cursorPos;
        GridInputHandler_SetNextInput(ctl->inputHandler, (u8)pos);
    }
    return ov68_021E73A4(ctl, (u8)pos, 3);
}
