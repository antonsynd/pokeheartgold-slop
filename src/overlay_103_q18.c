#include "global.h"

#include "touchscreen_list_menu.h"

typedef struct Ov103Sub {
    BgConfig *bgConfig;
    u8 filler_004[0x23C];
    TouchscreenListMenuSpawner *spawner;
    TouchscreenListMenu *menu;
    ListMenuItem *items;
} Ov103Sub;

typedef struct Ov103_021ECF68 {
    u8 filler_00[0xC];
    Ov103Sub *sub;
} Ov103_021ECF68;

extern const TouchscreenListMenuTemplate _021EEB34;

u8 ov103_021ED2B8(Ov103_021ECF68 *a0);

void ov103_021ECF68(Ov103_021ECF68 *a0) {
    TouchscreenListMenuHeader header;

    header.template = _021EEB34;
    header.listMenuItems = a0->sub->items;
    header.bgConfig = a0->sub->bgConfig;
    header.numWindows = ov103_021ED2B8(a0);
    if (header.numWindows == 4) {
        a0->sub->menu = TouchscreenListMenu_Create(a0->sub->spawner, &header, FALSE, 18, 5, 11, 0);
    } else {
        a0->sub->menu = TouchscreenListMenu_Create(a0->sub->spawner, &header, FALSE, 18, 11, 11, 0);
    }
}
