#include "global.h"
#include "bg_window.h"
#include "list_menu.h"
#include "render_window.h"

extern const ListMenuTemplate ov65_022200EC;

void ov65_0221FD20(struct ListMenu *list, s32 index, int onInit);

struct ListMenu *ov65_0221FCA0(ListMenuItem *items, int friendCount, Window *window, BgConfig *bgConfig) {
    ListMenuTemplate tmpl;
    const u32 *src;
    u32 *dst;
    int i;

    AddWindowParameterized(bgConfig, window, 0, 0x13, 1, 0xC, 0xA, 0xD, 0x34D);
    DrawFrameAndWindow1(window, 0, 0x3F7, 0xB);

    src = (const u32 *)&ov65_022200EC;
    dst = (u32 *)&tmpl;
    for (i = 0; i < 8; i++) {
        dst[i] = src[i];
    }
    tmpl.totalItems = friendCount + 1;
    tmpl.maxShowed = 5;
    tmpl.moveCursorFunc = ov65_0221FD20;
    tmpl.items = items;
    tmpl.window = window;
    return ListMenuInit(&tmpl, 0, 0, 0x1A);
}
