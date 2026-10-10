#include "global.h"
#include "overlay_manager.h"

typedef struct UnkStruct_ov68_021E7568_Data {
    /* 0x00 */ u8 filler_00[0x14];
    /* 0x14 */ u16 cursorPos;
    /* 0x16 */ u8 filler_16[5];
    /* 0x1B */ u8 moveSlot;
} UnkStruct_ov68_021E7568_Data;

typedef struct UnkStruct_ov68_021E7568 {
    /* 0x000 */ UnkStruct_ov68_021E7568_Data *data;
    /* 0x004 */ u8 filler_004[0x186 - 0x4];
    /* 0x186 */ u8 selectedMoveSlot;
    /* 0x187 */ u8 filler_187[0x1AC - 0x187];
    /* 0x1AC */ OverlayManager *appMan;
    /* 0x1B0 */ int nextState;
} UnkStruct_ov68_021E7568;

void ov68_021E5A58(UnkStruct_ov68_021E7568 *ctl);
void ov68_021E7A18(UnkStruct_ov68_021E7568 *ctl, int pos);
void ov68_021E73A4(UnkStruct_ov68_021E7568 *ctl, int pos, int a2);

int ov68_021E7568(UnkStruct_ov68_021E7568 *ctl) {
    u32 pos;

    if (OverlayManager_Run(ctl->appMan)) {
        OverlayManager_Delete(ctl->appMan);
        ov68_021E5A58(ctl);
        ov68_021E7A18(ctl, ctl->data->cursorPos);
        pos = ctl->data->cursorPos;
        ov68_021E73A4(ctl, (u8)pos, 3);
        ctl->data->moveSlot = ctl->selectedMoveSlot;
        ctl->nextState = 7;
        return 0;
    }
    return 12;
}
