#include "global.h"

#include "bg_window.h"
#include "msgdata.h"
#include "sprite.h"
#include "text.h"

typedef struct Ov59_0223AEB0 {
    u8 filler_000[0x5C];
    MsgData *msgData;
    u8 filler_060[8];
    String *string;
    u8 filler_06C[0x158];
    Window window;
    u8 filler_1D4[0x8C];
    Sprite *sprites[2];
} Ov59_0223AEB0;

extern const u32 ov59_0223C954[];

void ov59_0223AEB0(Ov59_0223AEB0 *a0, int mode) {
    int i;

    switch (mode) {
    case 3:
        ClearWindowTilemapAndScheduleTransfer(&a0->window);
        Sprite_SetDrawFlag(a0->sprites[0], FALSE);
        Sprite_SetDrawFlag(a0->sprites[1], FALSE);
        break;
    case 2:
        FillWindowPixelBuffer(&a0->window, 0);
        for (i = 0; i < 2; i++) {
            ReadMsgDataIntoString(a0->msgData, i + 1, a0->string);
            AddTextPrinterParameterizedWithColor(&a0->window, 4, a0->string, 0, i * 24 + 4, TEXT_SPEED_NOTRANSFER, ov59_0223C954[i], NULL);
            Sprite_SetDrawFlag(a0->sprites[i], TRUE);
        }
        ScheduleWindowCopyToVram(&a0->window);
        break;
    case 0:
    case 1:
        Sprite_SetAnimCtrlSeq(a0->sprites[mode], mode * 2 + 1);
        Sprite_ResetAnimCtrlState(a0->sprites[mode]);
        break;
    }
}
