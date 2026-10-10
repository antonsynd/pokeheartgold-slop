#include "global.h"

typedef struct UnkStruct_ov08_02221EE8 {
    u8 pad_0000[0x2070];
    u8 *windows;
    u8 pad_2074;
    u8 useAltSummaryWindows;
} UnkStruct_ov08_02221EE8;

extern const u8 *const ov08_022259CC[];
extern const u8 ov08_022259BC[];
extern const u8 ov08_022259AC[];

void ScrollWindow(void *window, int direction, int distance, int fillVal);
void ScheduleWindowCopyToVram(void *window);

void ov08_02221EE8(UnkStruct_ov08_02221EE8 *ctx, u32 button, int buttonState) {
    const u8 *windowsToScroll;
    u32 scrollDistance;
    /* the original leaves r7 (the scroll direction) untouched for an unknown state: it is the caller's r7,
       which clang's prologue pushed and the frame pointer (r7) addresses */
    u32 scrollDirection = *(u32 *)__builtin_frame_address(0);
    u16 i;

    windowsToScroll = ov08_022259CC[button];
    if (windowsToScroll == NULL) {
        return;
    }

    if (button <= 5) {
        scrollDistance = ov08_022259BC[buttonState];
    } else {
        scrollDistance = ov08_022259AC[buttonState];
    }

    if (buttonState == 0) {
        scrollDirection = 1;
    } else if (buttonState == 1) {
        scrollDirection = 0;
    } else if (buttonState == 2) {
        scrollDirection = 1;
    }

    if (button >= 0xe && button <= 0x11) {
        ScrollWindow(ctx->windows + windowsToScroll[ctx->useAltSummaryWindows] * 16, scrollDirection, scrollDistance, 0);
        ScheduleWindowCopyToVram(ctx->windows + windowsToScroll[ctx->useAltSummaryWindows] * 16);
        return;
    }

    for (i = 0; i < 8; i++) {
        if (windowsToScroll[i] == 0xff) {
            return;
        }
        ScrollWindow(ctx->windows + windowsToScroll[i] * 16, scrollDirection, scrollDistance, 0);
        ScheduleWindowCopyToVram(ctx->windows + windowsToScroll[i] * 16);
    }
}
